// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'read_message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReadMessageModel _$ReadMessageModelFromJson(Map<String, dynamic> json) {
  return _ReadMessageModel.fromJson(json);
}

/// @nodoc
mixin _$ReadMessageModel {
  @JsonKey(name: 'message_ids')
  List<int> get messageIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'read_by')
  int get readBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'chat_id')
  int get chatId => throw _privateConstructorUsedError;

  /// Serializes this ReadMessageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReadMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReadMessageModelCopyWith<ReadMessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadMessageModelCopyWith<$Res> {
  factory $ReadMessageModelCopyWith(
          ReadMessageModel value, $Res Function(ReadMessageModel) then) =
      _$ReadMessageModelCopyWithImpl<$Res, ReadMessageModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message_ids') List<int> messageIds,
      @JsonKey(name: 'read_by') int readBy,
      @JsonKey(name: 'chat_id') int chatId});
}

/// @nodoc
class _$ReadMessageModelCopyWithImpl<$Res, $Val extends ReadMessageModel>
    implements $ReadMessageModelCopyWith<$Res> {
  _$ReadMessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReadMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageIds = null,
    Object? readBy = null,
    Object? chatId = null,
  }) {
    return _then(_value.copyWith(
      messageIds: null == messageIds
          ? _value.messageIds
          : messageIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      readBy: null == readBy
          ? _value.readBy
          : readBy // ignore: cast_nullable_to_non_nullable
              as int,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReadMessageModelImplCopyWith<$Res>
    implements $ReadMessageModelCopyWith<$Res> {
  factory _$$ReadMessageModelImplCopyWith(_$ReadMessageModelImpl value,
          $Res Function(_$ReadMessageModelImpl) then) =
      __$$ReadMessageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message_ids') List<int> messageIds,
      @JsonKey(name: 'read_by') int readBy,
      @JsonKey(name: 'chat_id') int chatId});
}

/// @nodoc
class __$$ReadMessageModelImplCopyWithImpl<$Res>
    extends _$ReadMessageModelCopyWithImpl<$Res, _$ReadMessageModelImpl>
    implements _$$ReadMessageModelImplCopyWith<$Res> {
  __$$ReadMessageModelImplCopyWithImpl(_$ReadMessageModelImpl _value,
      $Res Function(_$ReadMessageModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReadMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageIds = null,
    Object? readBy = null,
    Object? chatId = null,
  }) {
    return _then(_$ReadMessageModelImpl(
      messageIds: null == messageIds
          ? _value._messageIds
          : messageIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      readBy: null == readBy
          ? _value.readBy
          : readBy // ignore: cast_nullable_to_non_nullable
              as int,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadMessageModelImpl implements _ReadMessageModel {
  const _$ReadMessageModelImpl(
      {@JsonKey(name: 'message_ids') required final List<int> messageIds,
      @JsonKey(name: 'read_by') required this.readBy,
      @JsonKey(name: 'chat_id') required this.chatId})
      : _messageIds = messageIds;

  factory _$ReadMessageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadMessageModelImplFromJson(json);

  final List<int> _messageIds;
  @override
  @JsonKey(name: 'message_ids')
  List<int> get messageIds {
    if (_messageIds is EqualUnmodifiableListView) return _messageIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messageIds);
  }

  @override
  @JsonKey(name: 'read_by')
  final int readBy;
  @override
  @JsonKey(name: 'chat_id')
  final int chatId;

  @override
  String toString() {
    return 'ReadMessageModel(messageIds: $messageIds, readBy: $readBy, chatId: $chatId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadMessageModelImpl &&
            const DeepCollectionEquality()
                .equals(other._messageIds, _messageIds) &&
            (identical(other.readBy, readBy) || other.readBy == readBy) &&
            (identical(other.chatId, chatId) || other.chatId == chatId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_messageIds), readBy, chatId);

  /// Create a copy of ReadMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadMessageModelImplCopyWith<_$ReadMessageModelImpl> get copyWith =>
      __$$ReadMessageModelImplCopyWithImpl<_$ReadMessageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadMessageModelImplToJson(
      this,
    );
  }
}

abstract class _ReadMessageModel implements ReadMessageModel {
  const factory _ReadMessageModel(
          {@JsonKey(name: 'message_ids') required final List<int> messageIds,
          @JsonKey(name: 'read_by') required final int readBy,
          @JsonKey(name: 'chat_id') required final int chatId}) =
      _$ReadMessageModelImpl;

  factory _ReadMessageModel.fromJson(Map<String, dynamic> json) =
      _$ReadMessageModelImpl.fromJson;

  @override
  @JsonKey(name: 'message_ids')
  List<int> get messageIds;
  @override
  @JsonKey(name: 'read_by')
  int get readBy;
  @override
  @JsonKey(name: 'chat_id')
  int get chatId;

  /// Create a copy of ReadMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadMessageModelImplCopyWith<_$ReadMessageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
