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

/// @nodoc
mixin _$StatisticsModel {
  String get period => throw _privateConstructorUsedError;
  String get filter => throw _privateConstructorUsedError;
  String get startDate => throw _privateConstructorUsedError;
  String get endDate => throw _privateConstructorUsedError;
  StatisticsData get statistics => throw _privateConstructorUsedError;

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
      {String period,
      String filter,
      String startDate,
      String endDate,
      StatisticsData statistics});

  $StatisticsDataCopyWith<$Res> get statistics;
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
    Object? period = null,
    Object? filter = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? statistics = null,
  }) {
    return _then(_value.copyWith(
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      statistics: null == statistics
          ? _value.statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as StatisticsData,
    ) as $Val);
  }

  /// Create a copy of StatisticsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatisticsDataCopyWith<$Res> get statistics {
    return $StatisticsDataCopyWith<$Res>(_value.statistics, (value) {
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
      {String period,
      String filter,
      String startDate,
      String endDate,
      StatisticsData statistics});

  @override
  $StatisticsDataCopyWith<$Res> get statistics;
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
    Object? period = null,
    Object? filter = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? statistics = null,
  }) {
    return _then(_$StatisticsModelImpl(
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      statistics: null == statistics
          ? _value.statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as StatisticsData,
    ));
  }
}

/// @nodoc

class _$StatisticsModelImpl implements _StatisticsModel {
  const _$StatisticsModelImpl(
      {required this.period,
      required this.filter,
      required this.startDate,
      required this.endDate,
      required this.statistics});

  @override
  final String period;
  @override
  final String filter;
  @override
  final String startDate;
  @override
  final String endDate;
  @override
  final StatisticsData statistics;

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
}

abstract class _StatisticsModel implements StatisticsModel {
  const factory _StatisticsModel(
      {required final String period,
      required final String filter,
      required final String startDate,
      required final String endDate,
      required final StatisticsData statistics}) = _$StatisticsModelImpl;

  @override
  String get period;
  @override
  String get filter;
  @override
  String get startDate;
  @override
  String get endDate;
  @override
  StatisticsData get statistics;

  /// Create a copy of StatisticsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatisticsModelImplCopyWith<_$StatisticsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StatisticsData {
  StatisticItem get revenue => throw _privateConstructorUsedError;
  StatisticItem get streams => throw _privateConstructorUsedError;
  StatisticItem get bids => throw _privateConstructorUsedError;
  StatisticItem get soldProducts => throw _privateConstructorUsedError;

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
      {StatisticItem revenue,
      StatisticItem streams,
      StatisticItem bids,
      StatisticItem soldProducts});

  $StatisticItemCopyWith<$Res> get revenue;
  $StatisticItemCopyWith<$Res> get streams;
  $StatisticItemCopyWith<$Res> get bids;
  $StatisticItemCopyWith<$Res> get soldProducts;
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
    Object? revenue = null,
    Object? streams = null,
    Object? bids = null,
    Object? soldProducts = null,
  }) {
    return _then(_value.copyWith(
      revenue: null == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as StatisticItem,
      streams: null == streams
          ? _value.streams
          : streams // ignore: cast_nullable_to_non_nullable
              as StatisticItem,
      bids: null == bids
          ? _value.bids
          : bids // ignore: cast_nullable_to_non_nullable
              as StatisticItem,
      soldProducts: null == soldProducts
          ? _value.soldProducts
          : soldProducts // ignore: cast_nullable_to_non_nullable
              as StatisticItem,
    ) as $Val);
  }

  /// Create a copy of StatisticsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatisticItemCopyWith<$Res> get revenue {
    return $StatisticItemCopyWith<$Res>(_value.revenue, (value) {
      return _then(_value.copyWith(revenue: value) as $Val);
    });
  }

  /// Create a copy of StatisticsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatisticItemCopyWith<$Res> get streams {
    return $StatisticItemCopyWith<$Res>(_value.streams, (value) {
      return _then(_value.copyWith(streams: value) as $Val);
    });
  }

  /// Create a copy of StatisticsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatisticItemCopyWith<$Res> get bids {
    return $StatisticItemCopyWith<$Res>(_value.bids, (value) {
      return _then(_value.copyWith(bids: value) as $Val);
    });
  }

  /// Create a copy of StatisticsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatisticItemCopyWith<$Res> get soldProducts {
    return $StatisticItemCopyWith<$Res>(_value.soldProducts, (value) {
      return _then(_value.copyWith(soldProducts: value) as $Val);
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
      {StatisticItem revenue,
      StatisticItem streams,
      StatisticItem bids,
      StatisticItem soldProducts});

  @override
  $StatisticItemCopyWith<$Res> get revenue;
  @override
  $StatisticItemCopyWith<$Res> get streams;
  @override
  $StatisticItemCopyWith<$Res> get bids;
  @override
  $StatisticItemCopyWith<$Res> get soldProducts;
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
    Object? revenue = null,
    Object? streams = null,
    Object? bids = null,
    Object? soldProducts = null,
  }) {
    return _then(_$StatisticsDataImpl(
      revenue: null == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as StatisticItem,
      streams: null == streams
          ? _value.streams
          : streams // ignore: cast_nullable_to_non_nullable
              as StatisticItem,
      bids: null == bids
          ? _value.bids
          : bids // ignore: cast_nullable_to_non_nullable
              as StatisticItem,
      soldProducts: null == soldProducts
          ? _value.soldProducts
          : soldProducts // ignore: cast_nullable_to_non_nullable
              as StatisticItem,
    ));
  }
}

/// @nodoc

class _$StatisticsDataImpl implements _StatisticsData {
  const _$StatisticsDataImpl(
      {required this.revenue,
      required this.streams,
      required this.bids,
      required this.soldProducts});

  @override
  final StatisticItem revenue;
  @override
  final StatisticItem streams;
  @override
  final StatisticItem bids;
  @override
  final StatisticItem soldProducts;

  @override
  String toString() {
    return 'StatisticsData(revenue: $revenue, streams: $streams, bids: $bids, soldProducts: $soldProducts)';
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
                other.soldProducts == soldProducts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, revenue, streams, bids, soldProducts);

  /// Create a copy of StatisticsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatisticsDataImplCopyWith<_$StatisticsDataImpl> get copyWith =>
      __$$StatisticsDataImplCopyWithImpl<_$StatisticsDataImpl>(
          this, _$identity);
}

abstract class _StatisticsData implements StatisticsData {
  const factory _StatisticsData(
      {required final StatisticItem revenue,
      required final StatisticItem streams,
      required final StatisticItem bids,
      required final StatisticItem soldProducts}) = _$StatisticsDataImpl;

  @override
  StatisticItem get revenue;
  @override
  StatisticItem get streams;
  @override
  StatisticItem get bids;
  @override
  StatisticItem get soldProducts;

  /// Create a copy of StatisticsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatisticsDataImplCopyWith<_$StatisticsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StatisticItem {
  String get total => throw _privateConstructorUsedError;
  List<StatisticDetail> get details => throw _privateConstructorUsedError;

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
  $Res call({String total, List<StatisticDetail> details});
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
    Object? total = null,
    Object? details = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<StatisticDetail>,
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
  $Res call({String total, List<StatisticDetail> details});
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
    Object? total = null,
    Object? details = null,
  }) {
    return _then(_$StatisticItemImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<StatisticDetail>,
    ));
  }
}

/// @nodoc

class _$StatisticItemImpl implements _StatisticItem {
  const _$StatisticItemImpl(
      {required this.total, required final List<StatisticDetail> details})
      : _details = details;

  @override
  final String total;
  final List<StatisticDetail> _details;
  @override
  List<StatisticDetail> get details {
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_details);
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
}

abstract class _StatisticItem implements StatisticItem {
  const factory _StatisticItem(
      {required final String total,
      required final List<StatisticDetail> details}) = _$StatisticItemImpl;

  @override
  String get total;
  @override
  List<StatisticDetail> get details;

  /// Create a copy of StatisticItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatisticItemImplCopyWith<_$StatisticItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StatisticDetail {
  String get date => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;

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
  $Res call({String date, int value});
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
    Object? date = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
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
  $Res call({String date, int value});
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
    Object? date = null,
    Object? value = null,
  }) {
    return _then(_$StatisticDetailImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StatisticDetailImpl implements _StatisticDetail {
  const _$StatisticDetailImpl({required this.date, required this.value});

  @override
  final String date;
  @override
  final int value;

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
}

abstract class _StatisticDetail implements StatisticDetail {
  const factory _StatisticDetail(
      {required final String date,
      required final int value}) = _$StatisticDetailImpl;

  @override
  String get date;
  @override
  int get value;

  /// Create a copy of StatisticDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatisticDetailImplCopyWith<_$StatisticDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
