import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'awards_club_cubit.freezed.dart';
part 'awards_club_state.dart';

class AwardsClubCubit extends Cubit<AwardsClubState> {
  AwardsClubCubit() : super(const AwardsClubState());

  void toggleAddThankYou() {
    emit(state.copyWith(
      addThankYouNote: !state.addThankYouNote,
    ));
  }

  void toggleMethodPayment(int index) {
    emit(state.copyWith(selectedMethodIndex: index));
  }

  void selectAwards(int index) {
    emit(state.copyWith(
      selectedIndex: state.selectedIndex == index ? null : index,
    ));
  }
}
