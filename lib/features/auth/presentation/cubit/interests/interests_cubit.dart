import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/auth/data/models/user_registration_data.dart';

part 'interests_state.dart';
part 'interests_cubit.freezed.dart';

class InterestsCubit extends Cubit<InterestsState> {
  InterestsCubit()
      : super(InterestsState());

  void initVariable(UserRegistrationData userData) {
    emit(state.copyWith(userData: userData));
  }

  void toggleInterest(int index, String interestKey) {
    final isSelected = state.selectedIndices.contains(index);
    final updatedIndices = Set<int>.from(state.selectedIndices);
    final updatedInterests = List<String>.from(state.selectedInterests);

    if (isSelected) {
      updatedIndices.remove(index);
      updatedInterests.remove(interestKey);
    } else {
      updatedIndices.add(index);
      updatedInterests.add(interestKey);
    }

    emit(state.copyWith(
      selectedIndices: updatedIndices,
      selectedInterests: updatedInterests,
    ));
  }

  Future<void> registerUser(
      Function onSuccess, Function(String error) onError) async {
    if (state.selectedInterests.isEmpty) {
      onError('select_interest');
      return;
    }

    emit(state.copyWith(isLoading: true));

    try {
      // TODO: Implement Firebase registration logic here.
      // This could include:
      // - Creating a Firebase user
      // - Writing user data to Firestore
      // - Setting local logged-in state

      // For now, we'll simulate success:
      await Future.delayed(const Duration(milliseconds: 500));
      onSuccess();
    } catch (e) {
      // TODO: Customize error handling
      onError('Registration failed');
    }

    emit(state.copyWith(isLoading: false));
  }
}
