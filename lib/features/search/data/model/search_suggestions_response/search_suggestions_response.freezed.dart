// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_suggestions_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchSuggestionsResponse _$SearchSuggestionsResponseFromJson(
    Map<String, dynamic> json) {
  return _SearchSuggestionsResponse.fromJson(json);
}

/// @nodoc
mixin _$SearchSuggestionsResponse {
  bool get success => throw _privateConstructorUsedError;
  SearchSuggestionsData get data => throw _privateConstructorUsedError;

  /// Serializes this SearchSuggestionsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchSuggestionsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchSuggestionsResponseCopyWith<SearchSuggestionsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchSuggestionsResponseCopyWith<$Res> {
  factory $SearchSuggestionsResponseCopyWith(SearchSuggestionsResponse value,
          $Res Function(SearchSuggestionsResponse) then) =
      _$SearchSuggestionsResponseCopyWithImpl<$Res, SearchSuggestionsResponse>;
  @useResult
  $Res call({bool success, SearchSuggestionsData data});

  $SearchSuggestionsDataCopyWith<$Res> get data;
}

/// @nodoc
class _$SearchSuggestionsResponseCopyWithImpl<$Res,
        $Val extends SearchSuggestionsResponse>
    implements $SearchSuggestionsResponseCopyWith<$Res> {
  _$SearchSuggestionsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchSuggestionsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SearchSuggestionsData,
    ) as $Val);
  }

  /// Create a copy of SearchSuggestionsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchSuggestionsDataCopyWith<$Res> get data {
    return $SearchSuggestionsDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchSuggestionsResponseImplCopyWith<$Res>
    implements $SearchSuggestionsResponseCopyWith<$Res> {
  factory _$$SearchSuggestionsResponseImplCopyWith(
          _$SearchSuggestionsResponseImpl value,
          $Res Function(_$SearchSuggestionsResponseImpl) then) =
      __$$SearchSuggestionsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, SearchSuggestionsData data});

  @override
  $SearchSuggestionsDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SearchSuggestionsResponseImplCopyWithImpl<$Res>
    extends _$SearchSuggestionsResponseCopyWithImpl<$Res,
        _$SearchSuggestionsResponseImpl>
    implements _$$SearchSuggestionsResponseImplCopyWith<$Res> {
  __$$SearchSuggestionsResponseImplCopyWithImpl(
      _$SearchSuggestionsResponseImpl _value,
      $Res Function(_$SearchSuggestionsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchSuggestionsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_$SearchSuggestionsResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SearchSuggestionsData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchSuggestionsResponseImpl implements _SearchSuggestionsResponse {
  const _$SearchSuggestionsResponseImpl(
      {required this.success, required this.data});

  factory _$SearchSuggestionsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchSuggestionsResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final SearchSuggestionsData data;

  @override
  String toString() {
    return 'SearchSuggestionsResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchSuggestionsResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of SearchSuggestionsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchSuggestionsResponseImplCopyWith<_$SearchSuggestionsResponseImpl>
      get copyWith => __$$SearchSuggestionsResponseImplCopyWithImpl<
          _$SearchSuggestionsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchSuggestionsResponseImplToJson(
      this,
    );
  }
}

abstract class _SearchSuggestionsResponse implements SearchSuggestionsResponse {
  const factory _SearchSuggestionsResponse(
          {required final bool success,
          required final SearchSuggestionsData data}) =
      _$SearchSuggestionsResponseImpl;

  factory _SearchSuggestionsResponse.fromJson(Map<String, dynamic> json) =
      _$SearchSuggestionsResponseImpl.fromJson;

  @override
  bool get success;
  @override
  SearchSuggestionsData get data;

  /// Create a copy of SearchSuggestionsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchSuggestionsResponseImplCopyWith<_$SearchSuggestionsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SearchSuggestionsData _$SearchSuggestionsDataFromJson(
    Map<String, dynamic> json) {
  return _SearchSuggestionsData.fromJson(json);
}

/// @nodoc
mixin _$SearchSuggestionsData {
  String get query => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  List<String> get suggestions => throw _privateConstructorUsedError;

  /// Serializes this SearchSuggestionsData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchSuggestionsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchSuggestionsDataCopyWith<SearchSuggestionsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchSuggestionsDataCopyWith<$Res> {
  factory $SearchSuggestionsDataCopyWith(SearchSuggestionsData value,
          $Res Function(SearchSuggestionsData) then) =
      _$SearchSuggestionsDataCopyWithImpl<$Res, SearchSuggestionsData>;
  @useResult
  $Res call({String query, int count, List<String> suggestions});
}

/// @nodoc
class _$SearchSuggestionsDataCopyWithImpl<$Res,
        $Val extends SearchSuggestionsData>
    implements $SearchSuggestionsDataCopyWith<$Res> {
  _$SearchSuggestionsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchSuggestionsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? count = null,
    Object? suggestions = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      suggestions: null == suggestions
          ? _value.suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchSuggestionsDataImplCopyWith<$Res>
    implements $SearchSuggestionsDataCopyWith<$Res> {
  factory _$$SearchSuggestionsDataImplCopyWith(
          _$SearchSuggestionsDataImpl value,
          $Res Function(_$SearchSuggestionsDataImpl) then) =
      __$$SearchSuggestionsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query, int count, List<String> suggestions});
}

/// @nodoc
class __$$SearchSuggestionsDataImplCopyWithImpl<$Res>
    extends _$SearchSuggestionsDataCopyWithImpl<$Res,
        _$SearchSuggestionsDataImpl>
    implements _$$SearchSuggestionsDataImplCopyWith<$Res> {
  __$$SearchSuggestionsDataImplCopyWithImpl(_$SearchSuggestionsDataImpl _value,
      $Res Function(_$SearchSuggestionsDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchSuggestionsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? count = null,
    Object? suggestions = null,
  }) {
    return _then(_$SearchSuggestionsDataImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      suggestions: null == suggestions
          ? _value._suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchSuggestionsDataImpl implements _SearchSuggestionsData {
  const _$SearchSuggestionsDataImpl(
      {required this.query,
      required this.count,
      required final List<String> suggestions})
      : _suggestions = suggestions;

  factory _$SearchSuggestionsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchSuggestionsDataImplFromJson(json);

  @override
  final String query;
  @override
  final int count;
  final List<String> _suggestions;
  @override
  List<String> get suggestions {
    if (_suggestions is EqualUnmodifiableListView) return _suggestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suggestions);
  }

  @override
  String toString() {
    return 'SearchSuggestionsData(query: $query, count: $count, suggestions: $suggestions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchSuggestionsDataImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality()
                .equals(other._suggestions, _suggestions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, query, count,
      const DeepCollectionEquality().hash(_suggestions));

  /// Create a copy of SearchSuggestionsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchSuggestionsDataImplCopyWith<_$SearchSuggestionsDataImpl>
      get copyWith => __$$SearchSuggestionsDataImplCopyWithImpl<
          _$SearchSuggestionsDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchSuggestionsDataImplToJson(
      this,
    );
  }
}

abstract class _SearchSuggestionsData implements SearchSuggestionsData {
  const factory _SearchSuggestionsData(
      {required final String query,
      required final int count,
      required final List<String> suggestions}) = _$SearchSuggestionsDataImpl;

  factory _SearchSuggestionsData.fromJson(Map<String, dynamic> json) =
      _$SearchSuggestionsDataImpl.fromJson;

  @override
  String get query;
  @override
  int get count;
  @override
  List<String> get suggestions;

  /// Create a copy of SearchSuggestionsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchSuggestionsDataImplCopyWith<_$SearchSuggestionsDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
