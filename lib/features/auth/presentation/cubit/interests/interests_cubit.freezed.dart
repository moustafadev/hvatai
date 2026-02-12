// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'interests_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InterestsState {
  UserRegistrationData get user => throw _privateConstructorUsedError;
  List<int> get selectedCategoryIds => throw _privateConstructorUsedError;
  Set<int> get selectedIndices => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoadingCategories => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  CategoryModel? get categories => throw _privateConstructorUsedError;

  /// Create a copy of InterestsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InterestsStateCopyWith<InterestsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterestsStateCopyWith<$Res> {
  factory $InterestsStateCopyWith(
          InterestsState value, $Res Function(InterestsState) then) =
      _$InterestsStateCopyWithImpl<$Res, InterestsState>;
  @useResult
  $Res call(
      {UserRegistrationData user,
      List<int> selectedCategoryIds,
      Set<int> selectedIndices,
      bool isLoading,
      bool isLoadingCategories,
      String errorMessage,
      CategoryModel? categories});

  $UserRegistrationDataCopyWith<$Res> get user;
  $CategoryModelCopyWith<$Res>? get categories;
}

/// @nodoc
class _$InterestsStateCopyWithImpl<$Res, $Val extends InterestsState>
    implements $InterestsStateCopyWith<$Res> {
  _$InterestsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InterestsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? selectedCategoryIds = null,
    Object? selectedIndices = null,
    Object? isLoading = null,
    Object? isLoadingCategories = null,
    Object? errorMessage = null,
    Object? categories = freezed,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRegistrationData,
      selectedCategoryIds: null == selectedCategoryIds
          ? _value.selectedCategoryIds
          : selectedCategoryIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      selectedIndices: null == selectedIndices
          ? _value.selectedIndices
          : selectedIndices // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingCategories: null == isLoadingCategories
          ? _value.isLoadingCategories
          : isLoadingCategories // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
    ) as $Val);
  }

  /// Create a copy of InterestsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserRegistrationDataCopyWith<$Res> get user {
    return $UserRegistrationDataCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of InterestsState
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
}

/// @nodoc
abstract class _$$InterestsStateImplCopyWith<$Res>
    implements $InterestsStateCopyWith<$Res> {
  factory _$$InterestsStateImplCopyWith(_$InterestsStateImpl value,
          $Res Function(_$InterestsStateImpl) then) =
      __$$InterestsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserRegistrationData user,
      List<int> selectedCategoryIds,
      Set<int> selectedIndices,
      bool isLoading,
      bool isLoadingCategories,
      String errorMessage,
      CategoryModel? categories});

  @override
  $UserRegistrationDataCopyWith<$Res> get user;
  @override
  $CategoryModelCopyWith<$Res>? get categories;
}

/// @nodoc
class __$$InterestsStateImplCopyWithImpl<$Res>
    extends _$InterestsStateCopyWithImpl<$Res, _$InterestsStateImpl>
    implements _$$InterestsStateImplCopyWith<$Res> {
  __$$InterestsStateImplCopyWithImpl(
      _$InterestsStateImpl _value, $Res Function(_$InterestsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of InterestsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? selectedCategoryIds = null,
    Object? selectedIndices = null,
    Object? isLoading = null,
    Object? isLoadingCategories = null,
    Object? errorMessage = null,
    Object? categories = freezed,
  }) {
    return _then(_$InterestsStateImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRegistrationData,
      selectedCategoryIds: null == selectedCategoryIds
          ? _value._selectedCategoryIds
          : selectedCategoryIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      selectedIndices: null == selectedIndices
          ? _value._selectedIndices
          : selectedIndices // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingCategories: null == isLoadingCategories
          ? _value.isLoadingCategories
          : isLoadingCategories // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
    ));
  }
}

/// @nodoc

class _$InterestsStateImpl implements _InterestsState {
  const _$InterestsStateImpl(
      {required this.user,
      final List<int> selectedCategoryIds = const [],
      final Set<int> selectedIndices = const {},
      this.isLoading = false,
      this.isLoadingCategories = false,
      this.errorMessage = '',
      this.categories})
      : _selectedCategoryIds = selectedCategoryIds,
        _selectedIndices = selectedIndices;

  @override
  final UserRegistrationData user;
  final List<int> _selectedCategoryIds;
  @override
  @JsonKey()
  List<int> get selectedCategoryIds {
    if (_selectedCategoryIds is EqualUnmodifiableListView)
      return _selectedCategoryIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedCategoryIds);
  }

  final Set<int> _selectedIndices;
  @override
  @JsonKey()
  Set<int> get selectedIndices {
    if (_selectedIndices is EqualUnmodifiableSetView) return _selectedIndices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selectedIndices);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isLoadingCategories;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  final CategoryModel? categories;

  @override
  String toString() {
    return 'InterestsState(user: $user, selectedCategoryIds: $selectedCategoryIds, selectedIndices: $selectedIndices, isLoading: $isLoading, isLoadingCategories: $isLoadingCategories, errorMessage: $errorMessage, categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InterestsStateImpl &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other._selectedCategoryIds, _selectedCategoryIds) &&
            const DeepCollectionEquality()
                .equals(other._selectedIndices, _selectedIndices) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoadingCategories, isLoadingCategories) ||
                other.isLoadingCategories == isLoadingCategories) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.categories, categories) ||
                other.categories == categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      user,
      const DeepCollectionEquality().hash(_selectedCategoryIds),
      const DeepCollectionEquality().hash(_selectedIndices),
      isLoading,
      isLoadingCategories,
      errorMessage,
      categories);

  /// Create a copy of InterestsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InterestsStateImplCopyWith<_$InterestsStateImpl> get copyWith =>
      __$$InterestsStateImplCopyWithImpl<_$InterestsStateImpl>(
          this, _$identity);
}

abstract class _InterestsState implements InterestsState {
  const factory _InterestsState(
      {required final UserRegistrationData user,
      final List<int> selectedCategoryIds,
      final Set<int> selectedIndices,
      final bool isLoading,
      final bool isLoadingCategories,
      final String errorMessage,
      final CategoryModel? categories}) = _$InterestsStateImpl;

  @override
  UserRegistrationData get user;
  @override
  List<int> get selectedCategoryIds;
  @override
  Set<int> get selectedIndices;
  @override
  bool get isLoading;
  @override
  bool get isLoadingCategories;
  @override
  String get errorMessage;
  @override
  CategoryModel? get categories;

  /// Create a copy of InterestsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InterestsStateImplCopyWith<_$InterestsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
