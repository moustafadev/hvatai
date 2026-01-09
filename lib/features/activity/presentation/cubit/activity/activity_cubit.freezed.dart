// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ActivityState {
  int get selectedTabIndex => throw _privateConstructorUsedError;
  int get selectedBidSubTabIndex =>
      throw _privateConstructorUsedError; // Favorites
  List<ProductModel> get favorites => throw _privateConstructorUsedError;
  bool get isLoadingFavorites => throw _privateConstructorUsedError;
  String get favoritesError => throw _privateConstructorUsedError; // Streams
  List<StreamDataModel> get streams => throw _privateConstructorUsedError;
  bool get isLoadingStreams => throw _privateConstructorUsedError;
  String get streamsError => throw _privateConstructorUsedError; // Bids
  List<UserBidItem> get allBids => throw _privateConstructorUsedError;
  List<UserBidItem> get activeBids => throw _privateConstructorUsedError;
  List<UserBidItem> get historyBids => throw _privateConstructorUsedError;
  bool get isLoadingBids => throw _privateConstructorUsedError;
  String get bidsError => throw _privateConstructorUsedError;

  /// Create a copy of ActivityState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActivityStateCopyWith<ActivityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityStateCopyWith<$Res> {
  factory $ActivityStateCopyWith(
          ActivityState value, $Res Function(ActivityState) then) =
      _$ActivityStateCopyWithImpl<$Res, ActivityState>;
  @useResult
  $Res call(
      {int selectedTabIndex,
      int selectedBidSubTabIndex,
      List<ProductModel> favorites,
      bool isLoadingFavorites,
      String favoritesError,
      List<StreamDataModel> streams,
      bool isLoadingStreams,
      String streamsError,
      List<UserBidItem> allBids,
      List<UserBidItem> activeBids,
      List<UserBidItem> historyBids,
      bool isLoadingBids,
      String bidsError});
}

/// @nodoc
class _$ActivityStateCopyWithImpl<$Res, $Val extends ActivityState>
    implements $ActivityStateCopyWith<$Res> {
  _$ActivityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActivityState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTabIndex = null,
    Object? selectedBidSubTabIndex = null,
    Object? favorites = null,
    Object? isLoadingFavorites = null,
    Object? favoritesError = null,
    Object? streams = null,
    Object? isLoadingStreams = null,
    Object? streamsError = null,
    Object? allBids = null,
    Object? activeBids = null,
    Object? historyBids = null,
    Object? isLoadingBids = null,
    Object? bidsError = null,
  }) {
    return _then(_value.copyWith(
      selectedTabIndex: null == selectedTabIndex
          ? _value.selectedTabIndex
          : selectedTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectedBidSubTabIndex: null == selectedBidSubTabIndex
          ? _value.selectedBidSubTabIndex
          : selectedBidSubTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      favorites: null == favorites
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      isLoadingFavorites: null == isLoadingFavorites
          ? _value.isLoadingFavorites
          : isLoadingFavorites // ignore: cast_nullable_to_non_nullable
              as bool,
      favoritesError: null == favoritesError
          ? _value.favoritesError
          : favoritesError // ignore: cast_nullable_to_non_nullable
              as String,
      streams: null == streams
          ? _value.streams
          : streams // ignore: cast_nullable_to_non_nullable
              as List<StreamDataModel>,
      isLoadingStreams: null == isLoadingStreams
          ? _value.isLoadingStreams
          : isLoadingStreams // ignore: cast_nullable_to_non_nullable
              as bool,
      streamsError: null == streamsError
          ? _value.streamsError
          : streamsError // ignore: cast_nullable_to_non_nullable
              as String,
      allBids: null == allBids
          ? _value.allBids
          : allBids // ignore: cast_nullable_to_non_nullable
              as List<UserBidItem>,
      activeBids: null == activeBids
          ? _value.activeBids
          : activeBids // ignore: cast_nullable_to_non_nullable
              as List<UserBidItem>,
      historyBids: null == historyBids
          ? _value.historyBids
          : historyBids // ignore: cast_nullable_to_non_nullable
              as List<UserBidItem>,
      isLoadingBids: null == isLoadingBids
          ? _value.isLoadingBids
          : isLoadingBids // ignore: cast_nullable_to_non_nullable
              as bool,
      bidsError: null == bidsError
          ? _value.bidsError
          : bidsError // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActivityStateImplCopyWith<$Res>
    implements $ActivityStateCopyWith<$Res> {
  factory _$$ActivityStateImplCopyWith(
          _$ActivityStateImpl value, $Res Function(_$ActivityStateImpl) then) =
      __$$ActivityStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int selectedTabIndex,
      int selectedBidSubTabIndex,
      List<ProductModel> favorites,
      bool isLoadingFavorites,
      String favoritesError,
      List<StreamDataModel> streams,
      bool isLoadingStreams,
      String streamsError,
      List<UserBidItem> allBids,
      List<UserBidItem> activeBids,
      List<UserBidItem> historyBids,
      bool isLoadingBids,
      String bidsError});
}

/// @nodoc
class __$$ActivityStateImplCopyWithImpl<$Res>
    extends _$ActivityStateCopyWithImpl<$Res, _$ActivityStateImpl>
    implements _$$ActivityStateImplCopyWith<$Res> {
  __$$ActivityStateImplCopyWithImpl(
      _$ActivityStateImpl _value, $Res Function(_$ActivityStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivityState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTabIndex = null,
    Object? selectedBidSubTabIndex = null,
    Object? favorites = null,
    Object? isLoadingFavorites = null,
    Object? favoritesError = null,
    Object? streams = null,
    Object? isLoadingStreams = null,
    Object? streamsError = null,
    Object? allBids = null,
    Object? activeBids = null,
    Object? historyBids = null,
    Object? isLoadingBids = null,
    Object? bidsError = null,
  }) {
    return _then(_$ActivityStateImpl(
      selectedTabIndex: null == selectedTabIndex
          ? _value.selectedTabIndex
          : selectedTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectedBidSubTabIndex: null == selectedBidSubTabIndex
          ? _value.selectedBidSubTabIndex
          : selectedBidSubTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      favorites: null == favorites
          ? _value._favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      isLoadingFavorites: null == isLoadingFavorites
          ? _value.isLoadingFavorites
          : isLoadingFavorites // ignore: cast_nullable_to_non_nullable
              as bool,
      favoritesError: null == favoritesError
          ? _value.favoritesError
          : favoritesError // ignore: cast_nullable_to_non_nullable
              as String,
      streams: null == streams
          ? _value._streams
          : streams // ignore: cast_nullable_to_non_nullable
              as List<StreamDataModel>,
      isLoadingStreams: null == isLoadingStreams
          ? _value.isLoadingStreams
          : isLoadingStreams // ignore: cast_nullable_to_non_nullable
              as bool,
      streamsError: null == streamsError
          ? _value.streamsError
          : streamsError // ignore: cast_nullable_to_non_nullable
              as String,
      allBids: null == allBids
          ? _value._allBids
          : allBids // ignore: cast_nullable_to_non_nullable
              as List<UserBidItem>,
      activeBids: null == activeBids
          ? _value._activeBids
          : activeBids // ignore: cast_nullable_to_non_nullable
              as List<UserBidItem>,
      historyBids: null == historyBids
          ? _value._historyBids
          : historyBids // ignore: cast_nullable_to_non_nullable
              as List<UserBidItem>,
      isLoadingBids: null == isLoadingBids
          ? _value.isLoadingBids
          : isLoadingBids // ignore: cast_nullable_to_non_nullable
              as bool,
      bidsError: null == bidsError
          ? _value.bidsError
          : bidsError // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ActivityStateImpl implements _ActivityState {
  const _$ActivityStateImpl(
      {this.selectedTabIndex = 0,
      this.selectedBidSubTabIndex = 0,
      final List<ProductModel> favorites = const [],
      this.isLoadingFavorites = false,
      this.favoritesError = '',
      final List<StreamDataModel> streams = const [],
      this.isLoadingStreams = false,
      this.streamsError = '',
      final List<UserBidItem> allBids = const [],
      final List<UserBidItem> activeBids = const [],
      final List<UserBidItem> historyBids = const [],
      this.isLoadingBids = false,
      this.bidsError = ''})
      : _favorites = favorites,
        _streams = streams,
        _allBids = allBids,
        _activeBids = activeBids,
        _historyBids = historyBids;

  @override
  @JsonKey()
  final int selectedTabIndex;
  @override
  @JsonKey()
  final int selectedBidSubTabIndex;
// Favorites
  final List<ProductModel> _favorites;
// Favorites
  @override
  @JsonKey()
  List<ProductModel> get favorites {
    if (_favorites is EqualUnmodifiableListView) return _favorites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favorites);
  }

  @override
  @JsonKey()
  final bool isLoadingFavorites;
  @override
  @JsonKey()
  final String favoritesError;
// Streams
  final List<StreamDataModel> _streams;
// Streams
  @override
  @JsonKey()
  List<StreamDataModel> get streams {
    if (_streams is EqualUnmodifiableListView) return _streams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_streams);
  }

  @override
  @JsonKey()
  final bool isLoadingStreams;
  @override
  @JsonKey()
  final String streamsError;
// Bids
  final List<UserBidItem> _allBids;
// Bids
  @override
  @JsonKey()
  List<UserBidItem> get allBids {
    if (_allBids is EqualUnmodifiableListView) return _allBids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allBids);
  }

  final List<UserBidItem> _activeBids;
  @override
  @JsonKey()
  List<UserBidItem> get activeBids {
    if (_activeBids is EqualUnmodifiableListView) return _activeBids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activeBids);
  }

  final List<UserBidItem> _historyBids;
  @override
  @JsonKey()
  List<UserBidItem> get historyBids {
    if (_historyBids is EqualUnmodifiableListView) return _historyBids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_historyBids);
  }

  @override
  @JsonKey()
  final bool isLoadingBids;
  @override
  @JsonKey()
  final String bidsError;

  @override
  String toString() {
    return 'ActivityState(selectedTabIndex: $selectedTabIndex, selectedBidSubTabIndex: $selectedBidSubTabIndex, favorites: $favorites, isLoadingFavorites: $isLoadingFavorites, favoritesError: $favoritesError, streams: $streams, isLoadingStreams: $isLoadingStreams, streamsError: $streamsError, allBids: $allBids, activeBids: $activeBids, historyBids: $historyBids, isLoadingBids: $isLoadingBids, bidsError: $bidsError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityStateImpl &&
            (identical(other.selectedTabIndex, selectedTabIndex) ||
                other.selectedTabIndex == selectedTabIndex) &&
            (identical(other.selectedBidSubTabIndex, selectedBidSubTabIndex) ||
                other.selectedBidSubTabIndex == selectedBidSubTabIndex) &&
            const DeepCollectionEquality()
                .equals(other._favorites, _favorites) &&
            (identical(other.isLoadingFavorites, isLoadingFavorites) ||
                other.isLoadingFavorites == isLoadingFavorites) &&
            (identical(other.favoritesError, favoritesError) ||
                other.favoritesError == favoritesError) &&
            const DeepCollectionEquality().equals(other._streams, _streams) &&
            (identical(other.isLoadingStreams, isLoadingStreams) ||
                other.isLoadingStreams == isLoadingStreams) &&
            (identical(other.streamsError, streamsError) ||
                other.streamsError == streamsError) &&
            const DeepCollectionEquality().equals(other._allBids, _allBids) &&
            const DeepCollectionEquality()
                .equals(other._activeBids, _activeBids) &&
            const DeepCollectionEquality()
                .equals(other._historyBids, _historyBids) &&
            (identical(other.isLoadingBids, isLoadingBids) ||
                other.isLoadingBids == isLoadingBids) &&
            (identical(other.bidsError, bidsError) ||
                other.bidsError == bidsError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedTabIndex,
      selectedBidSubTabIndex,
      const DeepCollectionEquality().hash(_favorites),
      isLoadingFavorites,
      favoritesError,
      const DeepCollectionEquality().hash(_streams),
      isLoadingStreams,
      streamsError,
      const DeepCollectionEquality().hash(_allBids),
      const DeepCollectionEquality().hash(_activeBids),
      const DeepCollectionEquality().hash(_historyBids),
      isLoadingBids,
      bidsError);

  /// Create a copy of ActivityState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityStateImplCopyWith<_$ActivityStateImpl> get copyWith =>
      __$$ActivityStateImplCopyWithImpl<_$ActivityStateImpl>(this, _$identity);
}

abstract class _ActivityState implements ActivityState {
  const factory _ActivityState(
      {final int selectedTabIndex,
      final int selectedBidSubTabIndex,
      final List<ProductModel> favorites,
      final bool isLoadingFavorites,
      final String favoritesError,
      final List<StreamDataModel> streams,
      final bool isLoadingStreams,
      final String streamsError,
      final List<UserBidItem> allBids,
      final List<UserBidItem> activeBids,
      final List<UserBidItem> historyBids,
      final bool isLoadingBids,
      final String bidsError}) = _$ActivityStateImpl;

  @override
  int get selectedTabIndex;
  @override
  int get selectedBidSubTabIndex; // Favorites
  @override
  List<ProductModel> get favorites;
  @override
  bool get isLoadingFavorites;
  @override
  String get favoritesError; // Streams
  @override
  List<StreamDataModel> get streams;
  @override
  bool get isLoadingStreams;
  @override
  String get streamsError; // Bids
  @override
  List<UserBidItem> get allBids;
  @override
  List<UserBidItem> get activeBids;
  @override
  List<UserBidItem> get historyBids;
  @override
  bool get isLoadingBids;
  @override
  String get bidsError;

  /// Create a copy of ActivityState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActivityStateImplCopyWith<_$ActivityStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
