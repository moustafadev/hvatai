// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_stream_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateStreamModel _$CreateStreamModelFromJson(Map<String, dynamic> json) {
  return _CreateStreamModel.fromJson(json);
}

/// @nodoc
mixin _$CreateStreamModel {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'scheduled_at', includeIfNull: false)
  DateTime? get scheduledAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_recording_enabled')
  bool get isRecordingEnabled => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_public')
  bool get isPublic => throw _privateConstructorUsedError;
  @JsonKey(name: 'enable_comments')
  bool get enableComments => throw _privateConstructorUsedError;
  @JsonKey(name: 'enable_bidding')
  bool get enableBidding => throw _privateConstructorUsedError;
  @JsonKey(name: 'minimum_bid_increment')
  double get minimumBidIncrement => throw _privateConstructorUsedError;
  @JsonKey(name: 'auto_delete_after_end')
  bool get autoDeleteAfterEnd => throw _privateConstructorUsedError;
  @JsonKey(name: 'auto_delete_hours')
  int get autoDeleteHours => throw _privateConstructorUsedError;
  @JsonKey(name: 'save_recording')
  bool get saveRecording => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_ids')
  List<int> get productIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_ids')
  List<int> get categoryIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'bid_duration_seconds')
  int get bidDurationSeconds => throw _privateConstructorUsedError;

  /// Serializes this CreateStreamModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateStreamModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateStreamModelCopyWith<CreateStreamModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateStreamModelCopyWith<$Res> {
  factory $CreateStreamModelCopyWith(
          CreateStreamModel value, $Res Function(CreateStreamModel) then) =
      _$CreateStreamModelCopyWithImpl<$Res, CreateStreamModel>;
  @useResult
  $Res call(
      {String title,
      String description,
      @JsonKey(name: 'scheduled_at', includeIfNull: false)
      DateTime? scheduledAt,
      @JsonKey(name: 'is_recording_enabled') bool isRecordingEnabled,
      @JsonKey(name: 'is_public') bool isPublic,
      @JsonKey(name: 'enable_comments') bool enableComments,
      @JsonKey(name: 'enable_bidding') bool enableBidding,
      @JsonKey(name: 'minimum_bid_increment') double minimumBidIncrement,
      @JsonKey(name: 'auto_delete_after_end') bool autoDeleteAfterEnd,
      @JsonKey(name: 'auto_delete_hours') int autoDeleteHours,
      @JsonKey(name: 'save_recording') bool saveRecording,
      @JsonKey(name: 'product_ids') List<int> productIds,
      @JsonKey(name: 'category_ids') List<int> categoryIds,
      @JsonKey(name: 'bid_duration_seconds') int bidDurationSeconds});
}

/// @nodoc
class _$CreateStreamModelCopyWithImpl<$Res, $Val extends CreateStreamModel>
    implements $CreateStreamModelCopyWith<$Res> {
  _$CreateStreamModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateStreamModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? scheduledAt = freezed,
    Object? isRecordingEnabled = null,
    Object? isPublic = null,
    Object? enableComments = null,
    Object? enableBidding = null,
    Object? minimumBidIncrement = null,
    Object? autoDeleteAfterEnd = null,
    Object? autoDeleteHours = null,
    Object? saveRecording = null,
    Object? productIds = null,
    Object? categoryIds = null,
    Object? bidDurationSeconds = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      scheduledAt: freezed == scheduledAt
          ? _value.scheduledAt
          : scheduledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isRecordingEnabled: null == isRecordingEnabled
          ? _value.isRecordingEnabled
          : isRecordingEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      enableComments: null == enableComments
          ? _value.enableComments
          : enableComments // ignore: cast_nullable_to_non_nullable
              as bool,
      enableBidding: null == enableBidding
          ? _value.enableBidding
          : enableBidding // ignore: cast_nullable_to_non_nullable
              as bool,
      minimumBidIncrement: null == minimumBidIncrement
          ? _value.minimumBidIncrement
          : minimumBidIncrement // ignore: cast_nullable_to_non_nullable
              as double,
      autoDeleteAfterEnd: null == autoDeleteAfterEnd
          ? _value.autoDeleteAfterEnd
          : autoDeleteAfterEnd // ignore: cast_nullable_to_non_nullable
              as bool,
      autoDeleteHours: null == autoDeleteHours
          ? _value.autoDeleteHours
          : autoDeleteHours // ignore: cast_nullable_to_non_nullable
              as int,
      saveRecording: null == saveRecording
          ? _value.saveRecording
          : saveRecording // ignore: cast_nullable_to_non_nullable
              as bool,
      productIds: null == productIds
          ? _value.productIds
          : productIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      categoryIds: null == categoryIds
          ? _value.categoryIds
          : categoryIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      bidDurationSeconds: null == bidDurationSeconds
          ? _value.bidDurationSeconds
          : bidDurationSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateStreamModelImplCopyWith<$Res>
    implements $CreateStreamModelCopyWith<$Res> {
  factory _$$CreateStreamModelImplCopyWith(_$CreateStreamModelImpl value,
          $Res Function(_$CreateStreamModelImpl) then) =
      __$$CreateStreamModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      @JsonKey(name: 'scheduled_at', includeIfNull: false)
      DateTime? scheduledAt,
      @JsonKey(name: 'is_recording_enabled') bool isRecordingEnabled,
      @JsonKey(name: 'is_public') bool isPublic,
      @JsonKey(name: 'enable_comments') bool enableComments,
      @JsonKey(name: 'enable_bidding') bool enableBidding,
      @JsonKey(name: 'minimum_bid_increment') double minimumBidIncrement,
      @JsonKey(name: 'auto_delete_after_end') bool autoDeleteAfterEnd,
      @JsonKey(name: 'auto_delete_hours') int autoDeleteHours,
      @JsonKey(name: 'save_recording') bool saveRecording,
      @JsonKey(name: 'product_ids') List<int> productIds,
      @JsonKey(name: 'category_ids') List<int> categoryIds,
      @JsonKey(name: 'bid_duration_seconds') int bidDurationSeconds});
}

/// @nodoc
class __$$CreateStreamModelImplCopyWithImpl<$Res>
    extends _$CreateStreamModelCopyWithImpl<$Res, _$CreateStreamModelImpl>
    implements _$$CreateStreamModelImplCopyWith<$Res> {
  __$$CreateStreamModelImplCopyWithImpl(_$CreateStreamModelImpl _value,
      $Res Function(_$CreateStreamModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateStreamModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? scheduledAt = freezed,
    Object? isRecordingEnabled = null,
    Object? isPublic = null,
    Object? enableComments = null,
    Object? enableBidding = null,
    Object? minimumBidIncrement = null,
    Object? autoDeleteAfterEnd = null,
    Object? autoDeleteHours = null,
    Object? saveRecording = null,
    Object? productIds = null,
    Object? categoryIds = null,
    Object? bidDurationSeconds = null,
  }) {
    return _then(_$CreateStreamModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      scheduledAt: freezed == scheduledAt
          ? _value.scheduledAt
          : scheduledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isRecordingEnabled: null == isRecordingEnabled
          ? _value.isRecordingEnabled
          : isRecordingEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      enableComments: null == enableComments
          ? _value.enableComments
          : enableComments // ignore: cast_nullable_to_non_nullable
              as bool,
      enableBidding: null == enableBidding
          ? _value.enableBidding
          : enableBidding // ignore: cast_nullable_to_non_nullable
              as bool,
      minimumBidIncrement: null == minimumBidIncrement
          ? _value.minimumBidIncrement
          : minimumBidIncrement // ignore: cast_nullable_to_non_nullable
              as double,
      autoDeleteAfterEnd: null == autoDeleteAfterEnd
          ? _value.autoDeleteAfterEnd
          : autoDeleteAfterEnd // ignore: cast_nullable_to_non_nullable
              as bool,
      autoDeleteHours: null == autoDeleteHours
          ? _value.autoDeleteHours
          : autoDeleteHours // ignore: cast_nullable_to_non_nullable
              as int,
      saveRecording: null == saveRecording
          ? _value.saveRecording
          : saveRecording // ignore: cast_nullable_to_non_nullable
              as bool,
      productIds: null == productIds
          ? _value._productIds
          : productIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      categoryIds: null == categoryIds
          ? _value._categoryIds
          : categoryIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      bidDurationSeconds: null == bidDurationSeconds
          ? _value.bidDurationSeconds
          : bidDurationSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateStreamModelImpl implements _CreateStreamModel {
  const _$CreateStreamModelImpl(
      {required this.title,
      required this.description,
      @JsonKey(name: 'scheduled_at', includeIfNull: false) this.scheduledAt,
      @JsonKey(name: 'is_recording_enabled') required this.isRecordingEnabled,
      @JsonKey(name: 'is_public') required this.isPublic,
      @JsonKey(name: 'enable_comments') required this.enableComments,
      @JsonKey(name: 'enable_bidding') required this.enableBidding,
      @JsonKey(name: 'minimum_bid_increment') required this.minimumBidIncrement,
      @JsonKey(name: 'auto_delete_after_end') required this.autoDeleteAfterEnd,
      @JsonKey(name: 'auto_delete_hours') required this.autoDeleteHours,
      @JsonKey(name: 'save_recording') required this.saveRecording,
      @JsonKey(name: 'product_ids') required final List<int> productIds,
      @JsonKey(name: 'category_ids') final List<int> categoryIds = const [],
      @JsonKey(name: 'bid_duration_seconds') required this.bidDurationSeconds})
      : _productIds = productIds,
        _categoryIds = categoryIds;

  factory _$CreateStreamModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateStreamModelImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  @JsonKey(name: 'scheduled_at', includeIfNull: false)
  final DateTime? scheduledAt;
  @override
  @JsonKey(name: 'is_recording_enabled')
  final bool isRecordingEnabled;
  @override
  @JsonKey(name: 'is_public')
  final bool isPublic;
  @override
  @JsonKey(name: 'enable_comments')
  final bool enableComments;
  @override
  @JsonKey(name: 'enable_bidding')
  final bool enableBidding;
  @override
  @JsonKey(name: 'minimum_bid_increment')
  final double minimumBidIncrement;
  @override
  @JsonKey(name: 'auto_delete_after_end')
  final bool autoDeleteAfterEnd;
  @override
  @JsonKey(name: 'auto_delete_hours')
  final int autoDeleteHours;
  @override
  @JsonKey(name: 'save_recording')
  final bool saveRecording;
  final List<int> _productIds;
  @override
  @JsonKey(name: 'product_ids')
  List<int> get productIds {
    if (_productIds is EqualUnmodifiableListView) return _productIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productIds);
  }

  final List<int> _categoryIds;
  @override
  @JsonKey(name: 'category_ids')
  List<int> get categoryIds {
    if (_categoryIds is EqualUnmodifiableListView) return _categoryIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryIds);
  }

  @override
  @JsonKey(name: 'bid_duration_seconds')
  final int bidDurationSeconds;

  @override
  String toString() {
    return 'CreateStreamModel(title: $title, description: $description, scheduledAt: $scheduledAt, isRecordingEnabled: $isRecordingEnabled, isPublic: $isPublic, enableComments: $enableComments, enableBidding: $enableBidding, minimumBidIncrement: $minimumBidIncrement, autoDeleteAfterEnd: $autoDeleteAfterEnd, autoDeleteHours: $autoDeleteHours, saveRecording: $saveRecording, productIds: $productIds, categoryIds: $categoryIds, bidDurationSeconds: $bidDurationSeconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateStreamModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.scheduledAt, scheduledAt) ||
                other.scheduledAt == scheduledAt) &&
            (identical(other.isRecordingEnabled, isRecordingEnabled) ||
                other.isRecordingEnabled == isRecordingEnabled) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic) &&
            (identical(other.enableComments, enableComments) ||
                other.enableComments == enableComments) &&
            (identical(other.enableBidding, enableBidding) ||
                other.enableBidding == enableBidding) &&
            (identical(other.minimumBidIncrement, minimumBidIncrement) ||
                other.minimumBidIncrement == minimumBidIncrement) &&
            (identical(other.autoDeleteAfterEnd, autoDeleteAfterEnd) ||
                other.autoDeleteAfterEnd == autoDeleteAfterEnd) &&
            (identical(other.autoDeleteHours, autoDeleteHours) ||
                other.autoDeleteHours == autoDeleteHours) &&
            (identical(other.saveRecording, saveRecording) ||
                other.saveRecording == saveRecording) &&
            const DeepCollectionEquality()
                .equals(other._productIds, _productIds) &&
            const DeepCollectionEquality()
                .equals(other._categoryIds, _categoryIds) &&
            (identical(other.bidDurationSeconds, bidDurationSeconds) ||
                other.bidDurationSeconds == bidDurationSeconds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      scheduledAt,
      isRecordingEnabled,
      isPublic,
      enableComments,
      enableBidding,
      minimumBidIncrement,
      autoDeleteAfterEnd,
      autoDeleteHours,
      saveRecording,
      const DeepCollectionEquality().hash(_productIds),
      const DeepCollectionEquality().hash(_categoryIds),
      bidDurationSeconds);

  /// Create a copy of CreateStreamModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateStreamModelImplCopyWith<_$CreateStreamModelImpl> get copyWith =>
      __$$CreateStreamModelImplCopyWithImpl<_$CreateStreamModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateStreamModelImplToJson(
      this,
    );
  }
}

abstract class _CreateStreamModel implements CreateStreamModel {
  const factory _CreateStreamModel(
      {required final String title,
      required final String description,
      @JsonKey(name: 'scheduled_at', includeIfNull: false)
      final DateTime? scheduledAt,
      @JsonKey(name: 'is_recording_enabled')
      required final bool isRecordingEnabled,
      @JsonKey(name: 'is_public') required final bool isPublic,
      @JsonKey(name: 'enable_comments') required final bool enableComments,
      @JsonKey(name: 'enable_bidding') required final bool enableBidding,
      @JsonKey(name: 'minimum_bid_increment')
      required final double minimumBidIncrement,
      @JsonKey(name: 'auto_delete_after_end')
      required final bool autoDeleteAfterEnd,
      @JsonKey(name: 'auto_delete_hours') required final int autoDeleteHours,
      @JsonKey(name: 'save_recording') required final bool saveRecording,
      @JsonKey(name: 'product_ids') required final List<int> productIds,
      @JsonKey(name: 'category_ids') final List<int> categoryIds,
      @JsonKey(name: 'bid_duration_seconds')
      required final int bidDurationSeconds}) = _$CreateStreamModelImpl;

  factory _CreateStreamModel.fromJson(Map<String, dynamic> json) =
      _$CreateStreamModelImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(name: 'scheduled_at', includeIfNull: false)
  DateTime? get scheduledAt;
  @override
  @JsonKey(name: 'is_recording_enabled')
  bool get isRecordingEnabled;
  @override
  @JsonKey(name: 'is_public')
  bool get isPublic;
  @override
  @JsonKey(name: 'enable_comments')
  bool get enableComments;
  @override
  @JsonKey(name: 'enable_bidding')
  bool get enableBidding;
  @override
  @JsonKey(name: 'minimum_bid_increment')
  double get minimumBidIncrement;
  @override
  @JsonKey(name: 'auto_delete_after_end')
  bool get autoDeleteAfterEnd;
  @override
  @JsonKey(name: 'auto_delete_hours')
  int get autoDeleteHours;
  @override
  @JsonKey(name: 'save_recording')
  bool get saveRecording;
  @override
  @JsonKey(name: 'product_ids')
  List<int> get productIds;
  @override
  @JsonKey(name: 'category_ids')
  List<int> get categoryIds;
  @override
  @JsonKey(name: 'bid_duration_seconds')
  int get bidDurationSeconds;

  /// Create a copy of CreateStreamModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateStreamModelImplCopyWith<_$CreateStreamModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
