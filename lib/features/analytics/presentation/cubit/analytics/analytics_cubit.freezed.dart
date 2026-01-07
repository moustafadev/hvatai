// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analytics_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AnalyticsState {
  int get selectedTabIndex =>
      throw _privateConstructorUsedError; // 0 = all, 1 = streams
  int get selectedPeriodIndex =>
      throw _privateConstructorUsedError; // 0 = week, 1 = month, 2 = quarter, 3 = year
  bool get isLoading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  StatisticsModel? get statistics => throw _privateConstructorUsedError;

  /// Create a copy of AnalyticsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnalyticsStateCopyWith<AnalyticsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyticsStateCopyWith<$Res> {
  factory $AnalyticsStateCopyWith(
          AnalyticsState value, $Res Function(AnalyticsState) then) =
      _$AnalyticsStateCopyWithImpl<$Res, AnalyticsState>;
  @useResult
  $Res call(
      {int selectedTabIndex,
      int selectedPeriodIndex,
      bool isLoading,
      String errorMessage,
      StatisticsModel? statistics});

  $StatisticsModelCopyWith<$Res>? get statistics;
}

/// @nodoc
class _$AnalyticsStateCopyWithImpl<$Res, $Val extends AnalyticsState>
    implements $AnalyticsStateCopyWith<$Res> {
  _$AnalyticsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnalyticsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTabIndex = null,
    Object? selectedPeriodIndex = null,
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? statistics = freezed,
  }) {
    return _then(_value.copyWith(
      selectedTabIndex: null == selectedTabIndex
          ? _value.selectedTabIndex
          : selectedTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectedPeriodIndex: null == selectedPeriodIndex
          ? _value.selectedPeriodIndex
          : selectedPeriodIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      statistics: freezed == statistics
          ? _value.statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as StatisticsModel?,
    ) as $Val);
  }

  /// Create a copy of AnalyticsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatisticsModelCopyWith<$Res>? get statistics {
    if (_value.statistics == null) {
      return null;
    }

    return $StatisticsModelCopyWith<$Res>(_value.statistics!, (value) {
      return _then(_value.copyWith(statistics: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AnalyticsStateImplCopyWith<$Res>
    implements $AnalyticsStateCopyWith<$Res> {
  factory _$$AnalyticsStateImplCopyWith(_$AnalyticsStateImpl value,
          $Res Function(_$AnalyticsStateImpl) then) =
      __$$AnalyticsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int selectedTabIndex,
      int selectedPeriodIndex,
      bool isLoading,
      String errorMessage,
      StatisticsModel? statistics});

  @override
  $StatisticsModelCopyWith<$Res>? get statistics;
}

/// @nodoc
class __$$AnalyticsStateImplCopyWithImpl<$Res>
    extends _$AnalyticsStateCopyWithImpl<$Res, _$AnalyticsStateImpl>
    implements _$$AnalyticsStateImplCopyWith<$Res> {
  __$$AnalyticsStateImplCopyWithImpl(
      _$AnalyticsStateImpl _value, $Res Function(_$AnalyticsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnalyticsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTabIndex = null,
    Object? selectedPeriodIndex = null,
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? statistics = freezed,
  }) {
    return _then(_$AnalyticsStateImpl(
      selectedTabIndex: null == selectedTabIndex
          ? _value.selectedTabIndex
          : selectedTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectedPeriodIndex: null == selectedPeriodIndex
          ? _value.selectedPeriodIndex
          : selectedPeriodIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      statistics: freezed == statistics
          ? _value.statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as StatisticsModel?,
    ));
  }
}

/// @nodoc

class _$AnalyticsStateImpl implements _AnalyticsState {
  const _$AnalyticsStateImpl(
      {this.selectedTabIndex = 0,
      this.selectedPeriodIndex = 0,
      this.isLoading = false,
      this.errorMessage = '',
      this.statistics});

  @override
  @JsonKey()
  final int selectedTabIndex;
// 0 = all, 1 = streams
  @override
  @JsonKey()
  final int selectedPeriodIndex;
// 0 = week, 1 = month, 2 = quarter, 3 = year
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  final StatisticsModel? statistics;

  @override
  String toString() {
    return 'AnalyticsState(selectedTabIndex: $selectedTabIndex, selectedPeriodIndex: $selectedPeriodIndex, isLoading: $isLoading, errorMessage: $errorMessage, statistics: $statistics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalyticsStateImpl &&
            (identical(other.selectedTabIndex, selectedTabIndex) ||
                other.selectedTabIndex == selectedTabIndex) &&
            (identical(other.selectedPeriodIndex, selectedPeriodIndex) ||
                other.selectedPeriodIndex == selectedPeriodIndex) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.statistics, statistics) ||
                other.statistics == statistics));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedTabIndex,
      selectedPeriodIndex, isLoading, errorMessage, statistics);

  /// Create a copy of AnalyticsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalyticsStateImplCopyWith<_$AnalyticsStateImpl> get copyWith =>
      __$$AnalyticsStateImplCopyWithImpl<_$AnalyticsStateImpl>(
          this, _$identity);
}

abstract class _AnalyticsState implements AnalyticsState {
  const factory _AnalyticsState(
      {final int selectedTabIndex,
      final int selectedPeriodIndex,
      final bool isLoading,
      final String errorMessage,
      final StatisticsModel? statistics}) = _$AnalyticsStateImpl;

  @override
  int get selectedTabIndex; // 0 = all, 1 = streams
  @override
  int get selectedPeriodIndex; // 0 = week, 1 = month, 2 = quarter, 3 = year
  @override
  bool get isLoading;
  @override
  String get errorMessage;
  @override
  StatisticsModel? get statistics;

  /// Create a copy of AnalyticsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnalyticsStateImplCopyWith<_$AnalyticsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
