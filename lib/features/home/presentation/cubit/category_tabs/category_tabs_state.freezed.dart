// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_tabs_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoryTabsState {
  List<String> get categories => throw _privateConstructorUsedError;
  int get selectedIndex => throw _privateConstructorUsedError;

  /// Create a copy of CategoryTabsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryTabsStateCopyWith<CategoryTabsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryTabsStateCopyWith<$Res> {
  factory $CategoryTabsStateCopyWith(
          CategoryTabsState value, $Res Function(CategoryTabsState) then) =
      _$CategoryTabsStateCopyWithImpl<$Res, CategoryTabsState>;
  @useResult
  $Res call({List<String> categories, int selectedIndex});
}

/// @nodoc
class _$CategoryTabsStateCopyWithImpl<$Res, $Val extends CategoryTabsState>
    implements $CategoryTabsStateCopyWith<$Res> {
  _$CategoryTabsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryTabsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? selectedIndex = null,
  }) {
    return _then(_value.copyWith(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryTabsStateImplCopyWith<$Res>
    implements $CategoryTabsStateCopyWith<$Res> {
  factory _$$CategoryTabsStateImplCopyWith(_$CategoryTabsStateImpl value,
          $Res Function(_$CategoryTabsStateImpl) then) =
      __$$CategoryTabsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> categories, int selectedIndex});
}

/// @nodoc
class __$$CategoryTabsStateImplCopyWithImpl<$Res>
    extends _$CategoryTabsStateCopyWithImpl<$Res, _$CategoryTabsStateImpl>
    implements _$$CategoryTabsStateImplCopyWith<$Res> {
  __$$CategoryTabsStateImplCopyWithImpl(_$CategoryTabsStateImpl _value,
      $Res Function(_$CategoryTabsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryTabsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? selectedIndex = null,
  }) {
    return _then(_$CategoryTabsStateImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CategoryTabsStateImpl implements _CategoryTabsState {
  const _$CategoryTabsStateImpl(
      {required final List<String> categories, required this.selectedIndex})
      : _categories = categories;

  final List<String> _categories;
  @override
  List<String> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  final int selectedIndex;

  @override
  String toString() {
    return 'CategoryTabsState(categories: $categories, selectedIndex: $selectedIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryTabsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_categories), selectedIndex);

  /// Create a copy of CategoryTabsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryTabsStateImplCopyWith<_$CategoryTabsStateImpl> get copyWith =>
      __$$CategoryTabsStateImplCopyWithImpl<_$CategoryTabsStateImpl>(
          this, _$identity);
}

abstract class _CategoryTabsState implements CategoryTabsState {
  const factory _CategoryTabsState(
      {required final List<String> categories,
      required final int selectedIndex}) = _$CategoryTabsStateImpl;

  @override
  List<String> get categories;
  @override
  int get selectedIndex;

  /// Create a copy of CategoryTabsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryTabsStateImplCopyWith<_$CategoryTabsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
