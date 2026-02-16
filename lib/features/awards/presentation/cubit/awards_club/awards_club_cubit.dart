import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/search/data/model/user_data_model.dart';
import 'package:hvatai/features/stream/domain/usecases/toggle_subscription_usecase.dart';

part 'awards_club_cubit.freezed.dart';
part 'awards_club_state.dart';

class AwardsClubCubit extends Cubit<AwardsClubState> {
  AwardsClubCubit(
    this._toggleSubscriptionUsecase,
  ) : super(const AwardsClubState());

  final ToggleSubscriptionUsecase _toggleSubscriptionUsecase;

  void setInitialData({
    required UserDataModel? user,
    required bool isSubscribed,
  }) {
    emit(
      state.copyWith(
        company: user,
        isSubscribed: isSubscribed,
      ),
    );
  }

  Future<void> toggleSubscription() async {
    final userId = state.company?.id ?? 0;
    if (userId == 0 || state.isToggleLoading) return;

    emit(state.copyWith(isToggleLoading: true));

    final result = await _toggleSubscriptionUsecase(
      ToggleSubscriptionParams(userId: userId),
    );

    result.fold(
      (_) => emit(state.copyWith(isToggleLoading: false)),
      (_) {
        final newStatus = !state.isSubscribed;
        emit(
          state.copyWith(
            isToggleLoading: false,
            isSubscribed: newStatus,
          ),
        );
      },
    );
  }
}
