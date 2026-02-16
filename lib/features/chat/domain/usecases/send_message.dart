import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/chat/data/models/send_message/send_message_model.dart';
import 'package:hvatai/features/chat/domain/repositories/chat_repository.dart';

class SendMessageUseCase
    implements UseCase<SendMessageModel, SendMessageParams> {
  final ChatRepository _repository;

  SendMessageUseCase(this._repository);

  @override
  Future<Either<String, SendMessageModel>> call(SendMessageParams params) {

    return _repository.sendMessage(params);
  }
}

class SendMessageParams {
  final int? receiverId;
  final String content;
  final List<String> imagePaths;

  SendMessageParams({
    this.receiverId,
    required this.content,
    required this.imagePaths,
  });



}
