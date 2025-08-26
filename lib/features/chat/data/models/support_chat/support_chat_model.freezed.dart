// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support_chat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SupportChatModel _$SupportChatModelFromJson(Map<String, dynamic> json) {
  return _SupportChatModel.fromJson(json);
}

/// @nodoc
mixin _$SupportChatModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'participant_id')
  int? get participantId => throw _privateConstructorUsedError;
  @JsonKey(name: 'chat_type')
  String? get chatType => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'support_agent_id')
  int? get supportAgentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'support_status')
  String? get supportStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'assigned_at')
  String? get assignedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'resolved_at')
  String? get resolvedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'unread_count')
  int? get unreadCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_message')
  LastMessageModel? get lastMessage => throw _privateConstructorUsedError;

  /// Serializes this SupportChatModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupportChatModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupportChatModelCopyWith<SupportChatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportChatModelCopyWith<$Res> {
  factory $SupportChatModelCopyWith(
          SupportChatModel value, $Res Function(SupportChatModel) then) =
      _$SupportChatModelCopyWithImpl<$Res, SupportChatModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'participant_id') int? participantId,
      @JsonKey(name: 'chat_type') String? chatType,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'support_agent_id') int? supportAgentId,
      @JsonKey(name: 'support_status') String? supportStatus,
      @JsonKey(name: 'assigned_at') String? assignedAt,
      @JsonKey(name: 'resolved_at') String? resolvedAt,
      @JsonKey(name: 'unread_count') int? unreadCount,
      @JsonKey(name: 'last_message') LastMessageModel? lastMessage});

  $LastMessageModelCopyWith<$Res>? get lastMessage;
}

/// @nodoc
class _$SupportChatModelCopyWithImpl<$Res, $Val extends SupportChatModel>
    implements $SupportChatModelCopyWith<$Res> {
  _$SupportChatModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupportChatModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? participantId = freezed,
    Object? chatType = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? supportAgentId = freezed,
    Object? supportStatus = freezed,
    Object? assignedAt = freezed,
    Object? resolvedAt = freezed,
    Object? unreadCount = freezed,
    Object? lastMessage = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      participantId: freezed == participantId
          ? _value.participantId
          : participantId // ignore: cast_nullable_to_non_nullable
              as int?,
      chatType: freezed == chatType
          ? _value.chatType
          : chatType // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      supportAgentId: freezed == supportAgentId
          ? _value.supportAgentId
          : supportAgentId // ignore: cast_nullable_to_non_nullable
              as int?,
      supportStatus: freezed == supportStatus
          ? _value.supportStatus
          : supportStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      assignedAt: freezed == assignedAt
          ? _value.assignedAt
          : assignedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      resolvedAt: freezed == resolvedAt
          ? _value.resolvedAt
          : resolvedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      unreadCount: freezed == unreadCount
          ? _value.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int?,
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as LastMessageModel?,
    ) as $Val);
  }

  /// Create a copy of SupportChatModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LastMessageModelCopyWith<$Res>? get lastMessage {
    if (_value.lastMessage == null) {
      return null;
    }

    return $LastMessageModelCopyWith<$Res>(_value.lastMessage!, (value) {
      return _then(_value.copyWith(lastMessage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SupportChatModelImplCopyWith<$Res>
    implements $SupportChatModelCopyWith<$Res> {
  factory _$$SupportChatModelImplCopyWith(_$SupportChatModelImpl value,
          $Res Function(_$SupportChatModelImpl) then) =
      __$$SupportChatModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'participant_id') int? participantId,
      @JsonKey(name: 'chat_type') String? chatType,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'support_agent_id') int? supportAgentId,
      @JsonKey(name: 'support_status') String? supportStatus,
      @JsonKey(name: 'assigned_at') String? assignedAt,
      @JsonKey(name: 'resolved_at') String? resolvedAt,
      @JsonKey(name: 'unread_count') int? unreadCount,
      @JsonKey(name: 'last_message') LastMessageModel? lastMessage});

  @override
  $LastMessageModelCopyWith<$Res>? get lastMessage;
}

/// @nodoc
class __$$SupportChatModelImplCopyWithImpl<$Res>
    extends _$SupportChatModelCopyWithImpl<$Res, _$SupportChatModelImpl>
    implements _$$SupportChatModelImplCopyWith<$Res> {
  __$$SupportChatModelImplCopyWithImpl(_$SupportChatModelImpl _value,
      $Res Function(_$SupportChatModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupportChatModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? participantId = freezed,
    Object? chatType = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? supportAgentId = freezed,
    Object? supportStatus = freezed,
    Object? assignedAt = freezed,
    Object? resolvedAt = freezed,
    Object? unreadCount = freezed,
    Object? lastMessage = freezed,
  }) {
    return _then(_$SupportChatModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      participantId: freezed == participantId
          ? _value.participantId
          : participantId // ignore: cast_nullable_to_non_nullable
              as int?,
      chatType: freezed == chatType
          ? _value.chatType
          : chatType // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      supportAgentId: freezed == supportAgentId
          ? _value.supportAgentId
          : supportAgentId // ignore: cast_nullable_to_non_nullable
              as int?,
      supportStatus: freezed == supportStatus
          ? _value.supportStatus
          : supportStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      assignedAt: freezed == assignedAt
          ? _value.assignedAt
          : assignedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      resolvedAt: freezed == resolvedAt
          ? _value.resolvedAt
          : resolvedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      unreadCount: freezed == unreadCount
          ? _value.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int?,
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as LastMessageModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupportChatModelImpl implements _SupportChatModel {
  const _$SupportChatModelImpl(
      {this.id,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'participant_id') this.participantId,
      @JsonKey(name: 'chat_type') this.chatType,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'support_agent_id') this.supportAgentId,
      @JsonKey(name: 'support_status') this.supportStatus,
      @JsonKey(name: 'assigned_at') this.assignedAt,
      @JsonKey(name: 'resolved_at') this.resolvedAt,
      @JsonKey(name: 'unread_count') this.unreadCount,
      @JsonKey(name: 'last_message') this.lastMessage});

  factory _$SupportChatModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupportChatModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'participant_id')
  final int? participantId;
  @override
  @JsonKey(name: 'chat_type')
  final String? chatType;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'support_agent_id')
  final int? supportAgentId;
  @override
  @JsonKey(name: 'support_status')
  final String? supportStatus;
  @override
  @JsonKey(name: 'assigned_at')
  final String? assignedAt;
  @override
  @JsonKey(name: 'resolved_at')
  final String? resolvedAt;
  @override
  @JsonKey(name: 'unread_count')
  final int? unreadCount;
  @override
  @JsonKey(name: 'last_message')
  final LastMessageModel? lastMessage;

  @override
  String toString() {
    return 'SupportChatModel(id: $id, userId: $userId, participantId: $participantId, chatType: $chatType, createdAt: $createdAt, updatedAt: $updatedAt, supportAgentId: $supportAgentId, supportStatus: $supportStatus, assignedAt: $assignedAt, resolvedAt: $resolvedAt, unreadCount: $unreadCount, lastMessage: $lastMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportChatModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.participantId, participantId) ||
                other.participantId == participantId) &&
            (identical(other.chatType, chatType) ||
                other.chatType == chatType) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.supportAgentId, supportAgentId) ||
                other.supportAgentId == supportAgentId) &&
            (identical(other.supportStatus, supportStatus) ||
                other.supportStatus == supportStatus) &&
            (identical(other.assignedAt, assignedAt) ||
                other.assignedAt == assignedAt) &&
            (identical(other.resolvedAt, resolvedAt) ||
                other.resolvedAt == resolvedAt) &&
            (identical(other.unreadCount, unreadCount) ||
                other.unreadCount == unreadCount) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      participantId,
      chatType,
      createdAt,
      updatedAt,
      supportAgentId,
      supportStatus,
      assignedAt,
      resolvedAt,
      unreadCount,
      lastMessage);

  /// Create a copy of SupportChatModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportChatModelImplCopyWith<_$SupportChatModelImpl> get copyWith =>
      __$$SupportChatModelImplCopyWithImpl<_$SupportChatModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportChatModelImplToJson(
      this,
    );
  }
}

abstract class _SupportChatModel implements SupportChatModel {
  const factory _SupportChatModel(
          {final int? id,
          @JsonKey(name: 'user_id') final int? userId,
          @JsonKey(name: 'participant_id') final int? participantId,
          @JsonKey(name: 'chat_type') final String? chatType,
          @JsonKey(name: 'created_at') final String? createdAt,
          @JsonKey(name: 'updated_at') final String? updatedAt,
          @JsonKey(name: 'support_agent_id') final int? supportAgentId,
          @JsonKey(name: 'support_status') final String? supportStatus,
          @JsonKey(name: 'assigned_at') final String? assignedAt,
          @JsonKey(name: 'resolved_at') final String? resolvedAt,
          @JsonKey(name: 'unread_count') final int? unreadCount,
          @JsonKey(name: 'last_message') final LastMessageModel? lastMessage}) =
      _$SupportChatModelImpl;

  factory _SupportChatModel.fromJson(Map<String, dynamic> json) =
      _$SupportChatModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'participant_id')
  int? get participantId;
  @override
  @JsonKey(name: 'chat_type')
  String? get chatType;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'support_agent_id')
  int? get supportAgentId;
  @override
  @JsonKey(name: 'support_status')
  String? get supportStatus;
  @override
  @JsonKey(name: 'assigned_at')
  String? get assignedAt;
  @override
  @JsonKey(name: 'resolved_at')
  String? get resolvedAt;
  @override
  @JsonKey(name: 'unread_count')
  int? get unreadCount;
  @override
  @JsonKey(name: 'last_message')
  LastMessageModel? get lastMessage;

  /// Create a copy of SupportChatModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportChatModelImplCopyWith<_$SupportChatModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
