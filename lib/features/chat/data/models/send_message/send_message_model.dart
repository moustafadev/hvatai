import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/chat/data/models/message/message_model.dart';

part 'send_message_model.freezed.dart';
part 'send_message_model.g.dart';

@freezed
class SendMessageModel with _$SendMessageModel {
  const factory SendMessageModel({
    int? id,
    int? senderId,
    int? receiverId,
    String? content,
    int? chatId,
    String? createdAt,
    String? updatedAt,
    SenderModel? sender,
    SenderModel? receiver,
    ChatMessageModel? chat,
  }) = _SendMessageModel;

  factory SendMessageModel.fromJson(Map<String, dynamic> json) =>
      _$SendMessageModelFromJson(json);

}


@freezed
class ChatMessageModel with _$ChatMessageModel {
  const factory ChatMessageModel({
    int? id,
    int? userId,
    int? participantId,
    String? createdAt,
    String? updatedAt,
  }) = _ChatMessageModel;

  factory ChatMessageModel.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageModelFromJson(json);
}


// Extension to add custom methods to SendMessageModel
extension SendMessageModelToMessageModel on SendMessageModel {
  MessageModel toMessageModel() {
    return MessageModel(
      id: id,
      chatId: chatId,
      senderId: senderId,
      receiverId: receiverId,
      content: content,
      readAt: null, // If necessary, handle this field differently
      createdAt: createdAt,
      updatedAt: updatedAt,
      sender: sender,
    );
  }
}
