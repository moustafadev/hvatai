import 'package:dartz/dartz.dart';
import 'package:hvatai/core/shared/utils/usecase.dart';
import 'package:hvatai/features/chat/data/models/send_message/send_message_model.dart';
import 'package:hvatai/features/chat/domain/repositories/chat_repository.dart';
import 'package:hvatai/features/chat/domain/usecases/send_message.dart';

class SendSupportMessagesUseCase
    implements UseCase<SendMessageModel, SendMessageParams> {
  final ChatRepository _repository;

  SendSupportMessagesUseCase(this._repository);

  @override
  Future<Either<String, SendMessageModel>> call(SendMessageParams params) {

    return _repository.sendSupportMessage(params);
  }
}

