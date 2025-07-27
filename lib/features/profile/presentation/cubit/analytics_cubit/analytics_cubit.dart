import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'analytics_cubit.freezed.dart';
part 'analytics_state.dart';

class AnalyticsCubit extends Cubit<AnalyticsState> {
  AnalyticsCubit() : super(const AnalyticsState());

  void changeTab(int index) {
    emit(state.copyWith(selectedTabIndex: index));
  }

  void changeCategory(int index) {
    emit(state.copyWith(selectedCategoryIndex: index));
  }
}
