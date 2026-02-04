import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/profile/domain/usecases/get_user_ratings_usecase.dart';
import 'package:hvatai/features/profile/data/model/ratings_model/ratings_model.dart';

part 'company_reviews_cubit.freezed.dart';
part 'company_reviews_state.dart';

class CompanyReviewsCubit extends Cubit<CompanyReviewsState> {
  CompanyReviewsCubit(this._getUserRatingsUsecase)
      : super(const CompanyReviewsState());

  final GetUserRatingsUsecase _getUserRatingsUsecase;

  Future<void> fetchReviews(int userId) async {
    if (userId == 0) {
      emit(
        state.copyWith(
          isLoading: false,
          errorMessage: 'User id is missing',
        ),
      );
      return;
    }

    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final result = await _getUserRatingsUsecase(
      GetUserRatingsParams(userId: userId),
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          isLoading: false,
          errorMessage: failure,
        ),
      ),
      (ratings) => emit(
        state.copyWith(
          isLoading: false,
          userRatings: ratings,
        ),
      ),
    );
  }
}
