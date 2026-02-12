import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/features/profile/data/model/ratings_model/ratings_model.dart';
import 'package:hvatai/features/profile/domain/usecases/get_my_ratings_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/get_user_ratings_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/delete_rating_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/reply_to_rating_usecase.dart';
import 'package:hvatai/features/stream/domain/usecases/get_my_streams_usecase.dart';

part 'reviews_cubit.freezed.dart';
part 'reviews_state.dart';

class ReviewsCubit extends Cubit<ReviewsState> {
  final GetUserRatingsUsecase _getUserRatingsUsecase;
  final GetMyRatingsUsecase _getMyRatingsUsecase;
  final DeleteRatingUsecase _deleteRatingUsecase;
  final ReplyToRatingUsecase _replyToRatingUsecase;

  ReviewsCubit(
    this._getUserRatingsUsecase,
    this._getMyRatingsUsecase,
    this._deleteRatingUsecase,
    this._replyToRatingUsecase,
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

  Future<void> deleteRating(int ratingId, int userId) async {
    // Find the rating to delete
    final myRatings = state.myRatings;
    if (myRatings == null) return;

    final ratingToDelete = myRatings.givenRatings.firstWhere(
      (rating) => rating.id == ratingId,
      orElse: () => throw Exception('Rating not found'),
    );

    // Optimistically remove from UI immediately
    final updatedGivenRatings = myRatings.givenRatings
        .where((rating) => rating.id != ratingId)
        .toList();

    emit(state.copyWith(
      myRatings: myRatings.copyWith(givenRatings: updatedGivenRatings),
      deletedRating: ratingToDelete, // Store for potential rollback
    ));

    // Make API call in background
    final result =
        await _deleteRatingUsecase(DeleteRatingParams(ratingId: ratingId));

    result.fold(
      (error) {
        // Rollback: restore the deleted rating
        final currentMyRatings = state.myRatings;
        if (currentMyRatings != null && state.deletedRating != null) {
          final restoredRatings = [
            ...currentMyRatings.givenRatings,
            state.deletedRating!,
          ];
          emit(state.copyWith(
            myRatings: currentMyRatings.copyWith(givenRatings: restoredRatings),
            deletedRating: null,
          ));
        }
        showFloatingMessageError(error);
      },
      (_) {
        // Success: clear deleted rating reference
        emit(state.copyWith(deletedRating: null));
      },
    );
  }

  Future<void> replyToRating(int ratingId, String comment, int userId) async {
    emit(state.copyWith(isReplying: true));

    final result = await _replyToRatingUsecase(
      ReplyToRatingParams(ratingId: ratingId, comment: comment),
    );

    result.fold(
      (error) {
        emit(state.copyWith(isReplying: false));
        showFloatingMessageError(error);
      },
      (_) {
        emit(state.copyWith(isReplying: false));
        loadUserRatings(userId);
      },
    );
  }
}
