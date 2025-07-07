// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_tabs_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchTabsState {
  List<String> get categories => throw _privateConstructorUsedError;
  int get selectedIndex => throw _privateConstructorUsedError;
  List<String> get selectedInterests => throw _privateConstructorUsedError;
  Set<int> get selectedIndices => throw _privateConstructorUsedError;
  List<String> get searchedItems => throw _privateConstructorUsedError;

  /// Create a copy of SearchTabsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchTabsStateCopyWith<SearchTabsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchTabsStateCopyWith<$Res> {
  factory $SearchTabsStateCopyWith(
          SearchTabsState value, $Res Function(SearchTabsState) then) =
      _$SearchTabsStateCopyWithImpl<$Res, SearchTabsState>;
  @useResult
  $Res call(
      {List<String> categories,
      int selectedIndex,
      List<String> selectedInterests,
      Set<int> selectedIndices,
      List<String> searchedItems});
}

/// @nodoc
class _$SearchTabsStateCopyWithImpl<$Res, $Val extends SearchTabsState>
    implements $SearchTabsStateCopyWith<$Res> {
  _$SearchTabsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchTabsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? selectedIndex = null,
    Object? selectedInterests = null,
    Object? selectedIndices = null,
    Object? searchedItems = null,
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
      selectedInterests: null == selectedInterests
          ? _value.selectedInterests
          : selectedInterests // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedIndices: null == selectedIndices
          ? _value.selectedIndices
          : selectedIndices // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      searchedItems: null == searchedItems
          ? _value.searchedItems
          : searchedItems // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchTabsStateImplCopyWith<$Res>
    implements $SearchTabsStateCopyWith<$Res> {
  factory _$$SearchTabsStateImplCopyWith(_$SearchTabsStateImpl value,
          $Res Function(_$SearchTabsStateImpl) then) =
      __$$SearchTabsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> categories,
      int selectedIndex,
      List<String> selectedInterests,
      Set<int> selectedIndices,
      List<String> searchedItems});
}

/// @nodoc
class __$$SearchTabsStateImplCopyWithImpl<$Res>
    extends _$SearchTabsStateCopyWithImpl<$Res, _$SearchTabsStateImpl>
    implements _$$SearchTabsStateImplCopyWith<$Res> {
  __$$SearchTabsStateImplCopyWithImpl(
      _$SearchTabsStateImpl _value, $Res Function(_$SearchTabsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchTabsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? selectedIndex = null,
    Object? selectedInterests = null,
    Object? selectedIndices = null,
    Object? searchedItems = null,
  }) {
    return _then(_$SearchTabsStateImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      searchedItems: null == searchedItems
          ? _value._searchedItems
          : searchedItems // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$SearchTabsStateImpl implements _SearchTabsState {
  const _$SearchTabsStateImpl(
      {required final List<String> categories,
      required this.selectedIndex,
      final List<String> selectedInterests = const [],
      final Set<int> selectedIndices = const {},
      final List<String> searchedItems = const []})
      : _categories = categories,
        _selectedInterests = selectedInterests,
        _selectedIndices = selectedIndices,
        _searchedItems = searchedItems;

  final List<String> _categories;
  @override
  List<String> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

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

  final List<String> _searchedItems;
  @override
  @JsonKey()
  List<String> get searchedItems {
    if (_searchedItems is EqualUnmodifiableListView) return _searchedItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchedItems);
  }

  @override
  String toString() {
    return 'SearchTabsState(categories: $categories, selectedIndex: $selectedIndex, selectedInterests: $selectedInterests, selectedIndices: $selectedIndices, searchedItems: $searchedItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchTabsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex) &&
            const DeepCollectionEquality()
                .equals(other._selectedInterests, _selectedInterests) &&
            const DeepCollectionEquality()
                .equals(other._selectedIndices, _selectedIndices) &&
            const DeepCollectionEquality()
                .equals(other._searchedItems, _searchedItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categories),
      selectedIndex,
      const DeepCollectionEquality().hash(_selectedInterests),
      const DeepCollectionEquality().hash(_selectedIndices),
      const DeepCollectionEquality().hash(_searchedItems));

  /// Create a copy of SearchTabsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchTabsStateImplCopyWith<_$SearchTabsStateImpl> get copyWith =>
      __$$SearchTabsStateImplCopyWithImpl<_$SearchTabsStateImpl>(
          this, _$identity);
}

abstract class _SearchTabsState implements SearchTabsState {
  const factory _SearchTabsState(
      {required final List<String> categories,
      required final int selectedIndex,
      final List<String> selectedInterests,
      final Set<int> selectedIndices,
      final List<String> searchedItems}) = _$SearchTabsStateImpl;

  @override
  List<String> get categories;
  @override
  int get selectedIndex;
  @override
  List<String> get selectedInterests;
  @override
  Set<int> get selectedIndices;
  @override
  List<String> get searchedItems;

  /// Create a copy of SearchTabsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchTabsStateImplCopyWith<_$SearchTabsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
