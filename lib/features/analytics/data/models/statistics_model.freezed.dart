// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'statistics_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StatisticsModel _$StatisticsModelFromJson(Map<String, dynamic> json) {
  return _StatisticsModel.fromJson(json);
}

/// @nodoc
mixin _$StatisticsModel {
  String? get period => throw _privateConstructorUsedError;
  String? get filter => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  String? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  String? get endDate => throw _privateConstructorUsedError;
  StatisticsData? get statistics => throw _privateConstructorUsedError;

  /// Serializes this StatisticsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StatisticsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatisticsModelCopyWith<StatisticsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticsModelCopyWith<$Res> {
  factory $StatisticsModelCopyWith(
          StatisticsModel value, $Res Function(StatisticsModel) then) =
      _$StatisticsModelCopyWithImpl<$Res, StatisticsModel>;
  @useResult
  $Res call(
      {String? period,
      String? filter,
      @JsonKey(name: 'start_date') String? startDate,
      @JsonKey(name: 'end_date') String? endDate,
      StatisticsData? statistics});

  $StatisticsDataCopyWith<$Res>? get statistics;
}

/// @nodoc
class _$StatisticsModelCopyWithImpl<$Res, $Val extends StatisticsModel>
    implements $StatisticsModelCopyWith<$Res> {
  _$StatisticsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatisticsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? period = freezed,
    Object? filter = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? statistics = freezed,
  }) {
    return _then(_value.copyWith(
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String?,
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      statistics: freezed == statistics
          ? _value.statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as StatisticsData?,
    ) as $Val);
  }

  /// Create a copy of StatisticsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatisticsDataCopyWith<$Res>? get statistics {
    if (_value.statistics == null) {
      return null;
    }

    return $StatisticsDataCopyWith<$Res>(_value.statistics!, (value) {
      return _then(_value.copyWith(statistics: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StatisticsModelImplCopyWith<$Res>
    implements $StatisticsModelCopyWith<$Res> {
  factory _$$StatisticsModelImplCopyWith(_$StatisticsModelImpl value,
          $Res Function(_$StatisticsModelImpl) then) =
      __$$StatisticsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? period,
      String? filter,
      @JsonKey(name: 'start_date') String? startDate,
      @JsonKey(name: 'end_date') String? endDate,
      StatisticsData? statistics});

  @override
  $StatisticsDataCopyWith<$Res>? get statistics;
}

/// @nodoc
class __$$StatisticsModelImplCopyWithImpl<$Res>
    extends _$StatisticsModelCopyWithImpl<$Res, _$StatisticsModelImpl>
    implements _$$StatisticsModelImplCopyWith<$Res> {
  __$$StatisticsModelImplCopyWithImpl(
      _$StatisticsModelImpl _value, $Res Function(_$StatisticsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StatisticsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? period = freezed,
    Object? filter = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? statistics = freezed,
  }) {
    return _then(_$StatisticsModelImpl(
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String?,
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      statistics: freezed == statistics
          ? _value.statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as StatisticsData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatisticsModelImpl implements _StatisticsModel {
  const _$StatisticsModelImpl(
      {this.period,
      this.filter,
      @JsonKey(name: 'start_date') this.startDate,
      @JsonKey(name: 'end_date') this.endDate,
      this.statistics});

  factory _$StatisticsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatisticsModelImplFromJson(json);

  @override
  final String? period;
  @override
  final String? filter;
  @override
  @JsonKey(name: 'start_date')
  final String? startDate;
  @override
  @JsonKey(name: 'end_date')
  final String? endDate;
  @override
  final StatisticsData? statistics;

  @override
  String toString() {
    return 'StatisticsModel(period: $period, filter: $filter, startDate: $startDate, endDate: $endDate, statistics: $statistics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatisticsModelImpl &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.statistics, statistics) ||
                other.statistics == statistics));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, period, filter, startDate, endDate, statistics);

  /// Create a copy of StatisticsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatisticsModelImplCopyWith<_$StatisticsModelImpl> get copyWith =>
      __$$StatisticsModelImplCopyWithImpl<_$StatisticsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatisticsModelImplToJson(
      this,
    );
  }
}

abstract class _StatisticsModel implements StatisticsModel {
  const factory _StatisticsModel(
      {final String? period,
      final String? filter,
      @JsonKey(name: 'start_date') final String? startDate,
      @JsonKey(name: 'end_date') final String? endDate,
      final StatisticsData? statistics}) = _$StatisticsModelImpl;

  factory _StatisticsModel.fromJson(Map<String, dynamic> json) =
      _$StatisticsModelImpl.fromJson;

  @override
  String? get period;
  @override
  String? get filter;
  @override
  @JsonKey(name: 'start_date')
  String? get startDate;
  @override
  @JsonKey(name: 'end_date')
  String? get endDate;
  @override
  StatisticsData? get statistics;

  /// Create a copy of StatisticsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatisticsModelImplCopyWith<_$StatisticsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StatisticsData _$StatisticsDataFromJson(Map<String, dynamic> json) {
  return _StatisticsData.fromJson(json);
}

/// @nodoc
mixin _$StatisticsData {
  StatisticItem? get revenue => throw _privateConstructorUsedError;
  StatisticItem? get streams => throw _privateConstructorUsedError;
  StatisticItem? get bids => throw _privateConstructorUsedError;
  @JsonKey(name: 'sold_products')
  StatisticItem? get soldProducts => throw _privateConstructorUsedError;
  StatisticItem? get participants => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_viewers')
  StatisticItem? get maxViewers => throw _privateConstructorUsedError;
  @JsonKey(name: 'auction_winners')
  AuctionWinners? get auctionWinners => throw _privateConstructorUsedError;

  /// Serializes this StatisticsData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StatisticsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatisticsDataCopyWith<StatisticsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticsDataCopyWith<$Res> {
  factory $StatisticsDataCopyWith(
          StatisticsData value, $Res Function(StatisticsData) then) =
      _$StatisticsDataCopyWithImpl<$Res, StatisticsData>;
  @useResult
  $Res call(
      {StatisticItem? revenue,
      StatisticItem? streams,
      StatisticItem? bids,
      @JsonKey(name: 'sold_products') StatisticItem? soldProducts,
      StatisticItem? participants,
      @JsonKey(name: 'max_viewers') StatisticItem? maxViewers,
      @JsonKey(name: 'auction_winners') AuctionWinners? auctionWinners});

  $StatisticItemCopyWith<$Res>? get revenue;
  $StatisticItemCopyWith<$Res>? get streams;
  $StatisticItemCopyWith<$Res>? get bids;
  $StatisticItemCopyWith<$Res>? get soldProducts;
  $StatisticItemCopyWith<$Res>? get participants;
  $StatisticItemCopyWith<$Res>? get maxViewers;
  $AuctionWinnersCopyWith<$Res>? get auctionWinners;
}

/// @nodoc
class _$StatisticsDataCopyWithImpl<$Res, $Val extends StatisticsData>
    implements $StatisticsDataCopyWith<$Res> {
  _$StatisticsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatisticsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? revenue = freezed,
    Object? streams = freezed,
    Object? bids = freezed,
    Object? soldProducts = freezed,
    Object? participants = freezed,
    Object? maxViewers = freezed,
    Object? auctionWinners = freezed,
  }) {
    return _then(_value.copyWith(
      revenue: freezed == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as StatisticItem?,
      streams: freezed == streams
          ? _value.streams
          : streams // ignore: cast_nullable_to_non_nullable
              as StatisticItem?,
      bids: freezed == bids
          ? _value.bids
          : bids // ignore: cast_nullable_to_non_nullable
              as StatisticItem?,
      soldProducts: freezed == soldProducts
          ? _value.soldProducts
          : soldProducts // ignore: cast_nullable_to_non_nullable
              as StatisticItem?,
      participants: freezed == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as StatisticItem?,
      maxViewers: freezed == maxViewers
          ? _value.maxViewers
          : maxViewers // ignore: cast_nullable_to_non_nullable
              as StatisticItem?,
      auctionWinners: freezed == auctionWinners
          ? _value.auctionWinners
          : auctionWinners // ignore: cast_nullable_to_non_nullable
              as AuctionWinners?,
    ) as $Val);
  }

  /// Create a copy of StatisticsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatisticItemCopyWith<$Res>? get revenue {
    if (_value.revenue == null) {
      return null;
    }

    return $StatisticItemCopyWith<$Res>(_value.revenue!, (value) {
      return _then(_value.copyWith(revenue: value) as $Val);
    });
  }

  /// Create a copy of StatisticsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatisticItemCopyWith<$Res>? get streams {
    if (_value.streams == null) {
      return null;
    }

    return $StatisticItemCopyWith<$Res>(_value.streams!, (value) {
      return _then(_value.copyWith(streams: value) as $Val);
    });
  }

  /// Create a copy of StatisticsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatisticItemCopyWith<$Res>? get bids {
    if (_value.bids == null) {
      return null;
    }

    return $StatisticItemCopyWith<$Res>(_value.bids!, (value) {
      return _then(_value.copyWith(bids: value) as $Val);
    });
  }

  /// Create a copy of StatisticsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatisticItemCopyWith<$Res>? get soldProducts {
    if (_value.soldProducts == null) {
      return null;
    }

    return $StatisticItemCopyWith<$Res>(_value.soldProducts!, (value) {
      return _then(_value.copyWith(soldProducts: value) as $Val);
    });
  }

  /// Create a copy of StatisticsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatisticItemCopyWith<$Res>? get participants {
    if (_value.participants == null) {
      return null;
    }

    return $StatisticItemCopyWith<$Res>(_value.participants!, (value) {
      return _then(_value.copyWith(participants: value) as $Val);
    });
  }

  /// Create a copy of StatisticsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatisticItemCopyWith<$Res>? get maxViewers {
    if (_value.maxViewers == null) {
      return null;
    }

    return $StatisticItemCopyWith<$Res>(_value.maxViewers!, (value) {
      return _then(_value.copyWith(maxViewers: value) as $Val);
    });
  }

  /// Create a copy of StatisticsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuctionWinnersCopyWith<$Res>? get auctionWinners {
    if (_value.auctionWinners == null) {
      return null;
    }

    return $AuctionWinnersCopyWith<$Res>(_value.auctionWinners!, (value) {
      return _then(_value.copyWith(auctionWinners: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StatisticsDataImplCopyWith<$Res>
    implements $StatisticsDataCopyWith<$Res> {
  factory _$$StatisticsDataImplCopyWith(_$StatisticsDataImpl value,
          $Res Function(_$StatisticsDataImpl) then) =
      __$$StatisticsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StatisticItem? revenue,
      StatisticItem? streams,
      StatisticItem? bids,
      @JsonKey(name: 'sold_products') StatisticItem? soldProducts,
      StatisticItem? participants,
      @JsonKey(name: 'max_viewers') StatisticItem? maxViewers,
      @JsonKey(name: 'auction_winners') AuctionWinners? auctionWinners});

  @override
  $StatisticItemCopyWith<$Res>? get revenue;
  @override
  $StatisticItemCopyWith<$Res>? get streams;
  @override
  $StatisticItemCopyWith<$Res>? get bids;
  @override
  $StatisticItemCopyWith<$Res>? get soldProducts;
  @override
  $StatisticItemCopyWith<$Res>? get participants;
  @override
  $StatisticItemCopyWith<$Res>? get maxViewers;
  @override
  $AuctionWinnersCopyWith<$Res>? get auctionWinners;
}

/// @nodoc
class __$$StatisticsDataImplCopyWithImpl<$Res>
    extends _$StatisticsDataCopyWithImpl<$Res, _$StatisticsDataImpl>
    implements _$$StatisticsDataImplCopyWith<$Res> {
  __$$StatisticsDataImplCopyWithImpl(
      _$StatisticsDataImpl _value, $Res Function(_$StatisticsDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of StatisticsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? revenue = freezed,
    Object? streams = freezed,
    Object? bids = freezed,
    Object? soldProducts = freezed,
    Object? participants = freezed,
    Object? maxViewers = freezed,
    Object? auctionWinners = freezed,
  }) {
    return _then(_$StatisticsDataImpl(
      revenue: freezed == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as StatisticItem?,
      streams: freezed == streams
          ? _value.streams
          : streams // ignore: cast_nullable_to_non_nullable
              as StatisticItem?,
      bids: freezed == bids
          ? _value.bids
          : bids // ignore: cast_nullable_to_non_nullable
              as StatisticItem?,
      soldProducts: freezed == soldProducts
          ? _value.soldProducts
          : soldProducts // ignore: cast_nullable_to_non_nullable
              as StatisticItem?,
      participants: freezed == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as StatisticItem?,
      maxViewers: freezed == maxViewers
          ? _value.maxViewers
          : maxViewers // ignore: cast_nullable_to_non_nullable
              as StatisticItem?,
      auctionWinners: freezed == auctionWinners
          ? _value.auctionWinners
          : auctionWinners // ignore: cast_nullable_to_non_nullable
              as AuctionWinners?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatisticsDataImpl implements _StatisticsData {
  const _$StatisticsDataImpl(
      {this.revenue,
      this.streams,
      this.bids,
      @JsonKey(name: 'sold_products') this.soldProducts,
      this.participants,
      @JsonKey(name: 'max_viewers') this.maxViewers,
      @JsonKey(name: 'auction_winners') this.auctionWinners});

  factory _$StatisticsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatisticsDataImplFromJson(json);

  @override
  final StatisticItem? revenue;
  @override
  final StatisticItem? streams;
  @override
  final StatisticItem? bids;
  @override
  @JsonKey(name: 'sold_products')
  final StatisticItem? soldProducts;
  @override
  final StatisticItem? participants;
  @override
  @JsonKey(name: 'max_viewers')
  final StatisticItem? maxViewers;
  @override
  @JsonKey(name: 'auction_winners')
  final AuctionWinners? auctionWinners;

  @override
  String toString() {
    return 'StatisticsData(revenue: $revenue, streams: $streams, bids: $bids, soldProducts: $soldProducts, participants: $participants, maxViewers: $maxViewers, auctionWinners: $auctionWinners)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatisticsDataImpl &&
            (identical(other.revenue, revenue) || other.revenue == revenue) &&
            (identical(other.streams, streams) || other.streams == streams) &&
            (identical(other.bids, bids) || other.bids == bids) &&
            (identical(other.soldProducts, soldProducts) ||
                other.soldProducts == soldProducts) &&
            (identical(other.participants, participants) ||
                other.participants == participants) &&
            (identical(other.maxViewers, maxViewers) ||
                other.maxViewers == maxViewers) &&
            (identical(other.auctionWinners, auctionWinners) ||
                other.auctionWinners == auctionWinners));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, revenue, streams, bids,
      soldProducts, participants, maxViewers, auctionWinners);

  /// Create a copy of StatisticsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatisticsDataImplCopyWith<_$StatisticsDataImpl> get copyWith =>
      __$$StatisticsDataImplCopyWithImpl<_$StatisticsDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatisticsDataImplToJson(
      this,
    );
  }
}

abstract class _StatisticsData implements StatisticsData {
  const factory _StatisticsData(
      {final StatisticItem? revenue,
      final StatisticItem? streams,
      final StatisticItem? bids,
      @JsonKey(name: 'sold_products') final StatisticItem? soldProducts,
      final StatisticItem? participants,
      @JsonKey(name: 'max_viewers') final StatisticItem? maxViewers,
      @JsonKey(name: 'auction_winners')
      final AuctionWinners? auctionWinners}) = _$StatisticsDataImpl;

  factory _StatisticsData.fromJson(Map<String, dynamic> json) =
      _$StatisticsDataImpl.fromJson;

  @override
  StatisticItem? get revenue;
  @override
  StatisticItem? get streams;
  @override
  StatisticItem? get bids;
  @override
  @JsonKey(name: 'sold_products')
  StatisticItem? get soldProducts;
  @override
  StatisticItem? get participants;
  @override
  @JsonKey(name: 'max_viewers')
  StatisticItem? get maxViewers;
  @override
  @JsonKey(name: 'auction_winners')
  AuctionWinners? get auctionWinners;

  /// Create a copy of StatisticsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatisticsDataImplCopyWith<_$StatisticsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StatisticItem _$StatisticItemFromJson(Map<String, dynamic> json) {
  return _StatisticItem.fromJson(json);
}

/// @nodoc
mixin _$StatisticItem {
  String? get total => throw _privateConstructorUsedError;
  List<StatisticDetail>? get details => throw _privateConstructorUsedError;

  /// Serializes this StatisticItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StatisticItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatisticItemCopyWith<StatisticItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticItemCopyWith<$Res> {
  factory $StatisticItemCopyWith(
          StatisticItem value, $Res Function(StatisticItem) then) =
      _$StatisticItemCopyWithImpl<$Res, StatisticItem>;
  @useResult
  $Res call({String? total, List<StatisticDetail>? details});
}

/// @nodoc
class _$StatisticItemCopyWithImpl<$Res, $Val extends StatisticItem>
    implements $StatisticItemCopyWith<$Res> {
  _$StatisticItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatisticItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? details = freezed,
  }) {
    return _then(_value.copyWith(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<StatisticDetail>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatisticItemImplCopyWith<$Res>
    implements $StatisticItemCopyWith<$Res> {
  factory _$$StatisticItemImplCopyWith(
          _$StatisticItemImpl value, $Res Function(_$StatisticItemImpl) then) =
      __$$StatisticItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? total, List<StatisticDetail>? details});
}

/// @nodoc
class __$$StatisticItemImplCopyWithImpl<$Res>
    extends _$StatisticItemCopyWithImpl<$Res, _$StatisticItemImpl>
    implements _$$StatisticItemImplCopyWith<$Res> {
  __$$StatisticItemImplCopyWithImpl(
      _$StatisticItemImpl _value, $Res Function(_$StatisticItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of StatisticItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? details = freezed,
  }) {
    return _then(_$StatisticItemImpl(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<StatisticDetail>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatisticItemImpl implements _StatisticItem {
  const _$StatisticItemImpl({this.total, final List<StatisticDetail>? details})
      : _details = details;

  factory _$StatisticItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatisticItemImplFromJson(json);

  @override
  final String? total;
  final List<StatisticDetail>? _details;
  @override
  List<StatisticDetail>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'StatisticItem(total: $total, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatisticItemImpl &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, total, const DeepCollectionEquality().hash(_details));

  /// Create a copy of StatisticItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatisticItemImplCopyWith<_$StatisticItemImpl> get copyWith =>
      __$$StatisticItemImplCopyWithImpl<_$StatisticItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatisticItemImplToJson(
      this,
    );
  }
}

abstract class _StatisticItem implements StatisticItem {
  const factory _StatisticItem(
      {final String? total,
      final List<StatisticDetail>? details}) = _$StatisticItemImpl;

  factory _StatisticItem.fromJson(Map<String, dynamic> json) =
      _$StatisticItemImpl.fromJson;

  @override
  String? get total;
  @override
  List<StatisticDetail>? get details;

  /// Create a copy of StatisticItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatisticItemImplCopyWith<_$StatisticItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StatisticDetail _$StatisticDetailFromJson(Map<String, dynamic> json) {
  return _StatisticDetail.fromJson(json);
}

/// @nodoc
mixin _$StatisticDetail {
  String? get date => throw _privateConstructorUsedError;
  int? get value => throw _privateConstructorUsedError;

  /// Serializes this StatisticDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StatisticDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatisticDetailCopyWith<StatisticDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticDetailCopyWith<$Res> {
  factory $StatisticDetailCopyWith(
          StatisticDetail value, $Res Function(StatisticDetail) then) =
      _$StatisticDetailCopyWithImpl<$Res, StatisticDetail>;
  @useResult
  $Res call({String? date, int? value});
}

/// @nodoc
class _$StatisticDetailCopyWithImpl<$Res, $Val extends StatisticDetail>
    implements $StatisticDetailCopyWith<$Res> {
  _$StatisticDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatisticDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatisticDetailImplCopyWith<$Res>
    implements $StatisticDetailCopyWith<$Res> {
  factory _$$StatisticDetailImplCopyWith(_$StatisticDetailImpl value,
          $Res Function(_$StatisticDetailImpl) then) =
      __$$StatisticDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? date, int? value});
}

/// @nodoc
class __$$StatisticDetailImplCopyWithImpl<$Res>
    extends _$StatisticDetailCopyWithImpl<$Res, _$StatisticDetailImpl>
    implements _$$StatisticDetailImplCopyWith<$Res> {
  __$$StatisticDetailImplCopyWithImpl(
      _$StatisticDetailImpl _value, $Res Function(_$StatisticDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of StatisticDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? value = freezed,
  }) {
    return _then(_$StatisticDetailImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatisticDetailImpl implements _StatisticDetail {
  const _$StatisticDetailImpl({this.date, this.value});

  factory _$StatisticDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatisticDetailImplFromJson(json);

  @override
  final String? date;
  @override
  final int? value;

  @override
  String toString() {
    return 'StatisticDetail(date: $date, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatisticDetailImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, value);

  /// Create a copy of StatisticDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatisticDetailImplCopyWith<_$StatisticDetailImpl> get copyWith =>
      __$$StatisticDetailImplCopyWithImpl<_$StatisticDetailImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatisticDetailImplToJson(
      this,
    );
  }
}

abstract class _StatisticDetail implements StatisticDetail {
  const factory _StatisticDetail({final String? date, final int? value}) =
      _$StatisticDetailImpl;

  factory _StatisticDetail.fromJson(Map<String, dynamic> json) =
      _$StatisticDetailImpl.fromJson;

  @override
  String? get date;
  @override
  int? get value;

  /// Create a copy of StatisticDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatisticDetailImplCopyWith<_$StatisticDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AuctionWinners _$AuctionWinnersFromJson(Map<String, dynamic> json) {
  return _AuctionWinners.fromJson(json);
}

/// @nodoc
mixin _$AuctionWinners {
  @JsonKey(name: 'total_unique')
  String? get totalUnique => throw _privateConstructorUsedError;
  @JsonKey(name: 'lots_won_total')
  String? get lotsWonTotal => throw _privateConstructorUsedError;
  List<StatisticDetail>? get details => throw _privateConstructorUsedError;

  /// Serializes this AuctionWinners to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuctionWinners
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuctionWinnersCopyWith<AuctionWinners> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuctionWinnersCopyWith<$Res> {
  factory $AuctionWinnersCopyWith(
          AuctionWinners value, $Res Function(AuctionWinners) then) =
      _$AuctionWinnersCopyWithImpl<$Res, AuctionWinners>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_unique') String? totalUnique,
      @JsonKey(name: 'lots_won_total') String? lotsWonTotal,
      List<StatisticDetail>? details});
}

/// @nodoc
class _$AuctionWinnersCopyWithImpl<$Res, $Val extends AuctionWinners>
    implements $AuctionWinnersCopyWith<$Res> {
  _$AuctionWinnersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuctionWinners
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalUnique = freezed,
    Object? lotsWonTotal = freezed,
    Object? details = freezed,
  }) {
    return _then(_value.copyWith(
      totalUnique: freezed == totalUnique
          ? _value.totalUnique
          : totalUnique // ignore: cast_nullable_to_non_nullable
              as String?,
      lotsWonTotal: freezed == lotsWonTotal
          ? _value.lotsWonTotal
          : lotsWonTotal // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<StatisticDetail>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuctionWinnersImplCopyWith<$Res>
    implements $AuctionWinnersCopyWith<$Res> {
  factory _$$AuctionWinnersImplCopyWith(_$AuctionWinnersImpl value,
          $Res Function(_$AuctionWinnersImpl) then) =
      __$$AuctionWinnersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_unique') String? totalUnique,
      @JsonKey(name: 'lots_won_total') String? lotsWonTotal,
      List<StatisticDetail>? details});
}

/// @nodoc
class __$$AuctionWinnersImplCopyWithImpl<$Res>
    extends _$AuctionWinnersCopyWithImpl<$Res, _$AuctionWinnersImpl>
    implements _$$AuctionWinnersImplCopyWith<$Res> {
  __$$AuctionWinnersImplCopyWithImpl(
      _$AuctionWinnersImpl _value, $Res Function(_$AuctionWinnersImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuctionWinners
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalUnique = freezed,
    Object? lotsWonTotal = freezed,
    Object? details = freezed,
  }) {
    return _then(_$AuctionWinnersImpl(
      totalUnique: freezed == totalUnique
          ? _value.totalUnique
          : totalUnique // ignore: cast_nullable_to_non_nullable
              as String?,
      lotsWonTotal: freezed == lotsWonTotal
          ? _value.lotsWonTotal
          : lotsWonTotal // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<StatisticDetail>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuctionWinnersImpl implements _AuctionWinners {
  const _$AuctionWinnersImpl(
      {@JsonKey(name: 'total_unique') this.totalUnique,
      @JsonKey(name: 'lots_won_total') this.lotsWonTotal,
      final List<StatisticDetail>? details})
      : _details = details;

  factory _$AuctionWinnersImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuctionWinnersImplFromJson(json);

  @override
  @JsonKey(name: 'total_unique')
  final String? totalUnique;
  @override
  @JsonKey(name: 'lots_won_total')
  final String? lotsWonTotal;
  final List<StatisticDetail>? _details;
  @override
  List<StatisticDetail>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AuctionWinners(totalUnique: $totalUnique, lotsWonTotal: $lotsWonTotal, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuctionWinnersImpl &&
            (identical(other.totalUnique, totalUnique) ||
                other.totalUnique == totalUnique) &&
            (identical(other.lotsWonTotal, lotsWonTotal) ||
                other.lotsWonTotal == lotsWonTotal) &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalUnique, lotsWonTotal,
      const DeepCollectionEquality().hash(_details));

  /// Create a copy of AuctionWinners
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuctionWinnersImplCopyWith<_$AuctionWinnersImpl> get copyWith =>
      __$$AuctionWinnersImplCopyWithImpl<_$AuctionWinnersImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuctionWinnersImplToJson(
      this,
    );
  }
}

abstract class _AuctionWinners implements AuctionWinners {
  const factory _AuctionWinners(
      {@JsonKey(name: 'total_unique') final String? totalUnique,
      @JsonKey(name: 'lots_won_total') final String? lotsWonTotal,
      final List<StatisticDetail>? details}) = _$AuctionWinnersImpl;

  factory _AuctionWinners.fromJson(Map<String, dynamic> json) =
      _$AuctionWinnersImpl.fromJson;

  @override
  @JsonKey(name: 'total_unique')
  String? get totalUnique;
  @override
  @JsonKey(name: 'lots_won_total')
  String? get lotsWonTotal;
  @override
  List<StatisticDetail>? get details;

  /// Create a copy of AuctionWinners
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuctionWinnersImplCopyWith<_$AuctionWinnersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
