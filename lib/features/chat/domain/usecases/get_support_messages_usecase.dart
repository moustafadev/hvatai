import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/chat/data/models/message/message_model.dart';
import 'package:hvatai/features/chat/domain/repositories/chat_repository.dart';

class GetSupportMessagesUseCase implements UseCase<List<MessageModel>, int> {
  final ChatRepository _repository;

  GetSupportMessagesUseCase(this._repository);

  @override
  Future<Either<String, List<MessageModel>>> call(int chatId) {
    return _repository.getSupportMessages(chatId);
  }
}
