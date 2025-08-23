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
// UI tabs
  List<String> get categories => throw _privateConstructorUsedError;
  int get selectedIndex => throw _privateConstructorUsedError;
  List<String> get selectedInterests => throw _privateConstructorUsedError;
  Set<int> get selectedIndices =>
      throw _privateConstructorUsedError; // Live streams
  List<StreamDataModel> get liveStreams => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError; // Pagination
  int get page => throw _privateConstructorUsedError;
  int get lastPage => throw _privateConstructorUsedError;
  bool get hasMore =>
      throw _privateConstructorUsedError; // ===== Join stream =====
  bool get isJoining => throw _privateConstructorUsedError;
  String? get joinError => throw _privateConstructorUsedError;
  JoinStreamData? get joinData => throw _privateConstructorUsedError;

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
  $Res call(
      {List<String> categories,
      int selectedIndex,
      List<String> selectedInterests,
      Set<int> selectedIndices,
      List<StreamDataModel> liveStreams,
      bool isLoading,
      String? error,
      int page,
      int lastPage,
      bool hasMore,
      bool isJoining,
      String? joinError,
      JoinStreamData? joinData});

  $JoinStreamDataCopyWith<$Res>? get joinData;
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
    Object? selectedInterests = null,
    Object? selectedIndices = null,
    Object? liveStreams = null,
    Object? isLoading = null,
    Object? error = freezed,
    Object? page = null,
    Object? lastPage = null,
    Object? hasMore = null,
    Object? isJoining = null,
    Object? joinError = freezed,
    Object? joinData = freezed,
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
      liveStreams: null == liveStreams
          ? _value.liveStreams
          : liveStreams // ignore: cast_nullable_to_non_nullable
              as List<StreamDataModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      isJoining: null == isJoining
          ? _value.isJoining
          : isJoining // ignore: cast_nullable_to_non_nullable
              as bool,
      joinError: freezed == joinError
          ? _value.joinError
          : joinError // ignore: cast_nullable_to_non_nullable
              as String?,
      joinData: freezed == joinData
          ? _value.joinData
          : joinData // ignore: cast_nullable_to_non_nullable
              as JoinStreamData?,
    ) as $Val);
  }

  /// Create a copy of CategoryTabsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JoinStreamDataCopyWith<$Res>? get joinData {
    if (_value.joinData == null) {
      return null;
    }

    return $JoinStreamDataCopyWith<$Res>(_value.joinData!, (value) {
      return _then(_value.copyWith(joinData: value) as $Val);
    });
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
  $Res call(
      {List<String> categories,
      int selectedIndex,
      List<String> selectedInterests,
      Set<int> selectedIndices,
      List<StreamDataModel> liveStreams,
      bool isLoading,
      String? error,
      int page,
      int lastPage,
      bool hasMore,
      bool isJoining,
      String? joinError,
      JoinStreamData? joinData});

  @override
  $JoinStreamDataCopyWith<$Res>? get joinData;
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
    Object? selectedInterests = null,
    Object? selectedIndices = null,
    Object? liveStreams = null,
    Object? isLoading = null,
    Object? error = freezed,
    Object? page = null,
    Object? lastPage = null,
    Object? hasMore = null,
    Object? isJoining = null,
    Object? joinError = freezed,
    Object? joinData = freezed,
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
      selectedInterests: null == selectedInterests
          ? _value._selectedInterests
          : selectedInterests // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedIndices: null == selectedIndices
          ? _value._selectedIndices
          : selectedIndices // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      liveStreams: null == liveStreams
          ? _value._liveStreams
          : liveStreams // ignore: cast_nullable_to_non_nullable
              as List<StreamDataModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      isJoining: null == isJoining
          ? _value.isJoining
          : isJoining // ignore: cast_nullable_to_non_nullable
              as bool,
      joinError: freezed == joinError
          ? _value.joinError
          : joinError // ignore: cast_nullable_to_non_nullable
              as String?,
      joinData: freezed == joinData
          ? _value.joinData
          : joinData // ignore: cast_nullable_to_non_nullable
              as JoinStreamData?,
    ));
  }
}

/// @nodoc

class _$CategoryTabsStateImpl implements _CategoryTabsState {
  const _$CategoryTabsStateImpl(
      {required final List<String> categories,
      required this.selectedIndex,
      final List<String> selectedInterests = const [],
      final Set<int> selectedIndices = const {},
      final List<StreamDataModel> liveStreams = const <StreamDataModel>[],
      this.isLoading = false,
      this.error,
      this.page = 1,
      this.lastPage = 1,
      this.hasMore = true,
      this.isJoining = false,
      this.joinError,
      this.joinData})
      : _categories = categories,
        _selectedInterests = selectedInterests,
        _selectedIndices = selectedIndices,
        _liveStreams = liveStreams;

// UI tabs
  final List<String> _categories;
// UI tabs
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

// Live streams
  final List<StreamDataModel> _liveStreams;
// Live streams
  @override
  @JsonKey()
  List<StreamDataModel> get liveStreams {
    if (_liveStreams is EqualUnmodifiableListView) return _liveStreams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_liveStreams);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;
// Pagination
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int lastPage;
  @override
  @JsonKey()
  final bool hasMore;
// ===== Join stream =====
  @override
  @JsonKey()
  final bool isJoining;
  @override
  final String? joinError;
  @override
  final JoinStreamData? joinData;

  @override
  String toString() {
    return 'CategoryTabsState(categories: $categories, selectedIndex: $selectedIndex, selectedInterests: $selectedInterests, selectedIndices: $selectedIndices, liveStreams: $liveStreams, isLoading: $isLoading, error: $error, page: $page, lastPage: $lastPage, hasMore: $hasMore, isJoining: $isJoining, joinError: $joinError, joinData: $joinData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryTabsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex) &&
            const DeepCollectionEquality()
                .equals(other._selectedInterests, _selectedInterests) &&
            const DeepCollectionEquality()
                .equals(other._selectedIndices, _selectedIndices) &&
            const DeepCollectionEquality()
                .equals(other._liveStreams, _liveStreams) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.isJoining, isJoining) ||
                other.isJoining == isJoining) &&
            (identical(other.joinError, joinError) ||
                other.joinError == joinError) &&
            (identical(other.joinData, joinData) ||
                other.joinData == joinData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categories),
      selectedIndex,
      const DeepCollectionEquality().hash(_selectedInterests),
      const DeepCollectionEquality().hash(_selectedIndices),
      const DeepCollectionEquality().hash(_liveStreams),
      isLoading,
      error,
      page,
      lastPage,
      hasMore,
      isJoining,
      joinError,
      joinData);

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
      required final int selectedIndex,
      final List<String> selectedInterests,
      final Set<int> selectedIndices,
      final List<StreamDataModel> liveStreams,
      final bool isLoading,
      final String? error,
      final int page,
      final int lastPage,
      final bool hasMore,
      final bool isJoining,
      final String? joinError,
      final JoinStreamData? joinData}) = _$CategoryTabsStateImpl;

// UI tabs
  @override
  List<String> get categories;
  @override
  int get selectedIndex;
  @override
  List<String> get selectedInterests;
  @override
  Set<int> get selectedIndices; // Live streams
  @override
  List<StreamDataModel> get liveStreams;
  @override
  bool get isLoading;
  @override
  String? get error; // Pagination
  @override
  int get page;
  @override
  int get lastPage;
  @override
  bool get hasMore; // ===== Join stream =====
  @override
  bool get isJoining;
  @override
  String? get joinError;
  @override
  JoinStreamData? get joinData;

  /// Create a copy of CategoryTabsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryTabsStateImplCopyWith<_$CategoryTabsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
