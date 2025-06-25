import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'interests_detail_state.dart';
part 'interests_detail_cubit.freezed.dart';

class InterestsDetailCubit extends Cubit<InterestsDetailState> {
  InterestsDetailCubit() : super(const InterestsDetailState());

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
