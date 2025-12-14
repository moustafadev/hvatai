part of 'report_violation_cubit.dart';

@freezed
class ReportViolationState with _$ReportViolationState {
  const factory ReportViolationState({
    @Default('') String selectedReason,
    @Default('') String customReason,
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
  }) = _ReportViolationState;
}
