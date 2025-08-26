// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SendMessageModel _$SendMessageModelFromJson(Map<String, dynamic> json) {
  return _SendMessageModel.fromJson(json);
}

/// @nodoc
mixin _$SendMessageModel {
  int? get id => throw _privateConstructorUsedError;
  int? get senderId => throw _privateConstructorUsedError;
  int? get receiverId => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  int? get chatId => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  SenderModel? get sender => throw _privateConstructorUsedError;
  SenderModel? get receiver => throw _privateConstructorUsedError;
  ChatMessageModel? get chat => throw _privateConstructorUsedError;

  /// Serializes this SendMessageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SendMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SendMessageModelCopyWith<SendMessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendMessageModelCopyWith<$Res> {
  factory $SendMessageModelCopyWith(
          SendMessageModel value, $Res Function(SendMessageModel) then) =
      _$SendMessageModelCopyWithImpl<$Res, SendMessageModel>;
  @useResult
  $Res call(
      {int? id,
      int? senderId,
      int? receiverId,
      String? content,
      int? chatId,
      String? createdAt,
      String? updatedAt,
      SenderModel? sender,
      SenderModel? receiver,
      ChatMessageModel? chat});

  $SenderModelCopyWith<$Res>? get sender;
  $SenderModelCopyWith<$Res>? get receiver;
  $ChatMessageModelCopyWith<$Res>? get chat;
}

/// @nodoc
class _$SendMessageModelCopyWithImpl<$Res, $Val extends SendMessageModel>
    implements $SendMessageModelCopyWith<$Res> {
  _$SendMessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SendMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? senderId = freezed,
    Object? receiverId = freezed,
    Object? content = freezed,
    Object? chatId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? sender = freezed,
    Object? receiver = freezed,
    Object? chat = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      senderId: freezed == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as int?,
      receiverId: freezed == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as int?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      chatId: freezed == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      sender: freezed == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as SenderModel?,
      receiver: freezed == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as SenderModel?,
      chat: freezed == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as ChatMessageModel?,
    ) as $Val);
  }

  /// Create a copy of SendMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SenderModelCopyWith<$Res>? get sender {
    if (_value.sender == null) {
      return null;
    }

    return $SenderModelCopyWith<$Res>(_value.sender!, (value) {
      return _then(_value.copyWith(sender: value) as $Val);
    });
  }

  /// Create a copy of SendMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SenderModelCopyWith<$Res>? get receiver {
    if (_value.receiver == null) {
      return null;
    }

    return $SenderModelCopyWith<$Res>(_value.receiver!, (value) {
      return _then(_value.copyWith(receiver: value) as $Val);
    });
  }

  /// Create a copy of SendMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatMessageModelCopyWith<$Res>? get chat {
    if (_value.chat == null) {
      return null;
    }

    return $ChatMessageModelCopyWith<$Res>(_value.chat!, (value) {
      return _then(_value.copyWith(chat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SendMessageModelImplCopyWith<$Res>
    implements $SendMessageModelCopyWith<$Res> {
  factory _$$SendMessageModelImplCopyWith(_$SendMessageModelImpl value,
          $Res Function(_$SendMessageModelImpl) then) =
      __$$SendMessageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? senderId,
      int? receiverId,
      String? content,
      int? chatId,
      String? createdAt,
      String? updatedAt,
      SenderModel? sender,
      SenderModel? receiver,
      ChatMessageModel? chat});

  @override
  $SenderModelCopyWith<$Res>? get sender;
  @override
  $SenderModelCopyWith<$Res>? get receiver;
  @override
  $ChatMessageModelCopyWith<$Res>? get chat;
}

/// @nodoc
class __$$SendMessageModelImplCopyWithImpl<$Res>
    extends _$SendMessageModelCopyWithImpl<$Res, _$SendMessageModelImpl>
    implements _$$SendMessageModelImplCopyWith<$Res> {
  __$$SendMessageModelImplCopyWithImpl(_$SendMessageModelImpl _value,
      $Res Function(_$SendMessageModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? senderId = freezed,
    Object? receiverId = freezed,
    Object? content = freezed,
    Object? chatId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? sender = freezed,
    Object? receiver = freezed,
    Object? chat = freezed,
  }) {
    return _then(_$SendMessageModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      senderId: freezed == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as int?,
      receiverId: freezed == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as int?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      chatId: freezed == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      sender: freezed == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as SenderModel?,
      receiver: freezed == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as SenderModel?,
      chat: freezed == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as ChatMessageModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendMessageModelImpl implements _SendMessageModel {
  const _$SendMessageModelImpl(
      {this.id,
      this.senderId,
      this.receiverId,
      this.content,
      this.chatId,
      this.createdAt,
      this.updatedAt,
      this.sender,
      this.receiver,
      this.chat});

  factory _$SendMessageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendMessageModelImplFromJson(json);

  @override
  final int? id;
  @override
  final int? senderId;
  @override
  final int? receiverId;
  @override
  final String? content;
  @override
  final int? chatId;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final SenderModel? sender;
  @override
  final SenderModel? receiver;
  @override
  final ChatMessageModel? chat;

  @override
  String toString() {
    return 'SendMessageModel(id: $id, senderId: $senderId, receiverId: $receiverId, content: $content, chatId: $chatId, createdAt: $createdAt, updatedAt: $updatedAt, sender: $sender, receiver: $receiver, chat: $chat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.receiverId, receiverId) ||
                other.receiverId == receiverId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.receiver, receiver) ||
                other.receiver == receiver) &&
            (identical(other.chat, chat) || other.chat == chat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, senderId, receiverId,
      content, chatId, createdAt, updatedAt, sender, receiver, chat);

  /// Create a copy of SendMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageModelImplCopyWith<_$SendMessageModelImpl> get copyWith =>
      __$$SendMessageModelImplCopyWithImpl<_$SendMessageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendMessageModelImplToJson(
      this,
    );
  }
}

abstract class _SendMessageModel implements SendMessageModel {
  const factory _SendMessageModel(
      {final int? id,
      final int? senderId,
      final int? receiverId,
      final String? content,
      final int? chatId,
      final String? createdAt,
      final String? updatedAt,
      final SenderModel? sender,
      final SenderModel? receiver,
      final ChatMessageModel? chat}) = _$SendMessageModelImpl;

  factory _SendMessageModel.fromJson(Map<String, dynamic> json) =
      _$SendMessageModelImpl.fromJson;

  @override
  int? get id;
  @override
  int? get senderId;
  @override
  int? get receiverId;
  @override
  String? get content;
  @override
  int? get chatId;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  SenderModel? get sender;
  @override
  SenderModel? get receiver;
  @override
  ChatMessageModel? get chat;

  /// Create a copy of SendMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendMessageModelImplCopyWith<_$SendMessageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatMessageModel _$ChatMessageModelFromJson(Map<String, dynamic> json) {
  return _ChatMessageModel.fromJson(json);
}

/// @nodoc
mixin _$ChatMessageModel {
  int? get id => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  int? get participantId => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ChatMessageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatMessageModelCopyWith<ChatMessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageModelCopyWith<$Res> {
  factory $ChatMessageModelCopyWith(
          ChatMessageModel value, $Res Function(ChatMessageModel) then) =
      _$ChatMessageModelCopyWithImpl<$Res, ChatMessageModel>;
  @useResult
  $Res call(
      {int? id,
      int? userId,
      int? participantId,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$ChatMessageModelCopyWithImpl<$Res, $Val extends ChatMessageModel>
    implements $ChatMessageModelCopyWith<$Res> {
  _$ChatMessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? participantId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatMessageModelImplCopyWith<$Res>
    implements $ChatMessageModelCopyWith<$Res> {
  factory _$$ChatMessageModelImplCopyWith(_$ChatMessageModelImpl value,
          $Res Function(_$ChatMessageModelImpl) then) =
      __$$ChatMessageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? userId,
      int? participantId,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$ChatMessageModelImplCopyWithImpl<$Res>
    extends _$ChatMessageModelCopyWithImpl<$Res, _$ChatMessageModelImpl>
    implements _$$ChatMessageModelImplCopyWith<$Res> {
  __$$ChatMessageModelImplCopyWithImpl(_$ChatMessageModelImpl _value,
      $Res Function(_$ChatMessageModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? participantId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ChatMessageModelImpl(
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
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatMessageModelImpl implements _ChatMessageModel {
  const _$ChatMessageModelImpl(
      {this.id,
      this.userId,
      this.participantId,
      this.createdAt,
      this.updatedAt});

  factory _$ChatMessageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatMessageModelImplFromJson(json);

  @override
  final int? id;
  @override
  final int? userId;
  @override
  final int? participantId;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'ChatMessageModel(id: $id, userId: $userId, participantId: $participantId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMessageModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.participantId, participantId) ||
                other.participantId == participantId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userId, participantId, createdAt, updatedAt);

  /// Create a copy of ChatMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMessageModelImplCopyWith<_$ChatMessageModelImpl> get copyWith =>
      __$$ChatMessageModelImplCopyWithImpl<_$ChatMessageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatMessageModelImplToJson(
      this,
    );
  }
}

abstract class _ChatMessageModel implements ChatMessageModel {
  const factory _ChatMessageModel(
      {final int? id,
      final int? userId,
      final int? participantId,
      final String? createdAt,
      final String? updatedAt}) = _$ChatMessageModelImpl;

  factory _ChatMessageModel.fromJson(Map<String, dynamic> json) =
      _$ChatMessageModelImpl.fromJson;

  @override
  int? get id;
  @override
  int? get userId;
  @override
  int? get participantId;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;

  /// Create a copy of ChatMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatMessageModelImplCopyWith<_$ChatMessageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
