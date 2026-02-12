// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoriesState {
  CategoryModel? get allCategories =>
      throw _privateConstructorUsedError; // all categories
  CategoryModel? get favoriteCategories =>
      throw _privateConstructorUsedError; // fav categories list (from API)
  CategoryModel? get availableSubcategories =>
      throw _privateConstructorUsedError; // union subcats for selected favorites
  List<int> get selectedFavoriteCategoryIds =>
      throw _privateConstructorUsedError;
  List<int> get selectedSubcategoryIds => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoriesStateCopyWith<CategoriesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesStateCopyWith<$Res> {
  factory $CategoriesStateCopyWith(
          CategoriesState value, $Res Function(CategoriesState) then) =
      _$CategoriesStateCopyWithImpl<$Res, CategoriesState>;
  @useResult
  $Res call(
      {CategoryModel? allCategories,
      CategoryModel? favoriteCategories,
      CategoryModel? availableSubcategories,
      List<int> selectedFavoriteCategoryIds,
      List<int> selectedSubcategoryIds,
      bool isLoading,
      String? errorMessage});

  $CategoryModelCopyWith<$Res>? get allCategories;
  $CategoryModelCopyWith<$Res>? get favoriteCategories;
  $CategoryModelCopyWith<$Res>? get availableSubcategories;
}

/// @nodoc
class _$CategoriesStateCopyWithImpl<$Res, $Val extends CategoriesState>
    implements $CategoriesStateCopyWith<$Res> {
  _$CategoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allCategories = freezed,
    Object? favoriteCategories = freezed,
    Object? availableSubcategories = freezed,
    Object? selectedFavoriteCategoryIds = null,
    Object? selectedSubcategoryIds = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      allCategories: freezed == allCategories
          ? _value.allCategories
          : allCategories // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      favoriteCategories: freezed == favoriteCategories
          ? _value.favoriteCategories
          : favoriteCategories // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      availableSubcategories: freezed == availableSubcategories
          ? _value.availableSubcategories
          : availableSubcategories // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      selectedFavoriteCategoryIds: null == selectedFavoriteCategoryIds
          ? _value.selectedFavoriteCategoryIds
          : selectedFavoriteCategoryIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      selectedSubcategoryIds: null == selectedSubcategoryIds
          ? _value.selectedSubcategoryIds
          : selectedSubcategoryIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryModelCopyWith<$Res>? get allCategories {
    if (_value.allCategories == null) {
      return null;
    }

    return $CategoryModelCopyWith<$Res>(_value.allCategories!, (value) {
      return _then(_value.copyWith(allCategories: value) as $Val);
    });
  }

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryModelCopyWith<$Res>? get favoriteCategories {
    if (_value.favoriteCategories == null) {
      return null;
    }

    return $CategoryModelCopyWith<$Res>(_value.favoriteCategories!, (value) {
      return _then(_value.copyWith(favoriteCategories: value) as $Val);
    });
  }

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryModelCopyWith<$Res>? get availableSubcategories {
    if (_value.availableSubcategories == null) {
      return null;
    }

    return $CategoryModelCopyWith<$Res>(_value.availableSubcategories!,
        (value) {
      return _then(_value.copyWith(availableSubcategories: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CategoriesStateImplCopyWith<$Res>
    implements $CategoriesStateCopyWith<$Res> {
  factory _$$CategoriesStateImplCopyWith(_$CategoriesStateImpl value,
          $Res Function(_$CategoriesStateImpl) then) =
      __$$CategoriesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CategoryModel? allCategories,
      CategoryModel? favoriteCategories,
      CategoryModel? availableSubcategories,
      List<int> selectedFavoriteCategoryIds,
      List<int> selectedSubcategoryIds,
      bool isLoading,
      String? errorMessage});

  @override
  $CategoryModelCopyWith<$Res>? get allCategories;
  @override
  $CategoryModelCopyWith<$Res>? get favoriteCategories;
  @override
  $CategoryModelCopyWith<$Res>? get availableSubcategories;
}

/// @nodoc
class __$$CategoriesStateImplCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res, _$CategoriesStateImpl>
    implements _$$CategoriesStateImplCopyWith<$Res> {
  __$$CategoriesStateImplCopyWithImpl(
      _$CategoriesStateImpl _value, $Res Function(_$CategoriesStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allCategories = freezed,
    Object? favoriteCategories = freezed,
    Object? availableSubcategories = freezed,
    Object? selectedFavoriteCategoryIds = null,
    Object? selectedSubcategoryIds = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$CategoriesStateImpl(
      allCategories: freezed == allCategories
          ? _value.allCategories
          : allCategories // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      favoriteCategories: freezed == favoriteCategories
          ? _value.favoriteCategories
          : favoriteCategories // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      availableSubcategories: freezed == availableSubcategories
          ? _value.availableSubcategories
          : availableSubcategories // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      selectedFavoriteCategoryIds: null == selectedFavoriteCategoryIds
          ? _value._selectedFavoriteCategoryIds
          : selectedFavoriteCategoryIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      selectedSubcategoryIds: null == selectedSubcategoryIds
          ? _value._selectedSubcategoryIds
          : selectedSubcategoryIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CategoriesStateImpl implements _CategoriesState {
  const _$CategoriesStateImpl(
      {this.allCategories,
      this.favoriteCategories,
      this.availableSubcategories,
      final List<int> selectedFavoriteCategoryIds = const <int>[],
      final List<int> selectedSubcategoryIds = const <int>[],
      this.isLoading = false,
      this.errorMessage})
      : _selectedFavoriteCategoryIds = selectedFavoriteCategoryIds,
        _selectedSubcategoryIds = selectedSubcategoryIds;

  @override
  final CategoryModel? allCategories;
// all categories
  @override
  final CategoryModel? favoriteCategories;
// fav categories list (from API)
  @override
  final CategoryModel? availableSubcategories;
// union subcats for selected favorites
  final List<int> _selectedFavoriteCategoryIds;
// union subcats for selected favorites
  @override
  @JsonKey()
  List<int> get selectedFavoriteCategoryIds {
    if (_selectedFavoriteCategoryIds is EqualUnmodifiableListView)
      return _selectedFavoriteCategoryIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedFavoriteCategoryIds);
  }

  final List<int> _selectedSubcategoryIds;
  @override
  @JsonKey()
  List<int> get selectedSubcategoryIds {
    if (_selectedSubcategoryIds is EqualUnmodifiableListView)
      return _selectedSubcategoryIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedSubcategoryIds);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'CategoriesState(allCategories: $allCategories, favoriteCategories: $favoriteCategories, availableSubcategories: $availableSubcategories, selectedFavoriteCategoryIds: $selectedFavoriteCategoryIds, selectedSubcategoryIds: $selectedSubcategoryIds, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesStateImpl &&
            (identical(other.allCategories, allCategories) ||
                other.allCategories == allCategories) &&
            (identical(other.favoriteCategories, favoriteCategories) ||
                other.favoriteCategories == favoriteCategories) &&
            (identical(other.availableSubcategories, availableSubcategories) ||
                other.availableSubcategories == availableSubcategories) &&
            const DeepCollectionEquality().equals(
                other._selectedFavoriteCategoryIds,
                _selectedFavoriteCategoryIds) &&
            const DeepCollectionEquality().equals(
                other._selectedSubcategoryIds, _selectedSubcategoryIds) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      allCategories,
      favoriteCategories,
      availableSubcategories,
      const DeepCollectionEquality().hash(_selectedFavoriteCategoryIds),
      const DeepCollectionEquality().hash(_selectedSubcategoryIds),
      isLoading,
      errorMessage);

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesStateImplCopyWith<_$CategoriesStateImpl> get copyWith =>
      __$$CategoriesStateImplCopyWithImpl<_$CategoriesStateImpl>(
          this, _$identity);
}

abstract class _CategoriesState implements CategoriesState {
  const factory _CategoriesState(
      {final CategoryModel? allCategories,
      final CategoryModel? favoriteCategories,
      final CategoryModel? availableSubcategories,
      final List<int> selectedFavoriteCategoryIds,
      final List<int> selectedSubcategoryIds,
      final bool isLoading,
      final String? errorMessage}) = _$CategoriesStateImpl;

  @override
  CategoryModel? get allCategories; // all categories
  @override
  CategoryModel? get favoriteCategories; // fav categories list (from API)
  @override
  CategoryModel?
      get availableSubcategories; // union subcats for selected favorites
  @override
  List<int> get selectedFavoriteCategoryIds;
  @override
  List<int> get selectedSubcategoryIds;
  @override
  bool get isLoading;
  @override
  String? get errorMessage;

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoriesStateImplCopyWith<_$CategoriesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
