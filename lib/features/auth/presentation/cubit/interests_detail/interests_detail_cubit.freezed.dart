// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'interests_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InterestsDetailState {
  UserRegistrationData get user => throw _privateConstructorUsedError;
  Set<int> get selectedDetailIds => throw _privateConstructorUsedError;
  Set<int> get selectedIndices => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  CategoryModel? get categories => throw _privateConstructorUsedError;
  List<int> get selectedCategoryIds => throw _privateConstructorUsedError;

  /// Create a copy of InterestsDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InterestsDetailStateCopyWith<InterestsDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterestsDetailStateCopyWith<$Res> {
  factory $InterestsDetailStateCopyWith(InterestsDetailState value,
          $Res Function(InterestsDetailState) then) =
      _$InterestsDetailStateCopyWithImpl<$Res, InterestsDetailState>;
  @useResult
  $Res call(
      {UserRegistrationData user,
      Set<int> selectedDetailIds,
      Set<int> selectedIndices,
      bool isLoading,
      String errorMessage,
      CategoryModel? categories,
      List<int> selectedCategoryIds});

  $UserRegistrationDataCopyWith<$Res> get user;
  $CategoryModelCopyWith<$Res>? get categories;
}

/// @nodoc
class _$InterestsDetailStateCopyWithImpl<$Res,
        $Val extends InterestsDetailState>
    implements $InterestsDetailStateCopyWith<$Res> {
  _$InterestsDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InterestsDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? selectedDetailIds = null,
    Object? selectedIndices = null,
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? categories = freezed,
    Object? selectedCategoryIds = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRegistrationData,
      selectedDetailIds: null == selectedDetailIds
          ? _value.selectedDetailIds
          : selectedDetailIds // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      selectedIndices: null == selectedIndices
          ? _value.selectedIndices
          : selectedIndices // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      selectedCategoryIds: null == selectedCategoryIds
          ? _value.selectedCategoryIds
          : selectedCategoryIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }

  /// Create a copy of InterestsDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserRegistrationDataCopyWith<$Res> get user {
    return $UserRegistrationDataCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of InterestsDetailState
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
abstract class _$$InterestsDetailStateImplCopyWith<$Res>
    implements $InterestsDetailStateCopyWith<$Res> {
  factory _$$InterestsDetailStateImplCopyWith(_$InterestsDetailStateImpl value,
          $Res Function(_$InterestsDetailStateImpl) then) =
      __$$InterestsDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserRegistrationData user,
      Set<int> selectedDetailIds,
      Set<int> selectedIndices,
      bool isLoading,
      String errorMessage,
      CategoryModel? categories,
      List<int> selectedCategoryIds});

  @override
  $UserRegistrationDataCopyWith<$Res> get user;
  @override
  $CategoryModelCopyWith<$Res>? get categories;
}

/// @nodoc
class __$$InterestsDetailStateImplCopyWithImpl<$Res>
    extends _$InterestsDetailStateCopyWithImpl<$Res, _$InterestsDetailStateImpl>
    implements _$$InterestsDetailStateImplCopyWith<$Res> {
  __$$InterestsDetailStateImplCopyWithImpl(_$InterestsDetailStateImpl _value,
      $Res Function(_$InterestsDetailStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of InterestsDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? selectedDetailIds = null,
    Object? selectedIndices = null,
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? categories = freezed,
    Object? selectedCategoryIds = null,
  }) {
    return _then(_$InterestsDetailStateImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRegistrationData,
      selectedDetailIds: null == selectedDetailIds
          ? _value._selectedDetailIds
          : selectedDetailIds // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      selectedIndices: null == selectedIndices
          ? _value._selectedIndices
          : selectedIndices // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      selectedCategoryIds: null == selectedCategoryIds
          ? _value._selectedCategoryIds
          : selectedCategoryIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$InterestsDetailStateImpl implements _InterestsDetailState {
  const _$InterestsDetailStateImpl(
      {required this.user,
      final Set<int> selectedDetailIds = const {},
      final Set<int> selectedIndices = const {},
      this.isLoading = false,
      this.errorMessage = '',
      this.categories,
      final List<int> selectedCategoryIds = const []})
      : _selectedDetailIds = selectedDetailIds,
        _selectedIndices = selectedIndices,
        _selectedCategoryIds = selectedCategoryIds;

  @override
  final UserRegistrationData user;
  final Set<int> _selectedDetailIds;
  @override
  @JsonKey()
  Set<int> get selectedDetailIds {
    if (_selectedDetailIds is EqualUnmodifiableSetView)
      return _selectedDetailIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selectedDetailIds);
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
  final String errorMessage;
  @override
  final CategoryModel? categories;
  final List<int> _selectedCategoryIds;
  @override
  @JsonKey()
  List<int> get selectedCategoryIds {
    if (_selectedCategoryIds is EqualUnmodifiableListView)
      return _selectedCategoryIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedCategoryIds);
  }

  @override
  String toString() {
    return 'InterestsDetailState(user: $user, selectedDetailIds: $selectedDetailIds, selectedIndices: $selectedIndices, isLoading: $isLoading, errorMessage: $errorMessage, categories: $categories, selectedCategoryIds: $selectedCategoryIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InterestsDetailStateImpl &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other._selectedDetailIds, _selectedDetailIds) &&
            const DeepCollectionEquality()
                .equals(other._selectedIndices, _selectedIndices) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.categories, categories) ||
                other.categories == categories) &&
            const DeepCollectionEquality()
                .equals(other._selectedCategoryIds, _selectedCategoryIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      user,
      const DeepCollectionEquality().hash(_selectedDetailIds),
      const DeepCollectionEquality().hash(_selectedIndices),
      isLoading,
      errorMessage,
      categories,
      const DeepCollectionEquality().hash(_selectedCategoryIds));

  /// Create a copy of InterestsDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InterestsDetailStateImplCopyWith<_$InterestsDetailStateImpl>
      get copyWith =>
          __$$InterestsDetailStateImplCopyWithImpl<_$InterestsDetailStateImpl>(
              this, _$identity);
}

abstract class _InterestsDetailState implements InterestsDetailState {
  const factory _InterestsDetailState(
      {required final UserRegistrationData user,
      final Set<int> selectedDetailIds,
      final Set<int> selectedIndices,
      final bool isLoading,
      final String errorMessage,
      final CategoryModel? categories,
      final List<int> selectedCategoryIds}) = _$InterestsDetailStateImpl;

  @override
  UserRegistrationData get user;
  @override
  Set<int> get selectedDetailIds;
  @override
  Set<int> get selectedIndices;
  @override
  bool get isLoading;
  @override
  String get errorMessage;
  @override
  CategoryModel? get categories;
  @override
  List<int> get selectedCategoryIds;

  /// Create a copy of InterestsDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InterestsDetailStateImplCopyWith<_$InterestsDetailStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
