import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/profile/data/model/ratings_model/ratings_model.dart';
import 'package:hvatai/features/profile/domain/usecases/get_my_ratings_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/get_user_ratings_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/get_my_streams_usecase.dart';

part 'reviews_cubit.freezed.dart';
part 'reviews_state.dart';

class ReviewsCubit extends Cubit<ReviewsState> {
  final GetUserRatingsUsecase _getUserRatingsUsecase;
  final GetMyRatingsUsecase _getMyRatingsUsecase;

  ReviewsCubit(
    this._getUserRatingsUsecase,
    this._getMyRatingsUsecase,
  ) : super(const ReviewsState());

  void toggleView(bool isAboutMe) {
    emit(state.copyWith(isShowingAboutMe: isAboutMe));
  }

  Future<void> loadUserRatings(int userId) async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));
    final result =
        await _getUserRatingsUsecase(GetUserRatingsParams(userId: userId));
    result.fold(
      (error) => emit(state.copyWith(
        isLoading: false,
        errorMessage: error,
      )),
      (ratings) => emit(state.copyWith(
        isLoading: false,
        userRatings: ratings,
        errorMessage: '',
      )),
    );
  }

  Future<void> loadMyRatings() async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));
    final result = await _getMyRatingsUsecase(const NoParams());
    result.fold(
      (error) => emit(state.copyWith(
        isLoading: false,
        errorMessage: error,
      )),
      (ratings) => emit(state.copyWith(
        isLoading: false,
        myRatings: ratings,
        errorMessage: '',
      )),
    );
  }
}
