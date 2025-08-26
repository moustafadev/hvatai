import 'package:freezed_annotation/freezed_annotation.dart';

part 'read_message_model.freezed.dart';
part 'read_message_model.g.dart';

@freezed
class ReadMessageModel with _$ReadMessageModel {
  const factory ReadMessageModel({
    @JsonKey(name: 'message_ids') required List<int> messageIds,
    @JsonKey(name: 'read_by') required int readBy,
    @JsonKey(name: 'chat_id') required int chatId,
  }) = _ReadMessageModel;

  factory ReadMessageModel.fromJson(Map<String, dynamic> json) =>
      _$ReadMessageModelFromJson(json);
}
