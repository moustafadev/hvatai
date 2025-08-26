import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/chat/data/models/chat/chat_model.dart';
import 'package:hvatai/features/chat/domain/repositories/chat_repository.dart';

class GetChatsUseCase implements UseCase<List<ChatModel>, void> {
  final ChatRepository _repository;

  GetChatsUseCase(this._repository);

  @override
  Future<Either<String, List<ChatModel>>> call([void params]) {
    return _repository.getChats();
  }
}
