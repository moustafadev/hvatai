part of '../../profile.dart';

class ReviewsTabProfile extends StatelessWidget {
  const ReviewsTabProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, profileState) {
        final userId = profileState.userProfileModel.id;
        if (userId == null) {
          return const Center(
            child: CustomText(text: 'User ID not found'),
          );
        }
        return BlocBuilder<ReviewsCubit, ReviewsState>(
          builder: (context, reviewsState) {
            // Load data on first build
            if (reviewsState.userRatings == null &&
                reviewsState.myRatings == null) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                context.read<ReviewsCubit>().loadUserRatings(userId);
                context.read<ReviewsCubit>().loadMyRatings();
              });
            }

            return const ReviewsContentWidget();
          },
        );
      },
    );
  }
}

class ReviewsContentWidget extends StatelessWidget {
  const ReviewsContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReviewsCubit, ReviewsState>(
      builder: (context, state) {
        return CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              sliver: SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'reviews'.tr(),
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w800,
                    ),
                    20.ph,
                    TabSwitchWidget(
                      isFirstSelected: state.isShowingAboutMe,
                      firstLabel: 'aboutMe'.tr(),
                      secondLabel: 'reviewsGiven'.tr(),
                      onChanged: (isAboutMe) {
                        context.read<ReviewsCubit>().toggleView(isAboutMe);
                      },
                    ),
                  ],
                ),
              ),
            ),
            if (state.isShowingAboutMe)
              const AboutMeReviewsSliver()
            else
              const MyGivenReviewsWidget(),
          ],
        );
      },
    );
  }
}

