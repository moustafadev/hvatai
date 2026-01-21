import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/review/domain/usecases/submit_review_usecase.dart';

part 'review_cubit.freezed.dart';
part 'review_state.dart';

class ReviewCubit extends Cubit<ReviewState> {
  final SubmitReviewUsecase _submitReviewUsecase;

  ReviewCubit(this._submitReviewUsecase) : super(const ReviewState());

  void setRating(int rating) {
    emit(state.copyWith(rating: rating));
  }

  void setComment(String comment) {
    emit(state.copyWith(comment: comment));
  }

  void addImage(String imagePath) {
    if (state.images.length < 8 && !state.images.contains(imagePath)) {
      emit(state.copyWith(images: [...state.images, imagePath]));
    }
  }

  void removeImage(int index) {
    final images = List<String>.from(state.images);
    images.removeAt(index);
    emit(state.copyWith(images: images));
  }

  void clearImages() {
    emit(state.copyWith(images: []));
  }

  void setImages(List<String> images) {
    emit(state.copyWith(images: images));
  }

  Future<void> submitReview(int businessId) async {
    if (state.rating == 0) {
      emit(state.copyWith(errorMessage: 'Please select a rating'));
      return;
    }

    if (state.comment.trim().isEmpty) {
      emit(state.copyWith(errorMessage: 'Please enter a comment'));
      return;
    }

    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final result = await _submitReviewUsecase(
      SubmitReviewParams(
        businessId: businessId,
        score: state.rating,
        comment: state.comment.trim(),
        images: state.images,
      ),
    );

    result.fold(
      (error) {
        emit(state.copyWith(
          isLoading: false,
          errorMessage: error,
        ));
      },
      (success) {
        emit(state.copyWith(
          isLoading: false,
          errorMessage: '',
        ));
      },
    );
  }

  void reset() {
    emit(const ReviewState());
  }
}
