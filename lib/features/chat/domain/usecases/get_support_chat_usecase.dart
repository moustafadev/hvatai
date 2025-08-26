import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/chat/data/models/support_chat/support_chat_model.dart';
import 'package:hvatai/features/chat/domain/repositories/chat_repository.dart';

class GetSupportChatUseCase implements UseCase<SupportChatModel, void> {
  final ChatRepository _repository;

  GetSupportChatUseCase(this._repository);

  @override
  Future<Either<String, SupportChatModel>> call([void params]) {
    return _repository.getSupportChat();
  }
}
