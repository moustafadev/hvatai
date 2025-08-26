// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SocketMessageModel _$SocketMessageModelFromJson(Map<String, dynamic> json) {
  return _SocketMessageModel.fromJson(json);
}

/// @nodoc
mixin _$SocketMessageModel {
  SocketMessage get message => throw _privateConstructorUsedError;

  /// Serializes this SocketMessageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SocketMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SocketMessageModelCopyWith<SocketMessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketMessageModelCopyWith<$Res> {
  factory $SocketMessageModelCopyWith(
          SocketMessageModel value, $Res Function(SocketMessageModel) then) =
      _$SocketMessageModelCopyWithImpl<$Res, SocketMessageModel>;
  @useResult
  $Res call({SocketMessage message});

  $SocketMessageCopyWith<$Res> get message;
}

/// @nodoc
class _$SocketMessageModelCopyWithImpl<$Res, $Val extends SocketMessageModel>
    implements $SocketMessageModelCopyWith<$Res> {
  _$SocketMessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SocketMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as SocketMessage,
    ) as $Val);
  }

  /// Create a copy of SocketMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SocketMessageCopyWith<$Res> get message {
    return $SocketMessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SocketMessageModelImplCopyWith<$Res>
    implements $SocketMessageModelCopyWith<$Res> {
  factory _$$SocketMessageModelImplCopyWith(_$SocketMessageModelImpl value,
          $Res Function(_$SocketMessageModelImpl) then) =
      __$$SocketMessageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SocketMessage message});

  @override
  $SocketMessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$SocketMessageModelImplCopyWithImpl<$Res>
    extends _$SocketMessageModelCopyWithImpl<$Res, _$SocketMessageModelImpl>
    implements _$$SocketMessageModelImplCopyWith<$Res> {
  __$$SocketMessageModelImplCopyWithImpl(_$SocketMessageModelImpl _value,
      $Res Function(_$SocketMessageModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocketMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SocketMessageModelImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as SocketMessage,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocketMessageModelImpl implements _SocketMessageModel {
  const _$SocketMessageModelImpl({required this.message});

  factory _$SocketMessageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocketMessageModelImplFromJson(json);

  @override
  final SocketMessage message;

  @override
  String toString() {
    return 'SocketMessageModel(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketMessageModelImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of SocketMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketMessageModelImplCopyWith<_$SocketMessageModelImpl> get copyWith =>
      __$$SocketMessageModelImplCopyWithImpl<_$SocketMessageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocketMessageModelImplToJson(
      this,
    );
  }
}

abstract class _SocketMessageModel implements SocketMessageModel {
  const factory _SocketMessageModel({required final SocketMessage message}) =
      _$SocketMessageModelImpl;

  factory _SocketMessageModel.fromJson(Map<String, dynamic> json) =
      _$SocketMessageModelImpl.fromJson;

  @override
  SocketMessage get message;

  /// Create a copy of SocketMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocketMessageModelImplCopyWith<_$SocketMessageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SocketMessage _$SocketMessageFromJson(Map<String, dynamic> json) {
  return _SocketMessage.fromJson(json);
}

/// @nodoc
mixin _$SocketMessage {
  int get id => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  SenderReceiverModel? get sender => throw _privateConstructorUsedError;
  SenderReceiverModel? get receiver => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<MessageImageModel>? get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'reply_to')
  dynamic get replyTo => throw _privateConstructorUsedError;
  @JsonKey(name: 'chat_id')
  int? get chatId => throw _privateConstructorUsedError;

  /// Serializes this SocketMessage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SocketMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SocketMessageCopyWith<SocketMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketMessageCopyWith<$Res> {
  factory $SocketMessageCopyWith(
          SocketMessage value, $Res Function(SocketMessage) then) =
      _$SocketMessageCopyWithImpl<$Res, SocketMessage>;
  @useResult
  $Res call(
      {int id,
      String? content,
      @JsonKey(name: 'created_at') String? createdAt,
      SenderReceiverModel? sender,
      SenderReceiverModel? receiver,
      @JsonKey(name: 'images') List<MessageImageModel>? images,
      @JsonKey(name: 'reply_to') dynamic replyTo,
      @JsonKey(name: 'chat_id') int? chatId});

  $SenderReceiverModelCopyWith<$Res>? get sender;
  $SenderReceiverModelCopyWith<$Res>? get receiver;
}

/// @nodoc
class _$SocketMessageCopyWithImpl<$Res, $Val extends SocketMessage>
    implements $SocketMessageCopyWith<$Res> {
  _$SocketMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SocketMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? sender = freezed,
    Object? receiver = freezed,
    Object? images = freezed,
    Object? replyTo = freezed,
    Object? chatId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      sender: freezed == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as SenderReceiverModel?,
      receiver: freezed == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as SenderReceiverModel?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<MessageImageModel>?,
      replyTo: freezed == replyTo
          ? _value.replyTo
          : replyTo // ignore: cast_nullable_to_non_nullable
              as dynamic,
      chatId: freezed == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of SocketMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SenderReceiverModelCopyWith<$Res>? get sender {
    if (_value.sender == null) {
      return null;
    }

    return $SenderReceiverModelCopyWith<$Res>(_value.sender!, (value) {
      return _then(_value.copyWith(sender: value) as $Val);
    });
  }

  /// Create a copy of SocketMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SenderReceiverModelCopyWith<$Res>? get receiver {
    if (_value.receiver == null) {
      return null;
    }

    return $SenderReceiverModelCopyWith<$Res>(_value.receiver!, (value) {
      return _then(_value.copyWith(receiver: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SocketMessageImplCopyWith<$Res>
    implements $SocketMessageCopyWith<$Res> {
  factory _$$SocketMessageImplCopyWith(
          _$SocketMessageImpl value, $Res Function(_$SocketMessageImpl) then) =
      __$$SocketMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? content,
      @JsonKey(name: 'created_at') String? createdAt,
      SenderReceiverModel? sender,
      SenderReceiverModel? receiver,
      @JsonKey(name: 'images') List<MessageImageModel>? images,
      @JsonKey(name: 'reply_to') dynamic replyTo,
      @JsonKey(name: 'chat_id') int? chatId});

  @override
  $SenderReceiverModelCopyWith<$Res>? get sender;
  @override
  $SenderReceiverModelCopyWith<$Res>? get receiver;
}

/// @nodoc
class __$$SocketMessageImplCopyWithImpl<$Res>
    extends _$SocketMessageCopyWithImpl<$Res, _$SocketMessageImpl>
    implements _$$SocketMessageImplCopyWith<$Res> {
  __$$SocketMessageImplCopyWithImpl(
      _$SocketMessageImpl _value, $Res Function(_$SocketMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocketMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? sender = freezed,
    Object? receiver = freezed,
    Object? images = freezed,
    Object? replyTo = freezed,
    Object? chatId = freezed,
  }) {
    return _then(_$SocketMessageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      sender: freezed == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as SenderReceiverModel?,
      receiver: freezed == receiver
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as SenderReceiverModel?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<MessageImageModel>?,
      replyTo: freezed == replyTo
          ? _value.replyTo
          : replyTo // ignore: cast_nullable_to_non_nullable
              as dynamic,
      chatId: freezed == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocketMessageImpl implements _SocketMessage {
  const _$SocketMessageImpl(
      {required this.id,
      this.content,
      @JsonKey(name: 'created_at') this.createdAt,
      this.sender,
      this.receiver,
      @JsonKey(name: 'images') final List<MessageImageModel>? images,
      @JsonKey(name: 'reply_to') this.replyTo,
      @JsonKey(name: 'chat_id') this.chatId})
      : _images = images;

  factory _$SocketMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocketMessageImplFromJson(json);

  @override
  final int id;
  @override
  final String? content;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  final SenderReceiverModel? sender;
  @override
  final SenderReceiverModel? receiver;
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
  @JsonKey(name: 'reply_to')
  final dynamic replyTo;
  @override
  @JsonKey(name: 'chat_id')
  final int? chatId;

  @override
  String toString() {
    return 'SocketMessage(id: $id, content: $content, createdAt: $createdAt, sender: $sender, receiver: $receiver, images: $images, replyTo: $replyTo, chatId: $chatId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketMessageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.receiver, receiver) ||
                other.receiver == receiver) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other.replyTo, replyTo) &&
            (identical(other.chatId, chatId) || other.chatId == chatId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      content,
      createdAt,
      sender,
      receiver,
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(replyTo),
      chatId);

  /// Create a copy of SocketMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketMessageImplCopyWith<_$SocketMessageImpl> get copyWith =>
      __$$SocketMessageImplCopyWithImpl<_$SocketMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocketMessageImplToJson(
      this,
    );
  }
}

abstract class _SocketMessage implements SocketMessage {
  const factory _SocketMessage(
      {required final int id,
      final String? content,
      @JsonKey(name: 'created_at') final String? createdAt,
      final SenderReceiverModel? sender,
      final SenderReceiverModel? receiver,
      @JsonKey(name: 'images') final List<MessageImageModel>? images,
      @JsonKey(name: 'reply_to') final dynamic replyTo,
      @JsonKey(name: 'chat_id') final int? chatId}) = _$SocketMessageImpl;

  factory _SocketMessage.fromJson(Map<String, dynamic> json) =
      _$SocketMessageImpl.fromJson;

  @override
  int get id;
  @override
  String? get content;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  SenderReceiverModel? get sender;
  @override
  SenderReceiverModel? get receiver;
  @override
  @JsonKey(name: 'images')
  List<MessageImageModel>? get images;
  @override
  @JsonKey(name: 'reply_to')
  dynamic get replyTo;
  @override
  @JsonKey(name: 'chat_id')
  int? get chatId;

  /// Create a copy of SocketMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocketMessageImplCopyWith<_$SocketMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SenderReceiverModel _$SenderReceiverModelFromJson(Map<String, dynamic> json) {
  return _SenderReceiverModel.fromJson(json);
}

/// @nodoc
mixin _$SenderReceiverModel {
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
  String? get visibility => throw _privateConstructorUsedError;
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

  /// Serializes this SenderReceiverModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SenderReceiverModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SenderReceiverModelCopyWith<SenderReceiverModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SenderReceiverModelCopyWith<$Res> {
  factory $SenderReceiverModelCopyWith(
          SenderReceiverModel value, $Res Function(SenderReceiverModel) then) =
      _$SenderReceiverModelCopyWithImpl<$Res, SenderReceiverModel>;
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
      String? visibility,
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
}

/// @nodoc
class _$SenderReceiverModelCopyWithImpl<$Res, $Val extends SenderReceiverModel>
    implements $SenderReceiverModelCopyWith<$Res> {
  _$SenderReceiverModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SenderReceiverModel
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
              as String?,
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
}

/// @nodoc
abstract class _$$SenderReceiverModelImplCopyWith<$Res>
    implements $SenderReceiverModelCopyWith<$Res> {
  factory _$$SenderReceiverModelImplCopyWith(_$SenderReceiverModelImpl value,
          $Res Function(_$SenderReceiverModelImpl) then) =
      __$$SenderReceiverModelImplCopyWithImpl<$Res>;
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
      String? visibility,
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
}

/// @nodoc
class __$$SenderReceiverModelImplCopyWithImpl<$Res>
    extends _$SenderReceiverModelCopyWithImpl<$Res, _$SenderReceiverModelImpl>
    implements _$$SenderReceiverModelImplCopyWith<$Res> {
  __$$SenderReceiverModelImplCopyWithImpl(_$SenderReceiverModelImpl _value,
      $Res Function(_$SenderReceiverModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SenderReceiverModel
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
    return _then(_$SenderReceiverModelImpl(
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
              as String?,
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
class _$SenderReceiverModelImpl implements _SenderReceiverModel {
  const _$SenderReceiverModelImpl(
      {this.id,
      @JsonKey(name: 'business_id') this.businessId,
      this.email,
      this.name,
      this.role,
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
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'personal_rating') this.personalRating,
      @JsonKey(name: 'personal_rating_count') this.personalRatingCount,
      @JsonKey(name: 'business_rating') this.businessRating,
      @JsonKey(name: 'business_rating_count') this.businessRatingCount});

  factory _$SenderReceiverModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SenderReceiverModelImplFromJson(json);

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
  final String? visibility;
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
    return 'SenderReceiverModel(id: $id, businessId: $businessId, email: $email, name: $name, role: $role, phone: $phone, image: $image, imageBusiness: $imageBusiness, lang: $lang, visibility: $visibility, sms: $sms, sendEmail: $sendEmail, push: $push, status: $status, emailVerifiedAt: $emailVerifiedAt, createdAt: $createdAt, updatedAt: $updatedAt, personalRating: $personalRating, personalRatingCount: $personalRatingCount, businessRating: $businessRating, businessRatingCount: $businessRatingCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SenderReceiverModelImpl &&
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

  /// Create a copy of SenderReceiverModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SenderReceiverModelImplCopyWith<_$SenderReceiverModelImpl> get copyWith =>
      __$$SenderReceiverModelImplCopyWithImpl<_$SenderReceiverModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SenderReceiverModelImplToJson(
      this,
    );
  }
}

abstract class _SenderReceiverModel implements SenderReceiverModel {
  const factory _SenderReceiverModel(
      {final int? id,
      @JsonKey(name: 'business_id') final int? businessId,
      final String? email,
      final String? name,
      final String? role,
      final String? phone,
      final String? image,
      @JsonKey(name: 'image_business') final String? imageBusiness,
      final String? lang,
      final String? visibility,
      final String? sms,
      @JsonKey(name: 'send_email') final String? sendEmail,
      final String? push,
      final String? status,
      @JsonKey(name: 'email_verified_at') final String? emailVerifiedAt,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt,
      @JsonKey(name: 'personal_rating') final int? personalRating,
      @JsonKey(name: 'personal_rating_count') final int? personalRatingCount,
      @JsonKey(name: 'business_rating') final int? businessRating,
      @JsonKey(name: 'business_rating_count')
      final int? businessRatingCount}) = _$SenderReceiverModelImpl;

  factory _SenderReceiverModel.fromJson(Map<String, dynamic> json) =
      _$SenderReceiverModelImpl.fromJson;

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
  String? get visibility;
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

  /// Create a copy of SenderReceiverModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SenderReceiverModelImplCopyWith<_$SenderReceiverModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
