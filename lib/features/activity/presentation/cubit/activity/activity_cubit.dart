import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/all_app/domain/usecases/get_fav_products_usecase.dart';
import 'package:hvatai/features/all_app/presentation/event_bus/event_bus.dart';
import 'package:hvatai/features/all_app/presentation/event_bus/events.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';

part 'activity_cubit.freezed.dart';
part 'activity_state.dart';

class ActivityCubit extends Cubit<ActivityState> {
  ActivityCubit(this.getFavProductsUsecase)
      : super(const ActivityState(
            product: ProductModel(variants: [VariantModel()]))) {
    EventBus().subscribe<FavoriteUpdatedEvent>(_handleFavoriteUpdate);
  }

  GetFavProductsUsecase getFavProductsUsecase;

  void _handleFavoriteUpdate(FavoriteUpdatedEvent event) {
    if (event.isFavorite) {
      if (event.product != null) {
        final existingProductIndex = state.products
            .indexWhere((product) => product.id == event.productId);

        if (existingProductIndex == -1) {
          final updatedProducts = [...state.products, event.product!];
          emit(state.copyWith(products: updatedProducts));
        } else {
          final updatedProducts = List<ProductModel>.from(state.products);
          updatedProducts[existingProductIndex] = event.product!;
          emit(state.copyWith(products: updatedProducts));
        }
      }
    } else {
      final updatedProducts = state.products
          .where((product) => product.id != event.productId)
          .toList();
      emit(state.copyWith(products: updatedProducts));
    }
  }

  @override
  Future<void> close() {
    EventBus().unsubscribe<FavoriteUpdatedEvent>(_handleFavoriteUpdate);
    return super.close();
  }

  Future<void> getFavProducts() async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));
    final result = await getFavProductsUsecase.call(unit);
    result.fold(
      (failure) =>
          emit(state.copyWith(isLoading: false, errorMessage: failure)),
      (productsList) => emit(state.copyWith(
        isLoading: false,
        products: productsList,
      )),
    );
  }

  void changeTab(int index) {
    emit(state.copyWith(selectedTabIndex: index));
  }

  void changeCategory(int index) {
    emit(state.copyWith(selectedCategoryIndex: index));
  }
}
