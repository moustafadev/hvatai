import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';

part 'activity_cubit.freezed.dart';
part 'activity_state.dart';

class ActivityCubit extends Cubit<ActivityState> {
  ActivityCubit()
      : super(const ActivityState(
            product: ProductModel(variants: [VariantModel()])));

  void changeTab(int index) {
    emit(state.copyWith(selectedTabIndex: index));
  }
}
