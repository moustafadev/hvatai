// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchState {
  List<CategoryData> get categories => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasLoadedInitial => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  List<ProductModel> get products => throw _privateConstructorUsedError;
  List<StreamDataModel> get liveStreams => throw _privateConstructorUsedError;
  bool get hasNoResults => throw _privateConstructorUsedError;
  PageController? get pageController => throw _privateConstructorUsedError;
  List<String> get suggestions => throw _privateConstructorUsedError;
  bool get isLoadingSuggestions => throw _privateConstructorUsedError;
  bool get showSuggestions => throw _privateConstructorUsedError;
  bool get isSearchFocused => throw _privateConstructorUsedError;
  List<RecentSearchItem> get recentSearches =>
      throw _privateConstructorUsedError;
  bool get isLoadingRecentSearches => throw _privateConstructorUsedError;
  int? get selectedCategoryId => throw _privateConstructorUsedError;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {List<CategoryData> categories,
      String query,
      bool isLoading,
      bool hasLoadedInitial,
      String errorMessage,
      List<ProductModel> products,
      List<StreamDataModel> liveStreams,
      bool hasNoResults,
      PageController? pageController,
      List<String> suggestions,
      bool isLoadingSuggestions,
      bool showSuggestions,
      bool isSearchFocused,
      List<RecentSearchItem> recentSearches,
      bool isLoadingRecentSearches,
      int? selectedCategoryId});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? query = null,
    Object? isLoading = null,
    Object? hasLoadedInitial = null,
    Object? errorMessage = null,
    Object? products = null,
    Object? liveStreams = null,
    Object? hasNoResults = null,
    Object? pageController = freezed,
    Object? suggestions = null,
    Object? isLoadingSuggestions = null,
    Object? showSuggestions = null,
    Object? isSearchFocused = null,
    Object? recentSearches = null,
    Object? isLoadingRecentSearches = null,
    Object? selectedCategoryId = freezed,
  }) {
    return _then(_value.copyWith(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryData>,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasLoadedInitial: null == hasLoadedInitial
          ? _value.hasLoadedInitial
          : hasLoadedInitial // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      liveStreams: null == liveStreams
          ? _value.liveStreams
          : liveStreams // ignore: cast_nullable_to_non_nullable
              as List<StreamDataModel>,
      hasNoResults: null == hasNoResults
          ? _value.hasNoResults
          : hasNoResults // ignore: cast_nullable_to_non_nullable
              as bool,
      pageController: freezed == pageController
          ? _value.pageController
          : pageController // ignore: cast_nullable_to_non_nullable
              as PageController?,
      suggestions: null == suggestions
          ? _value.suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isLoadingSuggestions: null == isLoadingSuggestions
          ? _value.isLoadingSuggestions
          : isLoadingSuggestions // ignore: cast_nullable_to_non_nullable
              as bool,
      showSuggestions: null == showSuggestions
          ? _value.showSuggestions
          : showSuggestions // ignore: cast_nullable_to_non_nullable
              as bool,
      isSearchFocused: null == isSearchFocused
          ? _value.isSearchFocused
          : isSearchFocused // ignore: cast_nullable_to_non_nullable
              as bool,
      recentSearches: null == recentSearches
          ? _value.recentSearches
          : recentSearches // ignore: cast_nullable_to_non_nullable
              as List<RecentSearchItem>,
      isLoadingRecentSearches: null == isLoadingRecentSearches
          ? _value.isLoadingRecentSearches
          : isLoadingRecentSearches // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedCategoryId: freezed == selectedCategoryId
          ? _value.selectedCategoryId
          : selectedCategoryId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchStateImplCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$SearchStateImplCopyWith(
          _$SearchStateImpl value, $Res Function(_$SearchStateImpl) then) =
      __$$SearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CategoryData> categories,
      String query,
      bool isLoading,
      bool hasLoadedInitial,
      String errorMessage,
      List<ProductModel> products,
      List<StreamDataModel> liveStreams,
      bool hasNoResults,
      PageController? pageController,
      List<String> suggestions,
      bool isLoadingSuggestions,
      bool showSuggestions,
      bool isSearchFocused,
      List<RecentSearchItem> recentSearches,
      bool isLoadingRecentSearches,
      int? selectedCategoryId});
}

/// @nodoc
class __$$SearchStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateImpl>
    implements _$$SearchStateImplCopyWith<$Res> {
  __$$SearchStateImplCopyWithImpl(
      _$SearchStateImpl _value, $Res Function(_$SearchStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? query = null,
    Object? isLoading = null,
    Object? hasLoadedInitial = null,
    Object? errorMessage = null,
    Object? products = null,
    Object? liveStreams = null,
    Object? hasNoResults = null,
    Object? pageController = freezed,
    Object? suggestions = null,
    Object? isLoadingSuggestions = null,
    Object? showSuggestions = null,
    Object? isSearchFocused = null,
    Object? recentSearches = null,
    Object? isLoadingRecentSearches = null,
    Object? selectedCategoryId = freezed,
  }) {
    return _then(_$SearchStateImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryData>,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasLoadedInitial: null == hasLoadedInitial
          ? _value.hasLoadedInitial
          : hasLoadedInitial // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      liveStreams: null == liveStreams
          ? _value._liveStreams
          : liveStreams // ignore: cast_nullable_to_non_nullable
              as List<StreamDataModel>,
      hasNoResults: null == hasNoResults
          ? _value.hasNoResults
          : hasNoResults // ignore: cast_nullable_to_non_nullable
              as bool,
      pageController: freezed == pageController
          ? _value.pageController
          : pageController // ignore: cast_nullable_to_non_nullable
              as PageController?,
      suggestions: null == suggestions
          ? _value._suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isLoadingSuggestions: null == isLoadingSuggestions
          ? _value.isLoadingSuggestions
          : isLoadingSuggestions // ignore: cast_nullable_to_non_nullable
              as bool,
      showSuggestions: null == showSuggestions
          ? _value.showSuggestions
          : showSuggestions // ignore: cast_nullable_to_non_nullable
              as bool,
      isSearchFocused: null == isSearchFocused
          ? _value.isSearchFocused
          : isSearchFocused // ignore: cast_nullable_to_non_nullable
              as bool,
      recentSearches: null == recentSearches
          ? _value._recentSearches
          : recentSearches // ignore: cast_nullable_to_non_nullable
              as List<RecentSearchItem>,
      isLoadingRecentSearches: null == isLoadingRecentSearches
          ? _value.isLoadingRecentSearches
          : isLoadingRecentSearches // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedCategoryId: freezed == selectedCategoryId
          ? _value.selectedCategoryId
          : selectedCategoryId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$SearchStateImpl implements _SearchState {
  const _$SearchStateImpl(
      {required final List<CategoryData> categories,
      this.query = '',
      this.isLoading = false,
      this.hasLoadedInitial = false,
      this.errorMessage = '',
      final List<ProductModel> products = const [],
      final List<StreamDataModel> liveStreams = const [],
      this.hasNoResults = false,
      this.pageController,
      final List<String> suggestions = const [],
      this.isLoadingSuggestions = false,
      this.showSuggestions = false,
      this.isSearchFocused = false,
      final List<RecentSearchItem> recentSearches = const [],
      this.isLoadingRecentSearches = false,
      this.selectedCategoryId})
      : _categories = categories,
        _products = products,
        _liveStreams = liveStreams,
        _suggestions = suggestions,
        _recentSearches = recentSearches;

  final List<CategoryData> _categories;
  @override
  List<CategoryData> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  @JsonKey()
  final String query;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool hasLoadedInitial;
  @override
  @JsonKey()
  final String errorMessage;
  final List<ProductModel> _products;
  @override
  @JsonKey()
  List<ProductModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<StreamDataModel> _liveStreams;
  @override
  @JsonKey()
  List<StreamDataModel> get liveStreams {
    if (_liveStreams is EqualUnmodifiableListView) return _liveStreams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_liveStreams);
  }

  @override
  @JsonKey()
  final bool hasNoResults;
  @override
  final PageController? pageController;
  final List<String> _suggestions;
  @override
  @JsonKey()
  List<String> get suggestions {
    if (_suggestions is EqualUnmodifiableListView) return _suggestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suggestions);
  }

  @override
  @JsonKey()
  final bool isLoadingSuggestions;
  @override
  @JsonKey()
  final bool showSuggestions;
  @override
  @JsonKey()
  final bool isSearchFocused;
  final List<RecentSearchItem> _recentSearches;
  @override
  @JsonKey()
  List<RecentSearchItem> get recentSearches {
    if (_recentSearches is EqualUnmodifiableListView) return _recentSearches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentSearches);
  }

  @override
  @JsonKey()
  final bool isLoadingRecentSearches;
  @override
  final int? selectedCategoryId;

  @override
  String toString() {
    return 'SearchState(categories: $categories, query: $query, isLoading: $isLoading, hasLoadedInitial: $hasLoadedInitial, errorMessage: $errorMessage, products: $products, liveStreams: $liveStreams, hasNoResults: $hasNoResults, pageController: $pageController, suggestions: $suggestions, isLoadingSuggestions: $isLoadingSuggestions, showSuggestions: $showSuggestions, isSearchFocused: $isSearchFocused, recentSearches: $recentSearches, isLoadingRecentSearches: $isLoadingRecentSearches, selectedCategoryId: $selectedCategoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStateImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasLoadedInitial, hasLoadedInitial) ||
                other.hasLoadedInitial == hasLoadedInitial) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._liveStreams, _liveStreams) &&
            (identical(other.hasNoResults, hasNoResults) ||
                other.hasNoResults == hasNoResults) &&
            (identical(other.pageController, pageController) ||
                other.pageController == pageController) &&
            const DeepCollectionEquality()
                .equals(other._suggestions, _suggestions) &&
            (identical(other.isLoadingSuggestions, isLoadingSuggestions) ||
                other.isLoadingSuggestions == isLoadingSuggestions) &&
            (identical(other.showSuggestions, showSuggestions) ||
                other.showSuggestions == showSuggestions) &&
            (identical(other.isSearchFocused, isSearchFocused) ||
                other.isSearchFocused == isSearchFocused) &&
            const DeepCollectionEquality()
                .equals(other._recentSearches, _recentSearches) &&
            (identical(
                    other.isLoadingRecentSearches, isLoadingRecentSearches) ||
                other.isLoadingRecentSearches == isLoadingRecentSearches) &&
            (identical(other.selectedCategoryId, selectedCategoryId) ||
                other.selectedCategoryId == selectedCategoryId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categories),
      query,
      isLoading,
      hasLoadedInitial,
      errorMessage,
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_liveStreams),
      hasNoResults,
      pageController,
      const DeepCollectionEquality().hash(_suggestions),
      isLoadingSuggestions,
      showSuggestions,
      isSearchFocused,
      const DeepCollectionEquality().hash(_recentSearches),
      isLoadingRecentSearches,
      selectedCategoryId);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      __$$SearchStateImplCopyWithImpl<_$SearchStateImpl>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {required final List<CategoryData> categories,
      final String query,
      final bool isLoading,
      final bool hasLoadedInitial,
      final String errorMessage,
      final List<ProductModel> products,
      final List<StreamDataModel> liveStreams,
      final bool hasNoResults,
      final PageController? pageController,
      final List<String> suggestions,
      final bool isLoadingSuggestions,
      final bool showSuggestions,
      final bool isSearchFocused,
      final List<RecentSearchItem> recentSearches,
      final bool isLoadingRecentSearches,
      final int? selectedCategoryId}) = _$SearchStateImpl;

  @override
  List<CategoryData> get categories;
  @override
  String get query;
  @override
  bool get isLoading;
  @override
  bool get hasLoadedInitial;
  @override
  String get errorMessage;
  @override
  List<ProductModel> get products;
  @override
  List<StreamDataModel> get liveStreams;
  @override
  bool get hasNoResults;
  @override
  PageController? get pageController;
  @override
  List<String> get suggestions;
  @override
  bool get isLoadingSuggestions;
  @override
  bool get showSuggestions;
  @override
  bool get isSearchFocused;
  @override
  List<RecentSearchItem> get recentSearches;
  @override
  bool get isLoadingRecentSearches;
  @override
  int? get selectedCategoryId;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
