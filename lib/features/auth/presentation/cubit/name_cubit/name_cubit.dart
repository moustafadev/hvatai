import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/auth/domain/usecases/update_name_usecase.dart';
import 'package:hvatai/routes/app_routes.dart';

part 'name_cubit.freezed.dart';
part 'name_state.dart';

class NameCubit extends Cubit<NameState> {
  NameCubit(this.updateNameUseCase) : super(const NameState());

  final UpdateNameUseCase updateNameUseCase;

  final formKey = GlobalKey<FormState>();

  void updateName(String value) => emit(state.copyWith(name: value));

  Future<void> submit(BuildContext context) async {
    if (!formKey.currentState!.validate()) return;

    emit(state.copyWith(isLoading: true, errorMessage: ''));
    final result =
        await updateNameUseCase.call(UpdateNameParams(name: state.name));

    result.fold(
      (failure) {
        emit(state.copyWith(isLoading: false, errorMessage: failure));
      },
      (_) {
        emit(state.copyWith(isLoading: false));
        context.push(AppRoutes.interests);
      },
    );
  }
}
