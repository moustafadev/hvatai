
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity_cubit.freezed.dart';
part 'activity_state.dart';

class ActivityCubit extends Cubit<ActivityState> {
  ActivityCubit() : super(const ActivityState());

  void changeTab(int index) {
    emit(state.copyWith(selectedTabIndex: index));
  }
}
