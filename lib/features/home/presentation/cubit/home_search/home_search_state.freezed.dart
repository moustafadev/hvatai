// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeSearchState {
  String get query =>
      throw _privateConstructorUsedError; // UI mode: false => show normal home, true => show search results
  bool get isSearchMode => throw _privateConstructorUsedError;
  List<ProductModel> get products =>
      throw _privateConstructorUsedError; // results
  bool get isLoading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  List<StreamDataModel> get streams =>
      throw _privateConstructorUsedError; // suggestions
  List<String> get suggestions => throw _privateConstructorUsedError;
  bool get isLoadingSuggestions => throw _privateConstructorUsedError;
  bool get showSuggestions => throw _privateConstructorUsedError;
  bool get isSearchFocused => throw _privateConstructorUsedError;

  /// Create a copy of HomeSearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeSearchStateCopyWith<HomeSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeSearchStateCopyWith<$Res> {
  factory $HomeSearchStateCopyWith(
          HomeSearchState value, $Res Function(HomeSearchState) then) =
      _$HomeSearchStateCopyWithImpl<$Res, HomeSearchState>;
  @useResult
  $Res call(
      {String query,
      bool isSearchMode,
      List<ProductModel> products,
      bool isLoading,
      String errorMessage,
      List<StreamDataModel> streams,
      List<String> suggestions,
      bool isLoadingSuggestions,
      bool showSuggestions,
      bool isSearchFocused});
}

/// @nodoc
class _$HomeSearchStateCopyWithImpl<$Res, $Val extends HomeSearchState>
    implements $HomeSearchStateCopyWith<$Res> {
  _$HomeSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeSearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? isSearchMode = null,
    Object? products = null,
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? streams = null,
    Object? suggestions = null,
    Object? isLoadingSuggestions = null,
    Object? showSuggestions = null,
    Object? isSearchFocused = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      isSearchMode: null == isSearchMode
          ? _value.isSearchMode
          : isSearchMode // ignore: cast_nullable_to_non_nullable
              as bool,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      streams: null == streams
          ? _value.streams
          : streams // ignore: cast_nullable_to_non_nullable
              as List<StreamDataModel>,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeSearchStateImplCopyWith<$Res>
    implements $HomeSearchStateCopyWith<$Res> {
  factory _$$HomeSearchStateImplCopyWith(_$HomeSearchStateImpl value,
          $Res Function(_$HomeSearchStateImpl) then) =
      __$$HomeSearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String query,
      bool isSearchMode,
      List<ProductModel> products,
      bool isLoading,
      String errorMessage,
      List<StreamDataModel> streams,
      List<String> suggestions,
      bool isLoadingSuggestions,
      bool showSuggestions,
      bool isSearchFocused});
}

/// @nodoc
class __$$HomeSearchStateImplCopyWithImpl<$Res>
    extends _$HomeSearchStateCopyWithImpl<$Res, _$HomeSearchStateImpl>
    implements _$$HomeSearchStateImplCopyWith<$Res> {
  __$$HomeSearchStateImplCopyWithImpl(
      _$HomeSearchStateImpl _value, $Res Function(_$HomeSearchStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeSearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? isSearchMode = null,
    Object? products = null,
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? streams = null,
    Object? suggestions = null,
    Object? isLoadingSuggestions = null,
    Object? showSuggestions = null,
    Object? isSearchFocused = null,
  }) {
    return _then(_$HomeSearchStateImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      isSearchMode: null == isSearchMode
          ? _value.isSearchMode
          : isSearchMode // ignore: cast_nullable_to_non_nullable
              as bool,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      streams: null == streams
          ? _value._streams
          : streams // ignore: cast_nullable_to_non_nullable
              as List<StreamDataModel>,
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
    ));
  }
}

/// @nodoc

class _$HomeSearchStateImpl implements _HomeSearchState {
  const _$HomeSearchStateImpl(
      {this.query = '',
      this.isSearchMode = false,
      final List<ProductModel> products = const [],
      this.isLoading = false,
      this.errorMessage = '',
      final List<StreamDataModel> streams = const [],
      final List<String> suggestions = const [],
      this.isLoadingSuggestions = false,
      this.showSuggestions = false,
      this.isSearchFocused = false})
      : _products = products,
        _streams = streams,
        _suggestions = suggestions;

  @override
  @JsonKey()
  final String query;
// UI mode: false => show normal home, true => show search results
  @override
  @JsonKey()
  final bool isSearchMode;
  final List<ProductModel> _products;
  @override
  @JsonKey()
  List<ProductModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

// results
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String errorMessage;
  final List<StreamDataModel> _streams;
  @override
  @JsonKey()
  List<StreamDataModel> get streams {
    if (_streams is EqualUnmodifiableListView) return _streams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_streams);
  }

// suggestions
  final List<String> _suggestions;
// suggestions
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

  @override
  String toString() {
    return 'HomeSearchState(query: $query, isSearchMode: $isSearchMode, products: $products, isLoading: $isLoading, errorMessage: $errorMessage, streams: $streams, suggestions: $suggestions, isLoadingSuggestions: $isLoadingSuggestions, showSuggestions: $showSuggestions, isSearchFocused: $isSearchFocused)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeSearchStateImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.isSearchMode, isSearchMode) ||
                other.isSearchMode == isSearchMode) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(other._streams, _streams) &&
            const DeepCollectionEquality()
                .equals(other._suggestions, _suggestions) &&
            (identical(other.isLoadingSuggestions, isLoadingSuggestions) ||
                other.isLoadingSuggestions == isLoadingSuggestions) &&
            (identical(other.showSuggestions, showSuggestions) ||
                other.showSuggestions == showSuggestions) &&
            (identical(other.isSearchFocused, isSearchFocused) ||
                other.isSearchFocused == isSearchFocused));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      query,
      isSearchMode,
      const DeepCollectionEquality().hash(_products),
      isLoading,
      errorMessage,
      const DeepCollectionEquality().hash(_streams),
      const DeepCollectionEquality().hash(_suggestions),
      isLoadingSuggestions,
      showSuggestions,
      isSearchFocused);

  /// Create a copy of HomeSearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeSearchStateImplCopyWith<_$HomeSearchStateImpl> get copyWith =>
      __$$HomeSearchStateImplCopyWithImpl<_$HomeSearchStateImpl>(
          this, _$identity);
}

abstract class _HomeSearchState implements HomeSearchState {
  const factory _HomeSearchState(
      {final String query,
      final bool isSearchMode,
      final List<ProductModel> products,
      final bool isLoading,
      final String errorMessage,
      final List<StreamDataModel> streams,
      final List<String> suggestions,
      final bool isLoadingSuggestions,
      final bool showSuggestions,
      final bool isSearchFocused}) = _$HomeSearchStateImpl;

  @override
  String
      get query; // UI mode: false => show normal home, true => show search results
  @override
  bool get isSearchMode;
  @override
  List<ProductModel> get products; // results
  @override
  bool get isLoading;
  @override
  String get errorMessage;
  @override
  List<StreamDataModel> get streams; // suggestions
  @override
  List<String> get suggestions;
  @override
  bool get isLoadingSuggestions;
  @override
  bool get showSuggestions;
  @override
  bool get isSearchFocused;

  /// Create a copy of HomeSearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeSearchStateImplCopyWith<_$HomeSearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
