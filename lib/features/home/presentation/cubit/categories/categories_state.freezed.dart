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
  CategoryModel? get categories => throw _privateConstructorUsedError;
  List<int> get selectedDetailIds => throw _privateConstructorUsedError;
  CategoryModel? get filteredCategories => throw _privateConstructorUsedError;
  int get selectedIndex => throw _privateConstructorUsedError;
  List<String> get selectedInterests => throw _privateConstructorUsedError;
  Set<int> get selectedIndices => throw _privateConstructorUsedError;
  List<int> get selectedCategoryIds => throw _privateConstructorUsedError;
  Set<int> get selectedIndicesDetails => throw _privateConstructorUsedError;
  DateTime? get lastRequestTime => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  int? get selectedFavCategoryId => throw _privateConstructorUsedError;
  CategoryModel? get filteredSubCategories =>
      throw _privateConstructorUsedError;

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
      {CategoryModel? categories,
      List<int> selectedDetailIds,
      CategoryModel? filteredCategories,
      int selectedIndex,
      List<String> selectedInterests,
      Set<int> selectedIndices,
      List<int> selectedCategoryIds,
      Set<int> selectedIndicesDetails,
      DateTime? lastRequestTime,
      bool isLoading,
      String? error,
      int? selectedFavCategoryId,
      CategoryModel? filteredSubCategories});

  $CategoryModelCopyWith<$Res>? get categories;
  $CategoryModelCopyWith<$Res>? get filteredCategories;
  $CategoryModelCopyWith<$Res>? get filteredSubCategories;
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
    Object? categories = freezed,
    Object? selectedDetailIds = null,
    Object? filteredCategories = freezed,
    Object? selectedIndex = null,
    Object? selectedInterests = null,
    Object? selectedIndices = null,
    Object? selectedCategoryIds = null,
    Object? selectedIndicesDetails = null,
    Object? lastRequestTime = freezed,
    Object? isLoading = null,
    Object? error = freezed,
    Object? selectedFavCategoryId = freezed,
    Object? filteredSubCategories = freezed,
  }) {
    return _then(_value.copyWith(
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      selectedDetailIds: null == selectedDetailIds
          ? _value.selectedDetailIds
          : selectedDetailIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      filteredCategories: freezed == filteredCategories
          ? _value.filteredCategories
          : filteredCategories // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectedInterests: null == selectedInterests
          ? _value.selectedInterests
          : selectedInterests // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedIndices: null == selectedIndices
          ? _value.selectedIndices
          : selectedIndices // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      selectedCategoryIds: null == selectedCategoryIds
          ? _value.selectedCategoryIds
          : selectedCategoryIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      selectedIndicesDetails: null == selectedIndicesDetails
          ? _value.selectedIndicesDetails
          : selectedIndicesDetails // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      lastRequestTime: freezed == lastRequestTime
          ? _value.lastRequestTime
          : lastRequestTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedFavCategoryId: freezed == selectedFavCategoryId
          ? _value.selectedFavCategoryId
          : selectedFavCategoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      filteredSubCategories: freezed == filteredSubCategories
          ? _value.filteredSubCategories
          : filteredSubCategories // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
    ) as $Val);
  }

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryModelCopyWith<$Res>? get categories {
    if (_value.categories == null) {
      return null;
    }

    return $CategoryModelCopyWith<$Res>(_value.categories!, (value) {
      return _then(_value.copyWith(categories: value) as $Val);
    });
  }

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryModelCopyWith<$Res>? get filteredCategories {
    if (_value.filteredCategories == null) {
      return null;
    }

    return $CategoryModelCopyWith<$Res>(_value.filteredCategories!, (value) {
      return _then(_value.copyWith(filteredCategories: value) as $Val);
    });
  }

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryModelCopyWith<$Res>? get filteredSubCategories {
    if (_value.filteredSubCategories == null) {
      return null;
    }

    return $CategoryModelCopyWith<$Res>(_value.filteredSubCategories!, (value) {
      return _then(_value.copyWith(filteredSubCategories: value) as $Val);
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
      {CategoryModel? categories,
      List<int> selectedDetailIds,
      CategoryModel? filteredCategories,
      int selectedIndex,
      List<String> selectedInterests,
      Set<int> selectedIndices,
      List<int> selectedCategoryIds,
      Set<int> selectedIndicesDetails,
      DateTime? lastRequestTime,
      bool isLoading,
      String? error,
      int? selectedFavCategoryId,
      CategoryModel? filteredSubCategories});

  @override
  $CategoryModelCopyWith<$Res>? get categories;
  @override
  $CategoryModelCopyWith<$Res>? get filteredCategories;
  @override
  $CategoryModelCopyWith<$Res>? get filteredSubCategories;
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
    Object? categories = freezed,
    Object? selectedDetailIds = null,
    Object? filteredCategories = freezed,
    Object? selectedIndex = null,
    Object? selectedInterests = null,
    Object? selectedIndices = null,
    Object? selectedCategoryIds = null,
    Object? selectedIndicesDetails = null,
    Object? lastRequestTime = freezed,
    Object? isLoading = null,
    Object? error = freezed,
    Object? selectedFavCategoryId = freezed,
    Object? filteredSubCategories = freezed,
  }) {
    return _then(_$CategoriesStateImpl(
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      selectedDetailIds: null == selectedDetailIds
          ? _value._selectedDetailIds
          : selectedDetailIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      filteredCategories: freezed == filteredCategories
          ? _value.filteredCategories
          : filteredCategories // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectedInterests: null == selectedInterests
          ? _value._selectedInterests
          : selectedInterests // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedIndices: null == selectedIndices
          ? _value._selectedIndices
          : selectedIndices // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      selectedCategoryIds: null == selectedCategoryIds
          ? _value._selectedCategoryIds
          : selectedCategoryIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      selectedIndicesDetails: null == selectedIndicesDetails
          ? _value._selectedIndicesDetails
          : selectedIndicesDetails // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      lastRequestTime: freezed == lastRequestTime
          ? _value.lastRequestTime
          : lastRequestTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedFavCategoryId: freezed == selectedFavCategoryId
          ? _value.selectedFavCategoryId
          : selectedFavCategoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      filteredSubCategories: freezed == filteredSubCategories
          ? _value.filteredSubCategories
          : filteredSubCategories // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
    ));
  }
}

/// @nodoc

class _$CategoriesStateImpl implements _CategoriesState {
  const _$CategoriesStateImpl(
      {this.categories,
      final List<int> selectedDetailIds = const [],
      this.filteredCategories,
      required this.selectedIndex,
      final List<String> selectedInterests = const [],
      final Set<int> selectedIndices = const {},
      final List<int> selectedCategoryIds = const [],
      final Set<int> selectedIndicesDetails = const {},
      this.lastRequestTime,
      this.isLoading = false,
      this.error,
      this.selectedFavCategoryId,
      this.filteredSubCategories})
      : _selectedDetailIds = selectedDetailIds,
        _selectedInterests = selectedInterests,
        _selectedIndices = selectedIndices,
        _selectedCategoryIds = selectedCategoryIds,
        _selectedIndicesDetails = selectedIndicesDetails;

  @override
  final CategoryModel? categories;
  final List<int> _selectedDetailIds;
  @override
  @JsonKey()
  List<int> get selectedDetailIds {
    if (_selectedDetailIds is EqualUnmodifiableListView)
      return _selectedDetailIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedDetailIds);
  }

  @override
  final CategoryModel? filteredCategories;
  @override
  final int selectedIndex;
  final List<String> _selectedInterests;
  @override
  @JsonKey()
  List<String> get selectedInterests {
    if (_selectedInterests is EqualUnmodifiableListView)
      return _selectedInterests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedInterests);
  }

  final Set<int> _selectedIndices;
  @override
  @JsonKey()
  Set<int> get selectedIndices {
    if (_selectedIndices is EqualUnmodifiableSetView) return _selectedIndices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selectedIndices);
  }

  final List<int> _selectedCategoryIds;
  @override
  @JsonKey()
  List<int> get selectedCategoryIds {
    if (_selectedCategoryIds is EqualUnmodifiableListView)
      return _selectedCategoryIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedCategoryIds);
  }

  final Set<int> _selectedIndicesDetails;
  @override
  @JsonKey()
  Set<int> get selectedIndicesDetails {
    if (_selectedIndicesDetails is EqualUnmodifiableSetView)
      return _selectedIndicesDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selectedIndicesDetails);
  }

  @override
  final DateTime? lastRequestTime;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;
  @override
  final int? selectedFavCategoryId;
  @override
  final CategoryModel? filteredSubCategories;

  @override
  String toString() {
    return 'CategoriesState(categories: $categories, selectedDetailIds: $selectedDetailIds, filteredCategories: $filteredCategories, selectedIndex: $selectedIndex, selectedInterests: $selectedInterests, selectedIndices: $selectedIndices, selectedCategoryIds: $selectedCategoryIds, selectedIndicesDetails: $selectedIndicesDetails, lastRequestTime: $lastRequestTime, isLoading: $isLoading, error: $error, selectedFavCategoryId: $selectedFavCategoryId, filteredSubCategories: $filteredSubCategories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesStateImpl &&
            (identical(other.categories, categories) ||
                other.categories == categories) &&
            const DeepCollectionEquality()
                .equals(other._selectedDetailIds, _selectedDetailIds) &&
            (identical(other.filteredCategories, filteredCategories) ||
                other.filteredCategories == filteredCategories) &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex) &&
            const DeepCollectionEquality()
                .equals(other._selectedInterests, _selectedInterests) &&
            const DeepCollectionEquality()
                .equals(other._selectedIndices, _selectedIndices) &&
            const DeepCollectionEquality()
                .equals(other._selectedCategoryIds, _selectedCategoryIds) &&
            const DeepCollectionEquality().equals(
                other._selectedIndicesDetails, _selectedIndicesDetails) &&
            (identical(other.lastRequestTime, lastRequestTime) ||
                other.lastRequestTime == lastRequestTime) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.selectedFavCategoryId, selectedFavCategoryId) ||
                other.selectedFavCategoryId == selectedFavCategoryId) &&
            (identical(other.filteredSubCategories, filteredSubCategories) ||
                other.filteredSubCategories == filteredSubCategories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      categories,
      const DeepCollectionEquality().hash(_selectedDetailIds),
      filteredCategories,
      selectedIndex,
      const DeepCollectionEquality().hash(_selectedInterests),
      const DeepCollectionEquality().hash(_selectedIndices),
      const DeepCollectionEquality().hash(_selectedCategoryIds),
      const DeepCollectionEquality().hash(_selectedIndicesDetails),
      lastRequestTime,
      isLoading,
      error,
      selectedFavCategoryId,
      filteredSubCategories);

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
      {final CategoryModel? categories,
      final List<int> selectedDetailIds,
      final CategoryModel? filteredCategories,
      required final int selectedIndex,
      final List<String> selectedInterests,
      final Set<int> selectedIndices,
      final List<int> selectedCategoryIds,
      final Set<int> selectedIndicesDetails,
      final DateTime? lastRequestTime,
      final bool isLoading,
      final String? error,
      final int? selectedFavCategoryId,
      final CategoryModel? filteredSubCategories}) = _$CategoriesStateImpl;

  @override
  CategoryModel? get categories;
  @override
  List<int> get selectedDetailIds;
  @override
  CategoryModel? get filteredCategories;
  @override
  int get selectedIndex;
  @override
  List<String> get selectedInterests;
  @override
  Set<int> get selectedIndices;
  @override
  List<int> get selectedCategoryIds;
  @override
  Set<int> get selectedIndicesDetails;
  @override
  DateTime? get lastRequestTime;
  @override
  bool get isLoading;
  @override
  String? get error;
  @override
  int? get selectedFavCategoryId;
  @override
  CategoryModel? get filteredSubCategories;

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoriesStateImplCopyWith<_$CategoriesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
