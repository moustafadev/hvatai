part of '../../profile.dart';

class ReviewsListWidget extends StatelessWidget {
  final List<UserPersonalRating> userPersonalRatings;

  const ReviewsListWidget({
    super.key,
    required this.userPersonalRatings,
  });

  @override
  Widget build(BuildContext context) {
    if (userPersonalRatings.isEmpty) {
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
        final reviewsCubit = context.read<ReviewsCubit>();

        return SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final review = userPersonalRatings[index];
                return Padding(
                  padding: EdgeInsets.only(
                      bottom: index < userPersonalRatings.length - 1 ? 12 : 0),
                  child: ReviewItem(
                    reviewModel: review,
                    onReply: userId != null && review.reply == null
                        ? () => _showReplyBottomSheet(
                              context,
                              review.id,
                              userId,
                              reviewsCubit,
                            )
                        : null,
                  ),
                );
              },
              childCount: userPersonalRatings.length,
            ),
          ),
        );
      },
    );
  }

  void _showReplyBottomSheet(
    BuildContext context,
    int ratingId,
    int userId,
    ReviewsCubit reviewsCubit,
  ) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useRootNavigator: true,
      backgroundColor: Colors.transparent,
      builder: (context) => BlocProvider.value(
        value: reviewsCubit,
        child: _ReplyBottomSheet(
          ratingId: ratingId,
          userId: userId,
        ),
      ),
    );
  }
}
