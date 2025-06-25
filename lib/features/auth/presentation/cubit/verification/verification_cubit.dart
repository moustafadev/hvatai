import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verification_cubit.freezed.dart';
part 'verification_state.dart';

class VerificationCubit extends Cubit<VerificationState> {
  VerificationCubit() : super(const VerificationState());

  void updateCode(String value) {
    emit(state.copyWith(code: value));
  }

  void submitCode() {
    if (state.code.length != 6) {
      emit(state.copyWith(error: 'Введите 6 цифр'));
      return;
    }

    // TODO: Firebase verification logic goes here
    print('Code submitted: ${state.code}');
  }
}
