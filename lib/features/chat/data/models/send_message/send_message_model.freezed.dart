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
  bool? get success => throw _privateConstructorUsedError;
  bool? get handled => throw _privateConstructorUsedError;
  SendMessageData? get message => throw _privateConstructorUsedError;
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
      {bool? success,
      bool? handled,
      SendMessageData? message,
      ChatMessageModel? chat});

  $SendMessageDataCopyWith<$Res>? get message;
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
    Object? success = freezed,
    Object? handled = freezed,
    Object? message = freezed,
    Object? chat = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      handled: freezed == handled
          ? _value.handled
          : handled // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as SendMessageData?,
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
  $SendMessageDataCopyWith<$Res>? get message {
    if (_value.message == null) {
      return null;
    }

    return $SendMessageDataCopyWith<$Res>(_value.message!, (value) {
      return _then(_value.copyWith(message: value) as $Val);
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
      {bool? success,
      bool? handled,
      SendMessageData? message,
      ChatMessageModel? chat});

  @override
  $SendMessageDataCopyWith<$Res>? get message;
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
    Object? success = freezed,
    Object? handled = freezed,
    Object? message = freezed,
    Object? chat = freezed,
  }) {
    return _then(_$SendMessageModelImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      handled: freezed == handled
          ? _value.handled
          : handled // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as SendMessageData?,
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
      {this.success, this.handled, this.message, this.chat});

  factory _$SendMessageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendMessageModelImplFromJson(json);

  @override
  final bool? success;
  @override
  final bool? handled;
  @override
  final SendMessageData? message;
  @override
  final ChatMessageModel? chat;

  @override
  String toString() {
    return 'SendMessageModel(success: $success, handled: $handled, message: $message, chat: $chat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.handled, handled) || other.handled == handled) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.chat, chat) || other.chat == chat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, handled, message, chat);

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
      {final bool? success,
      final bool? handled,
      final SendMessageData? message,
      final ChatMessageModel? chat}) = _$SendMessageModelImpl;

  factory _SendMessageModel.fromJson(Map<String, dynamic> json) =
      _$SendMessageModelImpl.fromJson;

  @override
  bool? get success;
  @override
  bool? get handled;
  @override
  SendMessageData? get message;
  @override
  ChatMessageModel? get chat;

  /// Create a copy of SendMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendMessageModelImplCopyWith<_$SendMessageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SendMessageData _$SendMessageDataFromJson(Map<String, dynamic> json) {
  return _SendMessageData.fromJson(json);
}

/// @nodoc
mixin _$SendMessageData {
  @JsonKey(name: 'chat_id')
  int? get chatId => throw _privateConstructorUsedError;
  @JsonKey(name: 'chat_type')
  String? get chatType => throw _privateConstructorUsedError;
  @JsonKey(name: 'sender_id')
  int? get senderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'sender_type')
  String? get senderType => throw _privateConstructorUsedError;
  @JsonKey(name: 'receiver_id')
  int? get receiverId => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  List<String>? get suggestions => throw _privateConstructorUsedError;
  SenderModel? get sender => throw _privateConstructorUsedError;
  SenderModel? get receiver => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<MessageImageModel>? get images => throw _privateConstructorUsedError;
  ChatMessageModel? get chat => throw _privateConstructorUsedError;
  @JsonKey(name: 'replied_message')
  dynamic get repliedMessage => throw _privateConstructorUsedError;

  /// Serializes this SendMessageData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SendMessageData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SendMessageDataCopyWith<SendMessageData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendMessageDataCopyWith<$Res> {
  factory $SendMessageDataCopyWith(
          SendMessageData value, $Res Function(SendMessageData) then) =
      _$SendMessageDataCopyWithImpl<$Res, SendMessageData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'chat_id') int? chatId,
      @JsonKey(name: 'chat_type') String? chatType,
      @JsonKey(name: 'sender_id') int? senderId,
      @JsonKey(name: 'sender_type') String? senderType,
      @JsonKey(name: 'receiver_id') int? receiverId,
      String? content,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'created_at') String? createdAt,
      int? id,
      List<String>? suggestions,
      SenderModel? sender,
      SenderModel? receiver,
      @JsonKey(name: 'images') List<MessageImageModel>? images,
      ChatMessageModel? chat,
      @JsonKey(name: 'replied_message') dynamic repliedMessage});

  $SenderModelCopyWith<$Res>? get sender;
  $SenderModelCopyWith<$Res>? get receiver;
  $ChatMessageModelCopyWith<$Res>? get chat;
}

/// @nodoc
class _$SendMessageDataCopyWithImpl<$Res, $Val extends SendMessageData>
    implements $SendMessageDataCopyWith<$Res> {
  _$SendMessageDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SendMessageData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = freezed,
    Object? chatType = freezed,
    Object? senderId = freezed,
    Object? senderType = freezed,
    Object? receiverId = freezed,
    Object? content = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
    Object? id = freezed,
    Object? suggestions = freezed,
    Object? sender = freezed,
    Object? receiver = freezed,
    Object? images = freezed,
    Object? chat = freezed,
    Object? repliedMessage = freezed,
  }) {
    return _then(_value.copyWith(
      chatId: freezed == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int?,
      chatType: freezed == chatType
          ? _value.chatType
          : chatType // ignore: cast_nullable_to_non_nullable
              as String?,
      senderId: freezed == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as int?,
      senderType: freezed == senderType
          ? _value.senderType
          : senderType // ignore: cast_nullable_to_non_nullable
              as String?,
      receiverId: freezed == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as int?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      suggestions: freezed == suggestions
          ? _value.suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      sender: freezed == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as SenderModel?,
      receiver: freezed == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as SenderModel?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<MessageImageModel>?,
      chat: freezed == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as ChatMessageModel?,
      repliedMessage: freezed == repliedMessage
          ? _value.repliedMessage
          : repliedMessage // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  /// Create a copy of SendMessageData
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

  /// Create a copy of SendMessageData
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

  /// Create a copy of SendMessageData
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
abstract class _$$SendMessageDataImplCopyWith<$Res>
    implements $SendMessageDataCopyWith<$Res> {
  factory _$$SendMessageDataImplCopyWith(_$SendMessageDataImpl value,
          $Res Function(_$SendMessageDataImpl) then) =
      __$$SendMessageDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'chat_id') int? chatId,
      @JsonKey(name: 'chat_type') String? chatType,
      @JsonKey(name: 'sender_id') int? senderId,
      @JsonKey(name: 'sender_type') String? senderType,
      @JsonKey(name: 'receiver_id') int? receiverId,
      String? content,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'created_at') String? createdAt,
      int? id,
      List<String>? suggestions,
      SenderModel? sender,
      SenderModel? receiver,
      @JsonKey(name: 'images') List<MessageImageModel>? images,
      ChatMessageModel? chat,
      @JsonKey(name: 'replied_message') dynamic repliedMessage});

  @override
  $SenderModelCopyWith<$Res>? get sender;
  @override
  $SenderModelCopyWith<$Res>? get receiver;
  @override
  $ChatMessageModelCopyWith<$Res>? get chat;
}

/// @nodoc
class __$$SendMessageDataImplCopyWithImpl<$Res>
    extends _$SendMessageDataCopyWithImpl<$Res, _$SendMessageDataImpl>
    implements _$$SendMessageDataImplCopyWith<$Res> {
  __$$SendMessageDataImplCopyWithImpl(
      _$SendMessageDataImpl _value, $Res Function(_$SendMessageDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendMessageData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = freezed,
    Object? chatType = freezed,
    Object? senderId = freezed,
    Object? senderType = freezed,
    Object? receiverId = freezed,
    Object? content = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
    Object? id = freezed,
    Object? suggestions = freezed,
    Object? sender = freezed,
    Object? receiver = freezed,
    Object? images = freezed,
    Object? chat = freezed,
    Object? repliedMessage = freezed,
  }) {
    return _then(_$SendMessageDataImpl(
      chatId: freezed == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int?,
      chatType: freezed == chatType
          ? _value.chatType
          : chatType // ignore: cast_nullable_to_non_nullable
              as String?,
      senderId: freezed == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as int?,
      senderType: freezed == senderType
          ? _value.senderType
          : senderType // ignore: cast_nullable_to_non_nullable
              as String?,
      receiverId: freezed == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as int?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      suggestions: freezed == suggestions
          ? _value._suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      sender: freezed == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as SenderModel?,
      receiver: freezed == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as SenderModel?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<MessageImageModel>?,
      chat: freezed == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as ChatMessageModel?,
      repliedMessage: freezed == repliedMessage
          ? _value.repliedMessage
          : repliedMessage // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendMessageDataImpl implements _SendMessageData {
  const _$SendMessageDataImpl(
      {@JsonKey(name: 'chat_id') this.chatId,
      @JsonKey(name: 'chat_type') this.chatType,
      @JsonKey(name: 'sender_id') this.senderId,
      @JsonKey(name: 'sender_type') this.senderType,
      @JsonKey(name: 'receiver_id') this.receiverId,
      this.content,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'created_at') this.createdAt,
      this.id,
      final List<String>? suggestions,
      this.sender,
      this.receiver,
      @JsonKey(name: 'images') final List<MessageImageModel>? images,
      this.chat,
      @JsonKey(name: 'replied_message') this.repliedMessage})
      : _suggestions = suggestions,
        _images = images;

  factory _$SendMessageDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendMessageDataImplFromJson(json);

  @override
  @JsonKey(name: 'chat_id')
  final int? chatId;
  @override
  @JsonKey(name: 'chat_type')
  final String? chatType;
  @override
  @JsonKey(name: 'sender_id')
  final int? senderId;
  @override
  @JsonKey(name: 'sender_type')
  final String? senderType;
  @override
  @JsonKey(name: 'receiver_id')
  final int? receiverId;
  @override
  final String? content;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  final int? id;
  final List<String>? _suggestions;
  @override
  List<String>? get suggestions {
    final value = _suggestions;
    if (value == null) return null;
    if (_suggestions is EqualUnmodifiableListView) return _suggestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final SenderModel? sender;
  @override
  final SenderModel? receiver;
  final List<MessageImageModel>? _images;
  @override
  @JsonKey(name: 'images')
  List<MessageImageModel>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ChatMessageModel? chat;
  @override
  @JsonKey(name: 'replied_message')
  final dynamic repliedMessage;

  @override
  String toString() {
    return 'SendMessageData(chatId: $chatId, chatType: $chatType, senderId: $senderId, senderType: $senderType, receiverId: $receiverId, content: $content, updatedAt: $updatedAt, createdAt: $createdAt, id: $id, suggestions: $suggestions, sender: $sender, receiver: $receiver, images: $images, chat: $chat, repliedMessage: $repliedMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageDataImpl &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.chatType, chatType) ||
                other.chatType == chatType) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.senderType, senderType) ||
                other.senderType == senderType) &&
            (identical(other.receiverId, receiverId) ||
                other.receiverId == receiverId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._suggestions, _suggestions) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.receiver, receiver) ||
                other.receiver == receiver) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.chat, chat) || other.chat == chat) &&
            const DeepCollectionEquality()
                .equals(other.repliedMessage, repliedMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      chatId,
      chatType,
      senderId,
      senderType,
      receiverId,
      content,
      updatedAt,
      createdAt,
      id,
      const DeepCollectionEquality().hash(_suggestions),
      sender,
      receiver,
      const DeepCollectionEquality().hash(_images),
      chat,
      const DeepCollectionEquality().hash(repliedMessage));

  /// Create a copy of SendMessageData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageDataImplCopyWith<_$SendMessageDataImpl> get copyWith =>
      __$$SendMessageDataImplCopyWithImpl<_$SendMessageDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendMessageDataImplToJson(
      this,
    );
  }
}

abstract class _SendMessageData implements SendMessageData {
  const factory _SendMessageData(
          {@JsonKey(name: 'chat_id') final int? chatId,
          @JsonKey(name: 'chat_type') final String? chatType,
          @JsonKey(name: 'sender_id') final int? senderId,
          @JsonKey(name: 'sender_type') final String? senderType,
          @JsonKey(name: 'receiver_id') final int? receiverId,
          final String? content,
          @JsonKey(name: 'updated_at') final String? updatedAt,
          @JsonKey(name: 'created_at') final String? createdAt,
          final int? id,
          final List<String>? suggestions,
          final SenderModel? sender,
          final SenderModel? receiver,
          @JsonKey(name: 'images') final List<MessageImageModel>? images,
          final ChatMessageModel? chat,
          @JsonKey(name: 'replied_message') final dynamic repliedMessage}) =
      _$SendMessageDataImpl;

  factory _SendMessageData.fromJson(Map<String, dynamic> json) =
      _$SendMessageDataImpl.fromJson;

  @override
  @JsonKey(name: 'chat_id')
  int? get chatId;
  @override
  @JsonKey(name: 'chat_type')
  String? get chatType;
  @override
  @JsonKey(name: 'sender_id')
  int? get senderId;
  @override
  @JsonKey(name: 'sender_type')
  String? get senderType;
  @override
  @JsonKey(name: 'receiver_id')
  int? get receiverId;
  @override
  String? get content;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  int? get id;
  @override
  List<String>? get suggestions;
  @override
  SenderModel? get sender;
  @override
  SenderModel? get receiver;
  @override
  @JsonKey(name: 'images')
  List<MessageImageModel>? get images;
  @override
  ChatMessageModel? get chat;
  @override
  @JsonKey(name: 'replied_message')
  dynamic get repliedMessage;

  /// Create a copy of SendMessageData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendMessageDataImplCopyWith<_$SendMessageDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatMessageModel _$ChatMessageModelFromJson(Map<String, dynamic> json) {
  return _ChatMessageModel.fromJson(json);
}

/// @nodoc
mixin _$ChatMessageModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'participant_id')
  int? get participantId => throw _privateConstructorUsedError;
  @JsonKey(name: 'chat_type')
  String? get chatType => throw _privateConstructorUsedError;
  @JsonKey(name: 'support_agent_id')
  int? get supportAgentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'support_status')
  String? get supportStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'assigned_at')
  String? get assignedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'resolved_at')
  String? get resolvedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_admin_response_at')
  String? get firstAdminResponseAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'bot_interaction_count')
  int? get botInteractionCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_escalated')
  bool? get isEscalated => throw _privateConstructorUsedError;
  @JsonKey(name: 'escalated_at')
  String? get escalatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'escalation_reason')
  String? get escalationReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'bot_last_response_at')
  String? get botLastResponseAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'support_agent')
  SenderModel? get supportAgent => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_message')
  LastMessageModel? get lastMessage => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'participant_id') int? participantId,
      @JsonKey(name: 'chat_type') String? chatType,
      @JsonKey(name: 'support_agent_id') int? supportAgentId,
      @JsonKey(name: 'support_status') String? supportStatus,
      @JsonKey(name: 'assigned_at') String? assignedAt,
      @JsonKey(name: 'resolved_at') String? resolvedAt,
      @JsonKey(name: 'first_admin_response_at') String? firstAdminResponseAt,
      @JsonKey(name: 'bot_interaction_count') int? botInteractionCount,
      @JsonKey(name: 'is_escalated') bool? isEscalated,
      @JsonKey(name: 'escalated_at') String? escalatedAt,
      @JsonKey(name: 'escalation_reason') String? escalationReason,
      @JsonKey(name: 'bot_last_response_at') String? botLastResponseAt,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'support_agent') SenderModel? supportAgent,
      @JsonKey(name: 'last_message') LastMessageModel? lastMessage});

  $SenderModelCopyWith<$Res>? get supportAgent;
  $LastMessageModelCopyWith<$Res>? get lastMessage;
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
    Object? chatType = freezed,
    Object? supportAgentId = freezed,
    Object? supportStatus = freezed,
    Object? assignedAt = freezed,
    Object? resolvedAt = freezed,
    Object? firstAdminResponseAt = freezed,
    Object? botInteractionCount = freezed,
    Object? isEscalated = freezed,
    Object? escalatedAt = freezed,
    Object? escalationReason = freezed,
    Object? botLastResponseAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? supportAgent = freezed,
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
      firstAdminResponseAt: freezed == firstAdminResponseAt
          ? _value.firstAdminResponseAt
          : firstAdminResponseAt // ignore: cast_nullable_to_non_nullable
              as String?,
      botInteractionCount: freezed == botInteractionCount
          ? _value.botInteractionCount
          : botInteractionCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isEscalated: freezed == isEscalated
          ? _value.isEscalated
          : isEscalated // ignore: cast_nullable_to_non_nullable
              as bool?,
      escalatedAt: freezed == escalatedAt
          ? _value.escalatedAt
          : escalatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      escalationReason: freezed == escalationReason
          ? _value.escalationReason
          : escalationReason // ignore: cast_nullable_to_non_nullable
              as String?,
      botLastResponseAt: freezed == botLastResponseAt
          ? _value.botLastResponseAt
          : botLastResponseAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      supportAgent: freezed == supportAgent
          ? _value.supportAgent
          : supportAgent // ignore: cast_nullable_to_non_nullable
              as SenderModel?,
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as LastMessageModel?,
    ) as $Val);
  }

  /// Create a copy of ChatMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SenderModelCopyWith<$Res>? get supportAgent {
    if (_value.supportAgent == null) {
      return null;
    }

    return $SenderModelCopyWith<$Res>(_value.supportAgent!, (value) {
      return _then(_value.copyWith(supportAgent: value) as $Val);
    });
  }

  /// Create a copy of ChatMessageModel
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
abstract class _$$ChatMessageModelImplCopyWith<$Res>
    implements $ChatMessageModelCopyWith<$Res> {
  factory _$$ChatMessageModelImplCopyWith(_$ChatMessageModelImpl value,
          $Res Function(_$ChatMessageModelImpl) then) =
      __$$ChatMessageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'participant_id') int? participantId,
      @JsonKey(name: 'chat_type') String? chatType,
      @JsonKey(name: 'support_agent_id') int? supportAgentId,
      @JsonKey(name: 'support_status') String? supportStatus,
      @JsonKey(name: 'assigned_at') String? assignedAt,
      @JsonKey(name: 'resolved_at') String? resolvedAt,
      @JsonKey(name: 'first_admin_response_at') String? firstAdminResponseAt,
      @JsonKey(name: 'bot_interaction_count') int? botInteractionCount,
      @JsonKey(name: 'is_escalated') bool? isEscalated,
      @JsonKey(name: 'escalated_at') String? escalatedAt,
      @JsonKey(name: 'escalation_reason') String? escalationReason,
      @JsonKey(name: 'bot_last_response_at') String? botLastResponseAt,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'support_agent') SenderModel? supportAgent,
      @JsonKey(name: 'last_message') LastMessageModel? lastMessage});

  @override
  $SenderModelCopyWith<$Res>? get supportAgent;
  @override
  $LastMessageModelCopyWith<$Res>? get lastMessage;
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
    Object? chatType = freezed,
    Object? supportAgentId = freezed,
    Object? supportStatus = freezed,
    Object? assignedAt = freezed,
    Object? resolvedAt = freezed,
    Object? firstAdminResponseAt = freezed,
    Object? botInteractionCount = freezed,
    Object? isEscalated = freezed,
    Object? escalatedAt = freezed,
    Object? escalationReason = freezed,
    Object? botLastResponseAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? supportAgent = freezed,
    Object? lastMessage = freezed,
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
      chatType: freezed == chatType
          ? _value.chatType
          : chatType // ignore: cast_nullable_to_non_nullable
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
      firstAdminResponseAt: freezed == firstAdminResponseAt
          ? _value.firstAdminResponseAt
          : firstAdminResponseAt // ignore: cast_nullable_to_non_nullable
              as String?,
      botInteractionCount: freezed == botInteractionCount
          ? _value.botInteractionCount
          : botInteractionCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isEscalated: freezed == isEscalated
          ? _value.isEscalated
          : isEscalated // ignore: cast_nullable_to_non_nullable
              as bool?,
      escalatedAt: freezed == escalatedAt
          ? _value.escalatedAt
          : escalatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      escalationReason: freezed == escalationReason
          ? _value.escalationReason
          : escalationReason // ignore: cast_nullable_to_non_nullable
              as String?,
      botLastResponseAt: freezed == botLastResponseAt
          ? _value.botLastResponseAt
          : botLastResponseAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      supportAgent: freezed == supportAgent
          ? _value.supportAgent
          : supportAgent // ignore: cast_nullable_to_non_nullable
              as SenderModel?,
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as LastMessageModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatMessageModelImpl implements _ChatMessageModel {
  const _$ChatMessageModelImpl(
      {this.id,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'participant_id') this.participantId,
      @JsonKey(name: 'chat_type') this.chatType,
      @JsonKey(name: 'support_agent_id') this.supportAgentId,
      @JsonKey(name: 'support_status') this.supportStatus,
      @JsonKey(name: 'assigned_at') this.assignedAt,
      @JsonKey(name: 'resolved_at') this.resolvedAt,
      @JsonKey(name: 'first_admin_response_at') this.firstAdminResponseAt,
      @JsonKey(name: 'bot_interaction_count') this.botInteractionCount,
      @JsonKey(name: 'is_escalated') this.isEscalated,
      @JsonKey(name: 'escalated_at') this.escalatedAt,
      @JsonKey(name: 'escalation_reason') this.escalationReason,
      @JsonKey(name: 'bot_last_response_at') this.botLastResponseAt,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'support_agent') this.supportAgent,
      @JsonKey(name: 'last_message') this.lastMessage});

  factory _$ChatMessageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatMessageModelImplFromJson(json);

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
  @JsonKey(name: 'first_admin_response_at')
  final String? firstAdminResponseAt;
  @override
  @JsonKey(name: 'bot_interaction_count')
  final int? botInteractionCount;
  @override
  @JsonKey(name: 'is_escalated')
  final bool? isEscalated;
  @override
  @JsonKey(name: 'escalated_at')
  final String? escalatedAt;
  @override
  @JsonKey(name: 'escalation_reason')
  final String? escalationReason;
  @override
  @JsonKey(name: 'bot_last_response_at')
  final String? botLastResponseAt;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'support_agent')
  final SenderModel? supportAgent;
  @override
  @JsonKey(name: 'last_message')
  final LastMessageModel? lastMessage;

  @override
  String toString() {
    return 'ChatMessageModel(id: $id, userId: $userId, participantId: $participantId, chatType: $chatType, supportAgentId: $supportAgentId, supportStatus: $supportStatus, assignedAt: $assignedAt, resolvedAt: $resolvedAt, firstAdminResponseAt: $firstAdminResponseAt, botInteractionCount: $botInteractionCount, isEscalated: $isEscalated, escalatedAt: $escalatedAt, escalationReason: $escalationReason, botLastResponseAt: $botLastResponseAt, createdAt: $createdAt, updatedAt: $updatedAt, supportAgent: $supportAgent, lastMessage: $lastMessage)';
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
            (identical(other.chatType, chatType) ||
                other.chatType == chatType) &&
            (identical(other.supportAgentId, supportAgentId) ||
                other.supportAgentId == supportAgentId) &&
            (identical(other.supportStatus, supportStatus) ||
                other.supportStatus == supportStatus) &&
            (identical(other.assignedAt, assignedAt) ||
                other.assignedAt == assignedAt) &&
            (identical(other.resolvedAt, resolvedAt) ||
                other.resolvedAt == resolvedAt) &&
            (identical(other.firstAdminResponseAt, firstAdminResponseAt) ||
                other.firstAdminResponseAt == firstAdminResponseAt) &&
            (identical(other.botInteractionCount, botInteractionCount) ||
                other.botInteractionCount == botInteractionCount) &&
            (identical(other.isEscalated, isEscalated) ||
                other.isEscalated == isEscalated) &&
            (identical(other.escalatedAt, escalatedAt) ||
                other.escalatedAt == escalatedAt) &&
            (identical(other.escalationReason, escalationReason) ||
                other.escalationReason == escalationReason) &&
            (identical(other.botLastResponseAt, botLastResponseAt) ||
                other.botLastResponseAt == botLastResponseAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.supportAgent, supportAgent) ||
                other.supportAgent == supportAgent) &&
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
      supportAgentId,
      supportStatus,
      assignedAt,
      resolvedAt,
      firstAdminResponseAt,
      botInteractionCount,
      isEscalated,
      escalatedAt,
      escalationReason,
      botLastResponseAt,
      createdAt,
      updatedAt,
      supportAgent,
      lastMessage);

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
      @JsonKey(name: 'user_id') final int? userId,
      @JsonKey(name: 'participant_id') final int? participantId,
      @JsonKey(name: 'chat_type') final String? chatType,
      @JsonKey(name: 'support_agent_id') final int? supportAgentId,
      @JsonKey(name: 'support_status') final String? supportStatus,
      @JsonKey(name: 'assigned_at') final String? assignedAt,
      @JsonKey(name: 'resolved_at') final String? resolvedAt,
      @JsonKey(name: 'first_admin_response_at')
      final String? firstAdminResponseAt,
      @JsonKey(name: 'bot_interaction_count') final int? botInteractionCount,
      @JsonKey(name: 'is_escalated') final bool? isEscalated,
      @JsonKey(name: 'escalated_at') final String? escalatedAt,
      @JsonKey(name: 'escalation_reason') final String? escalationReason,
      @JsonKey(name: 'bot_last_response_at') final String? botLastResponseAt,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt,
      @JsonKey(name: 'support_agent') final SenderModel? supportAgent,
      @JsonKey(name: 'last_message')
      final LastMessageModel? lastMessage}) = _$ChatMessageModelImpl;

  factory _ChatMessageModel.fromJson(Map<String, dynamic> json) =
      _$ChatMessageModelImpl.fromJson;

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
  @JsonKey(name: 'first_admin_response_at')
  String? get firstAdminResponseAt;
  @override
  @JsonKey(name: 'bot_interaction_count')
  int? get botInteractionCount;
  @override
  @JsonKey(name: 'is_escalated')
  bool? get isEscalated;
  @override
  @JsonKey(name: 'escalated_at')
  String? get escalatedAt;
  @override
  @JsonKey(name: 'escalation_reason')
  String? get escalationReason;
  @override
  @JsonKey(name: 'bot_last_response_at')
  String? get botLastResponseAt;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'support_agent')
  SenderModel? get supportAgent;
  @override
  @JsonKey(name: 'last_message')
  LastMessageModel? get lastMessage;

  /// Create a copy of ChatMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatMessageModelImplCopyWith<_$ChatMessageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LastMessageModel _$LastMessageModelFromJson(Map<String, dynamic> json) {
  return _LastMessageModel.fromJson(json);
}

/// @nodoc
mixin _$LastMessageModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'chat_id')
  int? get chatId => throw _privateConstructorUsedError;
  @JsonKey(name: 'chat_type')
  String? get chatType => throw _privateConstructorUsedError;
  @JsonKey(name: 'sender_id')
  int? get senderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'sender_type')
  String? get senderType => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_bot')
  bool? get isBot => throw _privateConstructorUsedError;
  @JsonKey(name: 'bot_intent')
  String? get botIntent => throw _privateConstructorUsedError;
  @JsonKey(name: 'bot_confidence')
  String? get botConfidence => throw _privateConstructorUsedError;
  @JsonKey(name: 'bot_reply_source')
  String? get botReplySource => throw _privateConstructorUsedError;
  @JsonKey(name: 'bot_metadata')
  dynamic get botMetadata => throw _privateConstructorUsedError;
  @JsonKey(name: 'receiver_id')
  int? get receiverId => throw _privateConstructorUsedError;
  @JsonKey(name: 'reply_to')
  dynamic get replyTo => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'read_at')
  String? get readAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  List<String>? get suggestions => throw _privateConstructorUsedError;

  /// Serializes this LastMessageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LastMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LastMessageModelCopyWith<LastMessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LastMessageModelCopyWith<$Res> {
  factory $LastMessageModelCopyWith(
          LastMessageModel value, $Res Function(LastMessageModel) then) =
      _$LastMessageModelCopyWithImpl<$Res, LastMessageModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'chat_id') int? chatId,
      @JsonKey(name: 'chat_type') String? chatType,
      @JsonKey(name: 'sender_id') int? senderId,
      @JsonKey(name: 'sender_type') String? senderType,
      @JsonKey(name: 'is_bot') bool? isBot,
      @JsonKey(name: 'bot_intent') String? botIntent,
      @JsonKey(name: 'bot_confidence') String? botConfidence,
      @JsonKey(name: 'bot_reply_source') String? botReplySource,
      @JsonKey(name: 'bot_metadata') dynamic botMetadata,
      @JsonKey(name: 'receiver_id') int? receiverId,
      @JsonKey(name: 'reply_to') dynamic replyTo,
      String? content,
      @JsonKey(name: 'read_at') String? readAt,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      List<String>? suggestions});
}

/// @nodoc
class _$LastMessageModelCopyWithImpl<$Res, $Val extends LastMessageModel>
    implements $LastMessageModelCopyWith<$Res> {
  _$LastMessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LastMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? chatId = freezed,
    Object? chatType = freezed,
    Object? senderId = freezed,
    Object? senderType = freezed,
    Object? isBot = freezed,
    Object? botIntent = freezed,
    Object? botConfidence = freezed,
    Object? botReplySource = freezed,
    Object? botMetadata = freezed,
    Object? receiverId = freezed,
    Object? replyTo = freezed,
    Object? content = freezed,
    Object? readAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? suggestions = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      chatId: freezed == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int?,
      chatType: freezed == chatType
          ? _value.chatType
          : chatType // ignore: cast_nullable_to_non_nullable
              as String?,
      senderId: freezed == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as int?,
      senderType: freezed == senderType
          ? _value.senderType
          : senderType // ignore: cast_nullable_to_non_nullable
              as String?,
      isBot: freezed == isBot
          ? _value.isBot
          : isBot // ignore: cast_nullable_to_non_nullable
              as bool?,
      botIntent: freezed == botIntent
          ? _value.botIntent
          : botIntent // ignore: cast_nullable_to_non_nullable
              as String?,
      botConfidence: freezed == botConfidence
          ? _value.botConfidence
          : botConfidence // ignore: cast_nullable_to_non_nullable
              as String?,
      botReplySource: freezed == botReplySource
          ? _value.botReplySource
          : botReplySource // ignore: cast_nullable_to_non_nullable
              as String?,
      botMetadata: freezed == botMetadata
          ? _value.botMetadata
          : botMetadata // ignore: cast_nullable_to_non_nullable
              as dynamic,
      receiverId: freezed == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as int?,
      replyTo: freezed == replyTo
          ? _value.replyTo
          : replyTo // ignore: cast_nullable_to_non_nullable
              as dynamic,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      readAt: freezed == readAt
          ? _value.readAt
          : readAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      suggestions: freezed == suggestions
          ? _value.suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LastMessageModelImplCopyWith<$Res>
    implements $LastMessageModelCopyWith<$Res> {
  factory _$$LastMessageModelImplCopyWith(_$LastMessageModelImpl value,
          $Res Function(_$LastMessageModelImpl) then) =
      __$$LastMessageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'chat_id') int? chatId,
      @JsonKey(name: 'chat_type') String? chatType,
      @JsonKey(name: 'sender_id') int? senderId,
      @JsonKey(name: 'sender_type') String? senderType,
      @JsonKey(name: 'is_bot') bool? isBot,
      @JsonKey(name: 'bot_intent') String? botIntent,
      @JsonKey(name: 'bot_confidence') String? botConfidence,
      @JsonKey(name: 'bot_reply_source') String? botReplySource,
      @JsonKey(name: 'bot_metadata') dynamic botMetadata,
      @JsonKey(name: 'receiver_id') int? receiverId,
      @JsonKey(name: 'reply_to') dynamic replyTo,
      String? content,
      @JsonKey(name: 'read_at') String? readAt,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      List<String>? suggestions});
}

/// @nodoc
class __$$LastMessageModelImplCopyWithImpl<$Res>
    extends _$LastMessageModelCopyWithImpl<$Res, _$LastMessageModelImpl>
    implements _$$LastMessageModelImplCopyWith<$Res> {
  __$$LastMessageModelImplCopyWithImpl(_$LastMessageModelImpl _value,
      $Res Function(_$LastMessageModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LastMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? chatId = freezed,
    Object? chatType = freezed,
    Object? senderId = freezed,
    Object? senderType = freezed,
    Object? isBot = freezed,
    Object? botIntent = freezed,
    Object? botConfidence = freezed,
    Object? botReplySource = freezed,
    Object? botMetadata = freezed,
    Object? receiverId = freezed,
    Object? replyTo = freezed,
    Object? content = freezed,
    Object? readAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? suggestions = freezed,
  }) {
    return _then(_$LastMessageModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      chatId: freezed == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int?,
      chatType: freezed == chatType
          ? _value.chatType
          : chatType // ignore: cast_nullable_to_non_nullable
              as String?,
      senderId: freezed == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as int?,
      senderType: freezed == senderType
          ? _value.senderType
          : senderType // ignore: cast_nullable_to_non_nullable
              as String?,
      isBot: freezed == isBot
          ? _value.isBot
          : isBot // ignore: cast_nullable_to_non_nullable
              as bool?,
      botIntent: freezed == botIntent
          ? _value.botIntent
          : botIntent // ignore: cast_nullable_to_non_nullable
              as String?,
      botConfidence: freezed == botConfidence
          ? _value.botConfidence
          : botConfidence // ignore: cast_nullable_to_non_nullable
              as String?,
      botReplySource: freezed == botReplySource
          ? _value.botReplySource
          : botReplySource // ignore: cast_nullable_to_non_nullable
              as String?,
      botMetadata: freezed == botMetadata
          ? _value.botMetadata
          : botMetadata // ignore: cast_nullable_to_non_nullable
              as dynamic,
      receiverId: freezed == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as int?,
      replyTo: freezed == replyTo
          ? _value.replyTo
          : replyTo // ignore: cast_nullable_to_non_nullable
              as dynamic,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      readAt: freezed == readAt
          ? _value.readAt
          : readAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      suggestions: freezed == suggestions
          ? _value._suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LastMessageModelImpl implements _LastMessageModel {
  const _$LastMessageModelImpl(
      {this.id,
      @JsonKey(name: 'chat_id') this.chatId,
      @JsonKey(name: 'chat_type') this.chatType,
      @JsonKey(name: 'sender_id') this.senderId,
      @JsonKey(name: 'sender_type') this.senderType,
      @JsonKey(name: 'is_bot') this.isBot,
      @JsonKey(name: 'bot_intent') this.botIntent,
      @JsonKey(name: 'bot_confidence') this.botConfidence,
      @JsonKey(name: 'bot_reply_source') this.botReplySource,
      @JsonKey(name: 'bot_metadata') this.botMetadata,
      @JsonKey(name: 'receiver_id') this.receiverId,
      @JsonKey(name: 'reply_to') this.replyTo,
      this.content,
      @JsonKey(name: 'read_at') this.readAt,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      final List<String>? suggestions})
      : _suggestions = suggestions;

  factory _$LastMessageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LastMessageModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'chat_id')
  final int? chatId;
  @override
  @JsonKey(name: 'chat_type')
  final String? chatType;
  @override
  @JsonKey(name: 'sender_id')
  final int? senderId;
  @override
  @JsonKey(name: 'sender_type')
  final String? senderType;
  @override
  @JsonKey(name: 'is_bot')
  final bool? isBot;
  @override
  @JsonKey(name: 'bot_intent')
  final String? botIntent;
  @override
  @JsonKey(name: 'bot_confidence')
  final String? botConfidence;
  @override
  @JsonKey(name: 'bot_reply_source')
  final String? botReplySource;
  @override
  @JsonKey(name: 'bot_metadata')
  final dynamic botMetadata;
  @override
  @JsonKey(name: 'receiver_id')
  final int? receiverId;
  @override
  @JsonKey(name: 'reply_to')
  final dynamic replyTo;
  @override
  final String? content;
  @override
  @JsonKey(name: 'read_at')
  final String? readAt;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  final List<String>? _suggestions;
  @override
  List<String>? get suggestions {
    final value = _suggestions;
    if (value == null) return null;
    if (_suggestions is EqualUnmodifiableListView) return _suggestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LastMessageModel(id: $id, chatId: $chatId, chatType: $chatType, senderId: $senderId, senderType: $senderType, isBot: $isBot, botIntent: $botIntent, botConfidence: $botConfidence, botReplySource: $botReplySource, botMetadata: $botMetadata, receiverId: $receiverId, replyTo: $replyTo, content: $content, readAt: $readAt, createdAt: $createdAt, updatedAt: $updatedAt, suggestions: $suggestions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LastMessageModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.chatType, chatType) ||
                other.chatType == chatType) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.senderType, senderType) ||
                other.senderType == senderType) &&
            (identical(other.isBot, isBot) || other.isBot == isBot) &&
            (identical(other.botIntent, botIntent) ||
                other.botIntent == botIntent) &&
            (identical(other.botConfidence, botConfidence) ||
                other.botConfidence == botConfidence) &&
            (identical(other.botReplySource, botReplySource) ||
                other.botReplySource == botReplySource) &&
            const DeepCollectionEquality()
                .equals(other.botMetadata, botMetadata) &&
            (identical(other.receiverId, receiverId) ||
                other.receiverId == receiverId) &&
            const DeepCollectionEquality().equals(other.replyTo, replyTo) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.readAt, readAt) || other.readAt == readAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other._suggestions, _suggestions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      chatId,
      chatType,
      senderId,
      senderType,
      isBot,
      botIntent,
      botConfidence,
      botReplySource,
      const DeepCollectionEquality().hash(botMetadata),
      receiverId,
      const DeepCollectionEquality().hash(replyTo),
      content,
      readAt,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_suggestions));

  /// Create a copy of LastMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LastMessageModelImplCopyWith<_$LastMessageModelImpl> get copyWith =>
      __$$LastMessageModelImplCopyWithImpl<_$LastMessageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LastMessageModelImplToJson(
      this,
    );
  }
}

abstract class _LastMessageModel implements LastMessageModel {
  const factory _LastMessageModel(
      {final int? id,
      @JsonKey(name: 'chat_id') final int? chatId,
      @JsonKey(name: 'chat_type') final String? chatType,
      @JsonKey(name: 'sender_id') final int? senderId,
      @JsonKey(name: 'sender_type') final String? senderType,
      @JsonKey(name: 'is_bot') final bool? isBot,
      @JsonKey(name: 'bot_intent') final String? botIntent,
      @JsonKey(name: 'bot_confidence') final String? botConfidence,
      @JsonKey(name: 'bot_reply_source') final String? botReplySource,
      @JsonKey(name: 'bot_metadata') final dynamic botMetadata,
      @JsonKey(name: 'receiver_id') final int? receiverId,
      @JsonKey(name: 'reply_to') final dynamic replyTo,
      final String? content,
      @JsonKey(name: 'read_at') final String? readAt,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt,
      final List<String>? suggestions}) = _$LastMessageModelImpl;

  factory _LastMessageModel.fromJson(Map<String, dynamic> json) =
      _$LastMessageModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'chat_id')
  int? get chatId;
  @override
  @JsonKey(name: 'chat_type')
  String? get chatType;
  @override
  @JsonKey(name: 'sender_id')
  int? get senderId;
  @override
  @JsonKey(name: 'sender_type')
  String? get senderType;
  @override
  @JsonKey(name: 'is_bot')
  bool? get isBot;
  @override
  @JsonKey(name: 'bot_intent')
  String? get botIntent;
  @override
  @JsonKey(name: 'bot_confidence')
  String? get botConfidence;
  @override
  @JsonKey(name: 'bot_reply_source')
  String? get botReplySource;
  @override
  @JsonKey(name: 'bot_metadata')
  dynamic get botMetadata;
  @override
  @JsonKey(name: 'receiver_id')
  int? get receiverId;
  @override
  @JsonKey(name: 'reply_to')
  dynamic get replyTo;
  @override
  String? get content;
  @override
  @JsonKey(name: 'read_at')
  String? get readAt;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  List<String>? get suggestions;

  /// Create a copy of LastMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LastMessageModelImplCopyWith<_$LastMessageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
