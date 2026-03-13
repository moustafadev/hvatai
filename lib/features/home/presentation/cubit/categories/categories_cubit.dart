import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hvatai/core/datasources/local/app_local.dart';
import 'package:hvatai/features/auth/data/models/category_model/category_model.dart';
import 'package:hvatai/features/auth/domain/usecases/get_category_usecase.dart';
import 'package:hvatai/features/auth/domain/usecases/get_fav_category_usecase.dart';
import 'package:hvatai/features/chat/presentation/pages/chat_service.dart';
import 'package:hvatai/locator.dart';
import 'package:pusher_client_socket/pusher_client_socket.dart';

import 'categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  final GetCategoryUsecase getCategoryUsecase;
  final GetFavCategoryUsecase getFavCategoryUsecase;

  // ✅ Pusher
  final PusherManager _pusherManager;
  PusherClient? _pusher;
  Channel? _channel;
  bool _pusherBound = false;

  CategoriesCubit(
    this.getFavCategoryUsecase,
    this.getCategoryUsecase,
    this._pusherManager,
  ) : super(CategoriesState.initial());

  // =========================
  // REST
  // =========================

  Future<void> loadAllCategories() async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));
    final result = await getCategoryUsecase.call(unit);

    result.fold(
        (failure) =>
            emit(state.copyWith(isLoading: false, errorMessage: failure)),
        (categories) {
      final List<CategoryData> randomCategories = List.of(categories.data!)
        ..shuffle();
      emit(
        state.copyWith(
          isLoading: false,
          allCategories: categories.copyWith(data: randomCategories),
        ),
      );
    });
  }

  Future<void> loadFavoriteCategories() async {
    emit(state.copyWith(
        isLoading: true, errorMessage: '', favoriteCategories: null));
    final result = await getFavCategoryUsecase.call(unit);

    result.fold(
      (failure) =>
          emit(state.copyWith(isLoading: false, errorMessage: failure)),
      (categories) {
        final filteredCategories = categories.data
            ?.where((category) => category.parentId == null)
            .toList();
        emit(state.copyWith(
          isLoading: false,
          favoriteCategories: CategoryModel(data: filteredCategories),
        ));
      },
    );
  }

  // =========================
  // PUSHER REALTIME
  // =========================

  Future<void> subscribeToCategories() async {
    if (_pusherBound) return;

    final token = locator<AppLocal>().getToken();
    if (token?.isEmpty ?? true) return;

    try {
      _pusher = _pusherManager.initializePusher();
      _channel = _pusher!.subscribe('categories');

      // ------------- Event: category.stream -------------
      _channel!.bind('category.stream', (data) {
        try {
          if (data is! Map) return;
          final payload = Map<String, dynamic>.from(data);

          final idsDynamic = payload['categories'];
          final count = payload['categories_viewer_count'];

          final ids = <int>[];
          if (idsDynamic is List) {
            for (final x in idsDynamic) {
              if (x is int) ids.add(x);
              if (x is String) {
                final v = int.tryParse(x);
                if (v != null) ids.add(v);
              }
            }
          }

          final viewerCount = (count is int) ? count : int.tryParse('$count');

          if (ids.isEmpty || viewerCount == null) return;

          _applyViewsUpdate(categoryIds: ids, views: viewerCount);
        } catch (e) {
          debugPrint('[CategoriesPusher] category.stream parse error: $e');
        }
      });

      // ------------- Event: category.changed -------------
      _channel!.bind('category.changed', (data) {
        try {
          if (data is! Map) return;
          final payload = Map<String, dynamic>.from(data);

          final type = payload['type']?.toString(); // updated | deleted
          final catJson = payload['category'];

          if (catJson is! Map) return;

          final category =
              CategoryData.fromJson(Map<String, dynamic>.from(catJson));

          if (category.id == null) return;

          if (type == 'deleted') {
            _removeCategoryEverywhere(category.id!);
          } else {
            // updated (or any other)
            _upsertCategoryEverywhere(category);
          }
        } catch (e) {
          debugPrint('[CategoriesPusher] category.changed parse error: $e');
        }
      });

      _pusherBound = true;
    } catch (e) {
      debugPrint('[CategoriesPusher] subscribe failed: $e');
    }
  }

  void unsubscribeFromCategories() {
    try {
      _channel?.unbind('category.stream');
      _channel?.unbind('category.changed');
      _pusher?.unsubscribe('categories');
      _pusherManager.dispose();
    } catch (_) {}

    _channel = null;
    _pusher = null;
    _pusherBound = false;
  }

  // =========================
  // Realtime Apply Helpers
  // =========================

  void _applyViewsUpdate({required List<int> categoryIds, required int views}) {
    CategoryModel? updateModel(CategoryModel? model) {
      final list = model?.data;
      if (list == null || list.isEmpty) return model;

      final updated = list.map((c) {
        if (c.id != null && categoryIds.contains(c.id)) {
          return c.copyWith(views: views.toString());
        }

        // update inside children too (children is List<CategoryChild>)
        final children = c.children;
        if (children == null || children.isEmpty) return c;

        final newChildren = children.map((ch) {
          if (ch.id != null && categoryIds.contains(ch.id)) {
            // CategoryChild doesn't have views field -> ignore
            return ch;
          }
          return ch;
        }).toList();

        if (!identical(newChildren, children)) {
          return c.copyWith(children: newChildren);
        }
        return c;
      }).toList();

      return model!.copyWith(data: updated);
    }

    emit(state.copyWith(
      allCategories: updateModel(state.allCategories),
      favoriteCategories: updateModel(state.favoriteCategories),
      availableSubcategories: updateModel(state.availableSubcategories),
    ));
  }

  void _upsertCategoryEverywhere(CategoryData category) {
    CategoryModel? upsertInto(CategoryModel? model) {
      final list = model?.data;
      if (list == null) return model;

      final updated = List<CategoryData>.from(list);

      final idx = updated.indexWhere((x) => x.id == category.id);
      if (idx != -1) {
        updated[idx] = category;
      } else {
        // add only if parentId == null (top-level list), otherwise we update it in parent children
        if (category.parentId == null) {
          updated.insert(0, category);
        }
      }

      // If it is a child category, update parent.children
      if (category.parentId != null) {
        final parentIndex =
            updated.indexWhere((x) => x.id == category.parentId);
        if (parentIndex != -1) {
          final parent = updated[parentIndex];
          final children = parent.children ?? const <CategoryChild>[];

          final childIdx = children.indexWhere((ch) => ch.id == category.id);

          final child = CategoryChild(
            id: category.id,
            name: category.name,
            type: category.type,
            // isFavorited stays null/unchanged
          );

          final newChildren = List<CategoryChild>.from(children);
          if (childIdx != -1) {
            newChildren[childIdx] = child;
          } else {
            newChildren.add(child);
          }

          updated[parentIndex] = parent.copyWith(children: newChildren);
        }
      }

      return model!.copyWith(data: updated);
    }

    emit(state.copyWith(
      allCategories: upsertInto(state.allCategories),
      favoriteCategories: upsertInto(state.favoriteCategories),
      availableSubcategories: upsertInto(state.availableSubcategories),
    ));
  }

  void _removeCategoryEverywhere(int categoryId) {
    CategoryModel? removeFrom(CategoryModel? model) {
      final list = model?.data;
      if (list == null) return model;

      final updated = <CategoryData>[];

      for (final c in list) {
        // remove top-level category
        if (c.id == categoryId) continue;

        // remove from parent.children
        final children = c.children;
        if (children != null && children.isNotEmpty) {
          final newChildren =
              children.where((ch) => ch.id != categoryId).toList();
          updated.add(c.copyWith(children: newChildren));
        } else {
          updated.add(c);
        }
      }

      return model!.copyWith(data: updated);
    }

    // also remove from selections if user had it selected
    final nextFav = List<int>.from(state.selectedFavoriteCategoryIds)
      ..remove(categoryId);
    final nextSub = List<int>.from(state.selectedSubcategoryIds)
      ..remove(categoryId);

    emit(state.copyWith(
      allCategories: removeFrom(state.allCategories),
      favoriteCategories: removeFrom(state.favoriteCategories),
      availableSubcategories: removeFrom(state.availableSubcategories),
      selectedFavoriteCategoryIds: nextFav,
      selectedSubcategoryIds: nextSub,
    ));
  }

  // =========================
  // EXISTING SELECTION LOGIC (unchanged)
  // =========================

  void toggleSubcategory(int subcategoryId) {
    final updated = List<int>.from(state.selectedSubcategoryIds);

    if (updated.contains(subcategoryId)) {
      updated.remove(subcategoryId);
    } else {
      updated.add(subcategoryId);
    }

    emit(state.copyWith(selectedSubcategoryIds: updated));
  }

  void toggleFavoriteCategory({required int categoryId}) {
    final prevFavIds = List<int>.from(state.selectedFavoriteCategoryIds);
    final prevSubIds = List<int>.from(state.selectedSubcategoryIds);

    final wasEmptyBefore = prevFavIds.isEmpty;
    final isSelected = prevFavIds.contains(categoryId);

    final nextFavIds = List<int>.from(prevFavIds);
    if (isSelected) {
      nextFavIds.remove(categoryId);
    } else {
      nextFavIds.add(categoryId);
    }

    List<int> nextSubIds;

    if (wasEmptyBefore) {
      nextSubIds = const <int>[];
    } else if (isSelected) {
      final removedChildIds = _getChildrenIdsOfFavorite(categoryId).toSet();
      nextSubIds =
          prevSubIds.where((id) => !removedChildIds.contains(id)).toList();
    } else {
      nextSubIds = prevSubIds;
    }

    emit(state.copyWith(
      selectedFavoriteCategoryIds: nextFavIds,
      selectedSubcategoryIds: nextSubIds,
      availableSubcategories: _buildAvailableSubcategories(nextFavIds),
    ));
  }

  List<int> _getChildrenIdsOfFavorite(int favoriteCategoryId) {
    final all = state.favoriteCategories?.data ?? const <CategoryData>[];

    final parent = all.firstWhere(
      (c) => c.id == favoriteCategoryId,
      orElse: () => const CategoryData(),
    );

    final children = parent.children ?? const <CategoryChild>[];
    return children.map((c) => c.id ?? 0).where((id) => id != 0).toList();
  }

  CategoryModel? _buildAvailableSubcategories(List<int> parentIds) {
    if (parentIds.isEmpty) return null;

    final all = state.favoriteCategories?.data ?? const <CategoryData>[];

    final subCategories = <CategoryData>[];

    for (final parent in all) {
      if (!parentIds.contains(parent.id)) continue;

      final children = parent.children;
      if (children == null || children.isEmpty) continue;

      for (final child in children) {
        subCategories.add(
          CategoryData(
            id: child.id,
            name: child.name,
            type: child.type,
            parentId: parent.id,
          ),
        );
      }
    }

    return subCategories.isNotEmpty ? CategoryModel(data: subCategories) : null;
  }

  void applyFavSelection({required List<int> ids}) {
    final prevFavIds = List<int>.from(state.selectedFavoriteCategoryIds);
    final prevSubIds = List<int>.from(state.selectedSubcategoryIds);

    final wasEmptyBefore = prevFavIds.isEmpty;

    if (wasEmptyBefore) {
      emit(state.copyWith(
        selectedFavoriteCategoryIds: ids,
        selectedSubcategoryIds: const [],
        availableSubcategories: _buildAvailableSubcategories(ids),
      ));
      return;
    }

    final removedFavIds =
        prevFavIds.where((oldId) => !ids.contains(oldId)).toList();

    final removedChildIds = <int>{};
    for (final favId in removedFavIds) {
      removedChildIds.addAll(_getChildrenIdsOfFavorite(favId));
    }

    final nextSubIds =
        prevSubIds.where((subId) => !removedChildIds.contains(subId)).toList();

    emit(state.copyWith(
      selectedFavoriteCategoryIds: ids,
      selectedSubcategoryIds: nextSubIds,
      availableSubcategories: _buildAvailableSubcategories(ids),
    ));
  }

  @override
  Future<void> close() async {
    unsubscribeFromCategories();
    return super.close();
  }
}
