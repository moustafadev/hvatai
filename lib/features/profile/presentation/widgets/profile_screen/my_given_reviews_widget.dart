part of '../../profile.dart';

class MyGivenReviewsWidget extends StatelessWidget {
  const MyGivenReviewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReviewsCubit, ReviewsState>(
      builder: (context, state) {
        if (state.isLoading) {
          return SliverFillRemaining(
            hasScrollBody: false,
            child: const Center(
              child: CustomCircularProgressIndicator(),
            ),
          );
        }

        if (state.errorMessage.isNotEmpty) {
          return SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: CustomText(
                text: state.errorMessage,
                fontWeight: FontWeight.w600,
                color: AppColors.blackTransparent40,
              ),
            ),
          );
        }

        return GivenReviewsList(
            givenRatings: state.myRatings!.givenRatings
                .map((rating) => rating.toUserPersonalRating())
                .toList());
      },
    );
  }
}

class GivenReviewsList extends StatelessWidget {
  final List<UserPersonalRating> givenRatings;

  const GivenReviewsList({
    super.key,
    required this.givenRatings,
  });

  @override
  Widget build(BuildContext context) {
    if (givenRatings.isEmpty) {
      return SliverFillRemaining(
        hasScrollBody: false,
        child: Center(
          child: CustomText(
            text: 'noReviews'.tr(),
            fontWeight: FontWeight.w600,
            color: AppColors.blackTransparent40,
          ),
        ),
      );
    }

    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, profileState) {
        final userId = profileState.userProfileModel.id;

        return SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final rating = givenRatings[index];

                return Padding(
                  padding: EdgeInsets.only(
                    bottom: index < givenRatings.length - 1 ? 12 : 0,
                  ),
                  child: ReviewItem(
                    reviewModel: rating,
                    onDelete: userId != null
                        ? () => _handleDeleteReview(
                              context,
                              rating.id,
                              userId,
                            )
                        : null,
                  ),
                );
              },
              childCount: givenRatings.length,
            ),
          ),
        );
      },
    );
  }
}

void _handleDeleteReview(BuildContext context, int ratingId, int userId) async {
  final confirmed = await showConfirmDialog(
    context,
    title: 'deleteReview'.tr(),
    content: 'areYouSureYouWantToDeleteThisReview'.tr(),
    confirmText: 'delete'.tr(),
    cancelText: 'cancel'.tr(),
  );

  if (confirmed && context.mounted) {
    context.read<ReviewsCubit>().deleteRating(ratingId, userId);
  }
}
