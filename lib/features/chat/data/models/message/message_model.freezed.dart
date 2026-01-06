// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageModel _$MessageModelFromJson(Map<String, dynamic> json) {
  return _MessageModel.fromJson(json);
}

/// @nodoc
mixin _$MessageModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'chat_id')
  int? get chatId => throw _privateConstructorUsedError;
  @JsonKey(name: 'sender_id')
  int? get senderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'chat_type')
  String? get chat_type => throw _privateConstructorUsedError;
  @JsonKey(name: 'receiver_id')
  int? get receiverId => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'read_at')
  String? get readAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'reply_to')
  int? get replyTo => throw _privateConstructorUsedError;
  SenderModel? get sender => throw _privateConstructorUsedError;
  SenderModel? get receiver => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<MessageImageModel>? get images => throw _privateConstructorUsedError;

  /// 🆕 Local image paths (not sent to/from backend)
  List<String>? get localImages => throw _privateConstructorUsedError;

  /// 🆕 Suggestions for quick replies
  List<String>? get suggestions => throw _privateConstructorUsedError;
  @JsonKey(name: 'bot_intent')
  String? get botIntent => throw _privateConstructorUsedError;
  @JsonKey(name: 'bot_confidence')
  String? get botConfidence => throw _privateConstructorUsedError;
  @JsonKey(name: 'bot_reply_source')
  String? get botReplySource => throw _privateConstructorUsedError;
  @JsonKey(name: 'bot_metadata')
  dynamic get botMetadata => throw _privateConstructorUsedError;

  /// Serializes this MessageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageModelCopyWith<MessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageModelCopyWith<$Res> {
  factory $MessageModelCopyWith(
          MessageModel value, $Res Function(MessageModel) then) =
      _$MessageModelCopyWithImpl<$Res, MessageModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'chat_id') int? chatId,
      @JsonKey(name: 'sender_id') int? senderId,
      @JsonKey(name: 'chat_type') String? chat_type,
      @JsonKey(name: 'receiver_id') int? receiverId,
      String? content,
      @JsonKey(name: 'read_at') String? readAt,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'reply_to') int? replyTo,
      SenderModel? sender,
      SenderModel? receiver,
      @JsonKey(name: 'images') List<MessageImageModel>? images,
      List<String>? localImages,
      List<String>? suggestions,
      @JsonKey(name: 'bot_intent') String? botIntent,
      @JsonKey(name: 'bot_confidence') String? botConfidence,
      @JsonKey(name: 'bot_reply_source') String? botReplySource,
      @JsonKey(name: 'bot_metadata') dynamic botMetadata});

  $SenderModelCopyWith<$Res>? get sender;
  $SenderModelCopyWith<$Res>? get receiver;
}

/// @nodoc
class _$MessageModelCopyWithImpl<$Res, $Val extends MessageModel>
    implements $MessageModelCopyWith<$Res> {
  _$MessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? chatId = freezed,
    Object? senderId = freezed,
    Object? chat_type = freezed,
    Object? receiverId = freezed,
    Object? content = freezed,
    Object? readAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? replyTo = freezed,
    Object? sender = freezed,
    Object? receiver = freezed,
    Object? images = freezed,
    Object? localImages = freezed,
    Object? suggestions = freezed,
    Object? botIntent = freezed,
    Object? botConfidence = freezed,
    Object? botReplySource = freezed,
    Object? botMetadata = freezed,
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
      senderId: freezed == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as int?,
      chat_type: freezed == chat_type
          ? _value.chat_type
          : chat_type // ignore: cast_nullable_to_non_nullable
              as String?,
      receiverId: freezed == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      replyTo: freezed == replyTo
          ? _value.replyTo
          : replyTo // ignore: cast_nullable_to_non_nullable
              as int?,
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
      localImages: freezed == localImages
          ? _value.localImages
          : localImages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      suggestions: freezed == suggestions
          ? _value.suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
    ) as $Val);
  }

  /// Create a copy of MessageModel
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

  /// Create a copy of MessageModel
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
}

/// @nodoc
abstract class _$$MessageModelImplCopyWith<$Res>
    implements $MessageModelCopyWith<$Res> {
  factory _$$MessageModelImplCopyWith(
          _$MessageModelImpl value, $Res Function(_$MessageModelImpl) then) =
      __$$MessageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'chat_id') int? chatId,
      @JsonKey(name: 'sender_id') int? senderId,
      @JsonKey(name: 'chat_type') String? chat_type,
      @JsonKey(name: 'receiver_id') int? receiverId,
      String? content,
      @JsonKey(name: 'read_at') String? readAt,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'reply_to') int? replyTo,
      SenderModel? sender,
      SenderModel? receiver,
      @JsonKey(name: 'images') List<MessageImageModel>? images,
      List<String>? localImages,
      List<String>? suggestions,
      @JsonKey(name: 'bot_intent') String? botIntent,
      @JsonKey(name: 'bot_confidence') String? botConfidence,
      @JsonKey(name: 'bot_reply_source') String? botReplySource,
      @JsonKey(name: 'bot_metadata') dynamic botMetadata});

  @override
  $SenderModelCopyWith<$Res>? get sender;
  @override
  $SenderModelCopyWith<$Res>? get receiver;
}

/// @nodoc
class __$$MessageModelImplCopyWithImpl<$Res>
    extends _$MessageModelCopyWithImpl<$Res, _$MessageModelImpl>
    implements _$$MessageModelImplCopyWith<$Res> {
  __$$MessageModelImplCopyWithImpl(
      _$MessageModelImpl _value, $Res Function(_$MessageModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? chatId = freezed,
    Object? senderId = freezed,
    Object? chat_type = freezed,
    Object? receiverId = freezed,
    Object? content = freezed,
    Object? readAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? replyTo = freezed,
    Object? sender = freezed,
    Object? receiver = freezed,
    Object? images = freezed,
    Object? localImages = freezed,
    Object? suggestions = freezed,
    Object? botIntent = freezed,
    Object? botConfidence = freezed,
    Object? botReplySource = freezed,
    Object? botMetadata = freezed,
  }) {
    return _then(_$MessageModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      chatId: freezed == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int?,
      senderId: freezed == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as int?,
      chat_type: freezed == chat_type
          ? _value.chat_type
          : chat_type // ignore: cast_nullable_to_non_nullable
              as String?,
      receiverId: freezed == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      replyTo: freezed == replyTo
          ? _value.replyTo
          : replyTo // ignore: cast_nullable_to_non_nullable
              as int?,
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
      localImages: freezed == localImages
          ? _value._localImages
          : localImages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      suggestions: freezed == suggestions
          ? _value._suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageModelImpl implements _MessageModel {
  const _$MessageModelImpl(
      {required this.id,
      @JsonKey(name: 'chat_id') required this.chatId,
      @JsonKey(name: 'sender_id') required this.senderId,
      @JsonKey(name: 'chat_type') this.chat_type,
      @JsonKey(name: 'receiver_id') required this.receiverId,
      required this.content,
      @JsonKey(name: 'read_at') this.readAt,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'reply_to') this.replyTo,
      required this.sender,
      this.receiver,
      @JsonKey(name: 'images') final List<MessageImageModel>? images,
      final List<String>? localImages,
      final List<String>? suggestions,
      @JsonKey(name: 'bot_intent') this.botIntent,
      @JsonKey(name: 'bot_confidence') this.botConfidence,
      @JsonKey(name: 'bot_reply_source') this.botReplySource,
      @JsonKey(name: 'bot_metadata') this.botMetadata})
      : _images = images,
        _localImages = localImages,
        _suggestions = suggestions;

  factory _$MessageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'chat_id')
  final int? chatId;
  @override
  @JsonKey(name: 'sender_id')
  final int? senderId;
  @override
  @JsonKey(name: 'chat_type')
  final String? chat_type;
  @override
  @JsonKey(name: 'receiver_id')
  final int? receiverId;
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
  @override
  @JsonKey(name: 'reply_to')
  final int? replyTo;
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

  /// 🆕 Local image paths (not sent to/from backend)
  final List<String>? _localImages;

  /// 🆕 Local image paths (not sent to/from backend)
  @override
  List<String>? get localImages {
    final value = _localImages;
    if (value == null) return null;
    if (_localImages is EqualUnmodifiableListView) return _localImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// 🆕 Suggestions for quick replies
  final List<String>? _suggestions;

  /// 🆕 Suggestions for quick replies
  @override
  List<String>? get suggestions {
    final value = _suggestions;
    if (value == null) return null;
    if (_suggestions is EqualUnmodifiableListView) return _suggestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
  String toString() {
    return 'MessageModel(id: $id, chatId: $chatId, senderId: $senderId, chat_type: $chat_type, receiverId: $receiverId, content: $content, readAt: $readAt, createdAt: $createdAt, updatedAt: $updatedAt, replyTo: $replyTo, sender: $sender, receiver: $receiver, images: $images, localImages: $localImages, suggestions: $suggestions, botIntent: $botIntent, botConfidence: $botConfidence, botReplySource: $botReplySource, botMetadata: $botMetadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.chat_type, chat_type) ||
                other.chat_type == chat_type) &&
            (identical(other.receiverId, receiverId) ||
                other.receiverId == receiverId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.readAt, readAt) || other.readAt == readAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.replyTo, replyTo) || other.replyTo == replyTo) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.receiver, receiver) ||
                other.receiver == receiver) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality()
                .equals(other._localImages, _localImages) &&
            const DeepCollectionEquality()
                .equals(other._suggestions, _suggestions) &&
            (identical(other.botIntent, botIntent) ||
                other.botIntent == botIntent) &&
            (identical(other.botConfidence, botConfidence) ||
                other.botConfidence == botConfidence) &&
            (identical(other.botReplySource, botReplySource) ||
                other.botReplySource == botReplySource) &&
            const DeepCollectionEquality()
                .equals(other.botMetadata, botMetadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        chatId,
        senderId,
        chat_type,
        receiverId,
        content,
        readAt,
        createdAt,
        updatedAt,
        replyTo,
        sender,
        receiver,
        const DeepCollectionEquality().hash(_images),
        const DeepCollectionEquality().hash(_localImages),
        const DeepCollectionEquality().hash(_suggestions),
        botIntent,
        botConfidence,
        botReplySource,
        const DeepCollectionEquality().hash(botMetadata)
      ]);

  /// Create a copy of MessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageModelImplCopyWith<_$MessageModelImpl> get copyWith =>
      __$$MessageModelImplCopyWithImpl<_$MessageModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageModelImplToJson(
      this,
    );
  }
}

abstract class _MessageModel implements MessageModel {
  const factory _MessageModel(
          {required final int? id,
          @JsonKey(name: 'chat_id') required final int? chatId,
          @JsonKey(name: 'sender_id') required final int? senderId,
          @JsonKey(name: 'chat_type') final String? chat_type,
          @JsonKey(name: 'receiver_id') required final int? receiverId,
          required final String? content,
          @JsonKey(name: 'read_at') final String? readAt,
          @JsonKey(name: 'created_at') required final String? createdAt,
          @JsonKey(name: 'updated_at') required final String? updatedAt,
          @JsonKey(name: 'reply_to') final int? replyTo,
          required final SenderModel? sender,
          final SenderModel? receiver,
          @JsonKey(name: 'images') final List<MessageImageModel>? images,
          final List<String>? localImages,
          final List<String>? suggestions,
          @JsonKey(name: 'bot_intent') final String? botIntent,
          @JsonKey(name: 'bot_confidence') final String? botConfidence,
          @JsonKey(name: 'bot_reply_source') final String? botReplySource,
          @JsonKey(name: 'bot_metadata') final dynamic botMetadata}) =
      _$MessageModelImpl;

  factory _MessageModel.fromJson(Map<String, dynamic> json) =
      _$MessageModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'chat_id')
  int? get chatId;
  @override
  @JsonKey(name: 'sender_id')
  int? get senderId;
  @override
  @JsonKey(name: 'chat_type')
  String? get chat_type;
  @override
  @JsonKey(name: 'receiver_id')
  int? get receiverId;
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
  @JsonKey(name: 'reply_to')
  int? get replyTo;
  @override
  SenderModel? get sender;
  @override
  SenderModel? get receiver;
  @override
  @JsonKey(name: 'images')
  List<MessageImageModel>? get images;

  /// 🆕 Local image paths (not sent to/from backend)
  @override
  List<String>? get localImages;

  /// 🆕 Suggestions for quick replies
  @override
  List<String>? get suggestions;
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

  /// Create a copy of MessageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageModelImplCopyWith<_$MessageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MessageImageModel _$MessageImageModelFromJson(Map<String, dynamic> json) {
  return _MessageImageModel.fromJson(json);
}

/// @nodoc
mixin _$MessageImageModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'message_id')
  int? get messageId => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this MessageImageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageImageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageImageModelCopyWith<MessageImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageImageModelCopyWith<$Res> {
  factory $MessageImageModelCopyWith(
          MessageImageModel value, $Res Function(MessageImageModel) then) =
      _$MessageImageModelCopyWithImpl<$Res, MessageImageModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'message_id') int? messageId,
      String? path,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class _$MessageImageModelCopyWithImpl<$Res, $Val extends MessageImageModel>
    implements $MessageImageModelCopyWith<$Res> {
  _$MessageImageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageImageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? messageId = freezed,
    Object? path = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      messageId: freezed == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as int?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$MessageImageModelImplCopyWith<$Res>
    implements $MessageImageModelCopyWith<$Res> {
  factory _$$MessageImageModelImplCopyWith(_$MessageImageModelImpl value,
          $Res Function(_$MessageImageModelImpl) then) =
      __$$MessageImageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'message_id') int? messageId,
      String? path,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class __$$MessageImageModelImplCopyWithImpl<$Res>
    extends _$MessageImageModelCopyWithImpl<$Res, _$MessageImageModelImpl>
    implements _$$MessageImageModelImplCopyWith<$Res> {
  __$$MessageImageModelImplCopyWithImpl(_$MessageImageModelImpl _value,
      $Res Function(_$MessageImageModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageImageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? messageId = freezed,
    Object? path = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$MessageImageModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      messageId: freezed == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as int?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$MessageImageModelImpl extends _MessageImageModel {
  const _$MessageImageModelImpl(
      {required this.id,
      @JsonKey(name: 'message_id') this.messageId,
      required this.path,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt})
      : super._();

  factory _$MessageImageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageImageModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'message_id')
  final int? messageId;
  @override
  final String? path;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'MessageImageModel(id: $id, messageId: $messageId, path: $path, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageImageModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, messageId, path, createdAt, updatedAt);

  /// Create a copy of MessageImageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageImageModelImplCopyWith<_$MessageImageModelImpl> get copyWith =>
      __$$MessageImageModelImplCopyWithImpl<_$MessageImageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageImageModelImplToJson(
      this,
    );
  }
}

abstract class _MessageImageModel extends MessageImageModel {
  const factory _MessageImageModel(
          {required final int? id,
          @JsonKey(name: 'message_id') final int? messageId,
          required final String? path,
          @JsonKey(name: 'created_at') final String? createdAt,
          @JsonKey(name: 'updated_at') final String? updatedAt}) =
      _$MessageImageModelImpl;
  const _MessageImageModel._() : super._();

  factory _MessageImageModel.fromJson(Map<String, dynamic> json) =
      _$MessageImageModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'message_id')
  int? get messageId;
  @override
  String? get path;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;

  /// Create a copy of MessageImageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageImageModelImplCopyWith<_$MessageImageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SenderModel _$SenderModelFromJson(Map<String, dynamic> json) {
  return _SenderModel.fromJson(json);
}

/// @nodoc
mixin _$SenderModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_id')
  int? get businessId => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_business')
  String? get imageBusiness => throw _privateConstructorUsedError;
  String? get lang => throw _privateConstructorUsedError;
  VisibilityModel? get visibility =>
      throw _privateConstructorUsedError; // <-- updated
  String? get sms => throw _privateConstructorUsedError;
  @JsonKey(name: 'send_email')
  String? get sendEmail => throw _privateConstructorUsedError;
  String? get push => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_verified_at')
  String? get emailVerifiedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'personal_rating')
  int? get personalRating => throw _privateConstructorUsedError;
  @JsonKey(name: 'personal_rating_count')
  int? get personalRatingCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_rating')
  int? get businessRating => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_rating_count')
  int? get businessRatingCount => throw _privateConstructorUsedError;

  /// Serializes this SenderModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SenderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SenderModelCopyWith<SenderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SenderModelCopyWith<$Res> {
  factory $SenderModelCopyWith(
          SenderModel value, $Res Function(SenderModel) then) =
      _$SenderModelCopyWithImpl<$Res, SenderModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'business_id') int? businessId,
      String? email,
      String? name,
      String? role,
      String? phone,
      String? image,
      @JsonKey(name: 'image_business') String? imageBusiness,
      String? lang,
      VisibilityModel? visibility,
      String? sms,
      @JsonKey(name: 'send_email') String? sendEmail,
      String? push,
      String? status,
      @JsonKey(name: 'email_verified_at') String? emailVerifiedAt,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'personal_rating') int? personalRating,
      @JsonKey(name: 'personal_rating_count') int? personalRatingCount,
      @JsonKey(name: 'business_rating') int? businessRating,
      @JsonKey(name: 'business_rating_count') int? businessRatingCount});

  $VisibilityModelCopyWith<$Res>? get visibility;
}

/// @nodoc
class _$SenderModelCopyWithImpl<$Res, $Val extends SenderModel>
    implements $SenderModelCopyWith<$Res> {
  _$SenderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SenderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? businessId = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? role = freezed,
    Object? phone = freezed,
    Object? image = freezed,
    Object? imageBusiness = freezed,
    Object? lang = freezed,
    Object? visibility = freezed,
    Object? sms = freezed,
    Object? sendEmail = freezed,
    Object? push = freezed,
    Object? status = freezed,
    Object? emailVerifiedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? personalRating = freezed,
    Object? personalRatingCount = freezed,
    Object? businessRating = freezed,
    Object? businessRatingCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      businessId: freezed == businessId
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      imageBusiness: freezed == imageBusiness
          ? _value.imageBusiness
          : imageBusiness // ignore: cast_nullable_to_non_nullable
              as String?,
      lang: freezed == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as VisibilityModel?,
      sms: freezed == sms
          ? _value.sms
          : sms // ignore: cast_nullable_to_non_nullable
              as String?,
      sendEmail: freezed == sendEmail
          ? _value.sendEmail
          : sendEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      push: freezed == push
          ? _value.push
          : push // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      personalRating: freezed == personalRating
          ? _value.personalRating
          : personalRating // ignore: cast_nullable_to_non_nullable
              as int?,
      personalRatingCount: freezed == personalRatingCount
          ? _value.personalRatingCount
          : personalRatingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      businessRating: freezed == businessRating
          ? _value.businessRating
          : businessRating // ignore: cast_nullable_to_non_nullable
              as int?,
      businessRatingCount: freezed == businessRatingCount
          ? _value.businessRatingCount
          : businessRatingCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of SenderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VisibilityModelCopyWith<$Res>? get visibility {
    if (_value.visibility == null) {
      return null;
    }

    return $VisibilityModelCopyWith<$Res>(_value.visibility!, (value) {
      return _then(_value.copyWith(visibility: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SenderModelImplCopyWith<$Res>
    implements $SenderModelCopyWith<$Res> {
  factory _$$SenderModelImplCopyWith(
          _$SenderModelImpl value, $Res Function(_$SenderModelImpl) then) =
      __$$SenderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'business_id') int? businessId,
      String? email,
      String? name,
      String? role,
      String? phone,
      String? image,
      @JsonKey(name: 'image_business') String? imageBusiness,
      String? lang,
      VisibilityModel? visibility,
      String? sms,
      @JsonKey(name: 'send_email') String? sendEmail,
      String? push,
      String? status,
      @JsonKey(name: 'email_verified_at') String? emailVerifiedAt,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'personal_rating') int? personalRating,
      @JsonKey(name: 'personal_rating_count') int? personalRatingCount,
      @JsonKey(name: 'business_rating') int? businessRating,
      @JsonKey(name: 'business_rating_count') int? businessRatingCount});

  @override
  $VisibilityModelCopyWith<$Res>? get visibility;
}

/// @nodoc
class __$$SenderModelImplCopyWithImpl<$Res>
    extends _$SenderModelCopyWithImpl<$Res, _$SenderModelImpl>
    implements _$$SenderModelImplCopyWith<$Res> {
  __$$SenderModelImplCopyWithImpl(
      _$SenderModelImpl _value, $Res Function(_$SenderModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SenderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? businessId = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? role = freezed,
    Object? phone = freezed,
    Object? image = freezed,
    Object? imageBusiness = freezed,
    Object? lang = freezed,
    Object? visibility = freezed,
    Object? sms = freezed,
    Object? sendEmail = freezed,
    Object? push = freezed,
    Object? status = freezed,
    Object? emailVerifiedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? personalRating = freezed,
    Object? personalRatingCount = freezed,
    Object? businessRating = freezed,
    Object? businessRatingCount = freezed,
  }) {
    return _then(_$SenderModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      businessId: freezed == businessId
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      imageBusiness: freezed == imageBusiness
          ? _value.imageBusiness
          : imageBusiness // ignore: cast_nullable_to_non_nullable
              as String?,
      lang: freezed == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as VisibilityModel?,
      sms: freezed == sms
          ? _value.sms
          : sms // ignore: cast_nullable_to_non_nullable
              as String?,
      sendEmail: freezed == sendEmail
          ? _value.sendEmail
          : sendEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      push: freezed == push
          ? _value.push
          : push // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      personalRating: freezed == personalRating
          ? _value.personalRating
          : personalRating // ignore: cast_nullable_to_non_nullable
              as int?,
      personalRatingCount: freezed == personalRatingCount
          ? _value.personalRatingCount
          : personalRatingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      businessRating: freezed == businessRating
          ? _value.businessRating
          : businessRating // ignore: cast_nullable_to_non_nullable
              as int?,
      businessRatingCount: freezed == businessRatingCount
          ? _value.businessRatingCount
          : businessRatingCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SenderModelImpl extends _SenderModel {
  const _$SenderModelImpl(
      {required this.id,
      @JsonKey(name: 'business_id') this.businessId,
      required this.email,
      required this.name,
      required this.role,
      this.phone,
      this.image,
      @JsonKey(name: 'image_business') this.imageBusiness,
      this.lang,
      this.visibility,
      this.sms,
      @JsonKey(name: 'send_email') this.sendEmail,
      this.push,
      this.status,
      @JsonKey(name: 'email_verified_at') this.emailVerifiedAt,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'personal_rating') required this.personalRating,
      @JsonKey(name: 'personal_rating_count') required this.personalRatingCount,
      @JsonKey(name: 'business_rating') required this.businessRating,
      @JsonKey(name: 'business_rating_count')
      required this.businessRatingCount})
      : super._();

  factory _$SenderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SenderModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'business_id')
  final int? businessId;
  @override
  final String? email;
  @override
  final String? name;
  @override
  final String? role;
  @override
  final String? phone;
  @override
  final String? image;
  @override
  @JsonKey(name: 'image_business')
  final String? imageBusiness;
  @override
  final String? lang;
  @override
  final VisibilityModel? visibility;
// <-- updated
  @override
  final String? sms;
  @override
  @JsonKey(name: 'send_email')
  final String? sendEmail;
  @override
  final String? push;
  @override
  final String? status;
  @override
  @JsonKey(name: 'email_verified_at')
  final String? emailVerifiedAt;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'personal_rating')
  final int? personalRating;
  @override
  @JsonKey(name: 'personal_rating_count')
  final int? personalRatingCount;
  @override
  @JsonKey(name: 'business_rating')
  final int? businessRating;
  @override
  @JsonKey(name: 'business_rating_count')
  final int? businessRatingCount;

  @override
  String toString() {
    return 'SenderModel(id: $id, businessId: $businessId, email: $email, name: $name, role: $role, phone: $phone, image: $image, imageBusiness: $imageBusiness, lang: $lang, visibility: $visibility, sms: $sms, sendEmail: $sendEmail, push: $push, status: $status, emailVerifiedAt: $emailVerifiedAt, createdAt: $createdAt, updatedAt: $updatedAt, personalRating: $personalRating, personalRatingCount: $personalRatingCount, businessRating: $businessRating, businessRatingCount: $businessRatingCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SenderModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.businessId, businessId) ||
                other.businessId == businessId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.imageBusiness, imageBusiness) ||
                other.imageBusiness == imageBusiness) &&
            (identical(other.lang, lang) || other.lang == lang) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.sms, sms) || other.sms == sms) &&
            (identical(other.sendEmail, sendEmail) ||
                other.sendEmail == sendEmail) &&
            (identical(other.push, push) || other.push == push) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.emailVerifiedAt, emailVerifiedAt) ||
                other.emailVerifiedAt == emailVerifiedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.personalRating, personalRating) ||
                other.personalRating == personalRating) &&
            (identical(other.personalRatingCount, personalRatingCount) ||
                other.personalRatingCount == personalRatingCount) &&
            (identical(other.businessRating, businessRating) ||
                other.businessRating == businessRating) &&
            (identical(other.businessRatingCount, businessRatingCount) ||
                other.businessRatingCount == businessRatingCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        businessId,
        email,
        name,
        role,
        phone,
        image,
        imageBusiness,
        lang,
        visibility,
        sms,
        sendEmail,
        push,
        status,
        emailVerifiedAt,
        createdAt,
        updatedAt,
        personalRating,
        personalRatingCount,
        businessRating,
        businessRatingCount
      ]);

  /// Create a copy of SenderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SenderModelImplCopyWith<_$SenderModelImpl> get copyWith =>
      __$$SenderModelImplCopyWithImpl<_$SenderModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SenderModelImplToJson(
      this,
    );
  }
}

abstract class _SenderModel extends SenderModel {
  const factory _SenderModel(
      {required final int? id,
      @JsonKey(name: 'business_id') final int? businessId,
      required final String? email,
      required final String? name,
      required final String? role,
      final String? phone,
      final String? image,
      @JsonKey(name: 'image_business') final String? imageBusiness,
      final String? lang,
      final VisibilityModel? visibility,
      final String? sms,
      @JsonKey(name: 'send_email') final String? sendEmail,
      final String? push,
      final String? status,
      @JsonKey(name: 'email_verified_at') final String? emailVerifiedAt,
      @JsonKey(name: 'created_at') required final String? createdAt,
      @JsonKey(name: 'updated_at') required final String? updatedAt,
      @JsonKey(name: 'personal_rating') required final int? personalRating,
      @JsonKey(name: 'personal_rating_count')
      required final int? personalRatingCount,
      @JsonKey(name: 'business_rating') required final int? businessRating,
      @JsonKey(name: 'business_rating_count')
      required final int? businessRatingCount}) = _$SenderModelImpl;
  const _SenderModel._() : super._();

  factory _SenderModel.fromJson(Map<String, dynamic> json) =
      _$SenderModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'business_id')
  int? get businessId;
  @override
  String? get email;
  @override
  String? get name;
  @override
  String? get role;
  @override
  String? get phone;
  @override
  String? get image;
  @override
  @JsonKey(name: 'image_business')
  String? get imageBusiness;
  @override
  String? get lang;
  @override
  VisibilityModel? get visibility; // <-- updated
  @override
  String? get sms;
  @override
  @JsonKey(name: 'send_email')
  String? get sendEmail;
  @override
  String? get push;
  @override
  String? get status;
  @override
  @JsonKey(name: 'email_verified_at')
  String? get emailVerifiedAt;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'personal_rating')
  int? get personalRating;
  @override
  @JsonKey(name: 'personal_rating_count')
  int? get personalRatingCount;
  @override
  @JsonKey(name: 'business_rating')
  int? get businessRating;
  @override
  @JsonKey(name: 'business_rating_count')
  int? get businessRatingCount;

  /// Create a copy of SenderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SenderModelImplCopyWith<_$SenderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VisibilityModel _$VisibilityModelFromJson(Map<String, dynamic> json) {
  return _VisibilityModel.fromJson(json);
}

/// @nodoc
mixin _$VisibilityModel {
  bool get profile => throw _privateConstructorUsedError;
  bool get phone => throw _privateConstructorUsedError;
  bool get email => throw _privateConstructorUsedError;

  /// Serializes this VisibilityModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VisibilityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VisibilityModelCopyWith<VisibilityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisibilityModelCopyWith<$Res> {
  factory $VisibilityModelCopyWith(
          VisibilityModel value, $Res Function(VisibilityModel) then) =
      _$VisibilityModelCopyWithImpl<$Res, VisibilityModel>;
  @useResult
  $Res call({bool profile, bool phone, bool email});
}

/// @nodoc
class _$VisibilityModelCopyWithImpl<$Res, $Val extends VisibilityModel>
    implements $VisibilityModelCopyWith<$Res> {
  _$VisibilityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VisibilityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
    Object? phone = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as bool,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as bool,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VisibilityModelImplCopyWith<$Res>
    implements $VisibilityModelCopyWith<$Res> {
  factory _$$VisibilityModelImplCopyWith(_$VisibilityModelImpl value,
          $Res Function(_$VisibilityModelImpl) then) =
      __$$VisibilityModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool profile, bool phone, bool email});
}

/// @nodoc
class __$$VisibilityModelImplCopyWithImpl<$Res>
    extends _$VisibilityModelCopyWithImpl<$Res, _$VisibilityModelImpl>
    implements _$$VisibilityModelImplCopyWith<$Res> {
  __$$VisibilityModelImplCopyWithImpl(
      _$VisibilityModelImpl _value, $Res Function(_$VisibilityModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of VisibilityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
    Object? phone = null,
    Object? email = null,
  }) {
    return _then(_$VisibilityModelImpl(
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as bool,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as bool,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VisibilityModelImpl implements _VisibilityModel {
  const _$VisibilityModelImpl(
      {required this.profile, required this.phone, required this.email});

  factory _$VisibilityModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VisibilityModelImplFromJson(json);

  @override
  final bool profile;
  @override
  final bool phone;
  @override
  final bool email;

  @override
  String toString() {
    return 'VisibilityModel(profile: $profile, phone: $phone, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisibilityModelImpl &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, profile, phone, email);

  /// Create a copy of VisibilityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VisibilityModelImplCopyWith<_$VisibilityModelImpl> get copyWith =>
      __$$VisibilityModelImplCopyWithImpl<_$VisibilityModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VisibilityModelImplToJson(
      this,
    );
  }
}

abstract class _VisibilityModel implements VisibilityModel {
  const factory _VisibilityModel(
      {required final bool profile,
      required final bool phone,
      required final bool email}) = _$VisibilityModelImpl;

  factory _VisibilityModel.fromJson(Map<String, dynamic> json) =
      _$VisibilityModelImpl.fromJson;

  @override
  bool get profile;
  @override
  bool get phone;
  @override
  bool get email;

  /// Create a copy of VisibilityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VisibilityModelImplCopyWith<_$VisibilityModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
