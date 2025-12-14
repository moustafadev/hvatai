import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/core/customs/customs.dart';

part 'report_violation_state.dart';
part 'report_violation_cubit.freezed.dart';

class ReportViolationCubit extends Cubit<ReportViolationState> {
  ReportViolationCubit() : super(const ReportViolationState());

  void selectReason(String reason) {
    emit(state.copyWith(selectedReason: reason));
  }

  void updateCustomReason(String reason) {
    emit(state.copyWith(customReason: reason));
  }

  Future<void> submitReport(BuildContext context) async {
    if (state.selectedReason.isEmpty) {
      showFloatingMessageError('pleaseSelectReason'.tr());
      return;
    }

    if (state.selectedReason == 'other' && state.customReason.isEmpty) {
      showFloatingMessageError('pleaseSpecifyReason'.tr());
      return;
    }

    if (state.customReason.length > 2000) {
      showFloatingMessageError('max2000Characters'.tr());
      return;
    }

    emit(state.copyWith(isLoading: true, errorMessage: ''));

    // TODO: Call backend API to submit report
    // For now, simulate the API call
    await Future.delayed(const Duration(seconds: 1));

    emit(state.copyWith(isLoading: false));
    if (context.mounted) {
      showFloatingMessageSuccess('Report submitted successfully'.tr());
      Navigator.of(context).pop();
    }
  }
}
