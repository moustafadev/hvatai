import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/chat/domain/repositories/chat_repository.dart';

class MarkMessageAsReadUseCase implements UseCase<void, int> {
  final ChatRepository _repository;

  MarkMessageAsReadUseCase(this._repository);

  @override
  Future<Either<String, void>> call(int chatId) {
    return _repository.markMessageAsRead(chatId);
  }
}
