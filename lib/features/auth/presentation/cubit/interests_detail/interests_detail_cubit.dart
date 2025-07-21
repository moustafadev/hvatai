import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/features/auth/data/models/user_registration_data.dart';
import 'package:hvatai/routes/app_routes.dart';

part 'interests_detail_state.dart';
part 'interests_detail_cubit.freezed.dart';

class InterestsDetailCubit extends Cubit<InterestsDetailState> {
  InterestsDetailCubit({required UserRegistrationData user})
      : super(InterestsDetailState(user: user));
  void init(List<String> generalInterests) {
    emit(state.copyWith(generalInterests: generalInterests));
  }

  void toggleDetail(String value) {
    final updated = Set<String>.from(state.selectedDetails);
    if (updated.contains(value)) {
      updated.remove(value);
    } else {
      updated.add(value);
    }
    emit(state.copyWith(selectedDetails: updated));
  }

  void submitDetails(BuildContext context) {
    if (state.selectedDetails.isEmpty) {
      emit(state.copyWith(errorMessage: 'select_detailed_interest'));
      return;
    }

    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final updatedUser = state.user.copyWith(
      detailedInterests: state.selectedDetails.toList(),
    );

    emit(state.copyWith(user: updatedUser, isLoading: false));

    context.push(AppRoutes.notification, extra: updatedUser);
  }

  Future<void> submit({
    required Function(List<String> detailedInterests) onSuccess,
    required Function(String error) onError,
  }) async {
    if (state.selectedDetails.isEmpty) {
      onError("select_detailed_interest");
      return;
    }

    emit(state.copyWith(isLoading: true));

    try {
      // TODO: Implement Firebase update if needed
      await Future.delayed(Duration(milliseconds: 500));
      onSuccess(state.selectedDetails.toList());
    } catch (e) {
      onError("update_failed");
    }

    emit(state.copyWith(isLoading: false));
  }
}
