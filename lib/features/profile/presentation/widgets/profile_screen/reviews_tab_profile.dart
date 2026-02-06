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

            return const _ReviewsContentWidget();
          },
        );
      },
    );
  }
}

class _ReviewsContentWidget extends StatelessWidget {
  const _ReviewsContentWidget();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReviewsCubit, ReviewsState>(
      builder: (context, state) {
        if (state.isShowingAboutMe) {
          return const _AboutMeReviewsWidget();
        } else {
          return const _MyGivenReviewsWidget();
        }
      },
    );
  }
}

class _AboutMeReviewsWidget extends StatelessWidget {
  const _AboutMeReviewsWidget();

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
                      text: 'Отзывы',
              fontSize: 20.sp,
              fontWeight: FontWeight.w800,
                    ),
                    20.ph,
                    BlocBuilder<ReviewsCubit, ReviewsState>(
                      builder: (context, state) {
                        return TabSwitchWidget(
                          isFirstSelected: state.isShowingAboutMe,
                          firstLabel: 'Обо мне',
                          secondLabel: 'Оставленные мной',
                          onChanged: (isAboutMe) {
                            context.read<ReviewsCubit>().toggleView(isAboutMe);
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            if (state.isLoading)
              SliverFillRemaining(
                hasScrollBody: false,
                child: const Center(
                  child: CircularProgressIndicator(color: AppColors.grey),
                ),
              )
            else if (state.errorMessage.isNotEmpty)
              SliverFillRemaining(
                hasScrollBody: false,
                child: Center(
                  child: CustomText(
                    text: state.errorMessage,
                    fontWeight: FontWeight.w600,
                    color: AppColors.blackTransparent40,
                  ),
                ),
              )
            else if (state.userRatings == null)
              SliverFillRemaining(
                hasScrollBody: false,
                child: const Center(
                  child: CircularProgressIndicator(color: AppColors.grey),
                ),
              )
            else
              _buildReviewsList(
                productRatings: state.userRatings!.productRatings,
                userPersonalRatings: state.userRatings!.userPersonalRatings,
              ),
          ],
        );
      },
    );
  }

  Widget _buildReviewsList({
    required List<ProductRating> productRatings,
    required List<UserPersonalRating> userPersonalRatings,
  }) {
    final allReviews = <_ReviewItemData>[];

    // Add product ratings
    for (var rating in productRatings) {
      allReviews.add(_ReviewItemData(
        username: rating.user?.name ?? 'Unknown',
        rating: rating.score.toDouble(),
        date: _formatDate(rating.createdAt),
        reviewText: rating.comment ?? '',
        userImage: rating.user?.image,
      ));
    }

    // Add user personal ratings
    for (var rating in userPersonalRatings) {
      allReviews.add(_ReviewItemData(
        username: rating.reviewer?.name ?? 'Unknown',
        rating: rating.score.toDouble(),
        date: _formatDate(rating.createdAt),
        reviewText: rating.comment ?? '',
        userImage: rating.reviewer?.image,
      ));
    }

    if (allReviews.isEmpty) {
      return SliverFillRemaining(
        hasScrollBody: false,
        child: Center(
          child: CustomText(
            text: 'Пока нет отзывов',
            fontWeight: FontWeight.w600,
            color: AppColors.blackTransparent40,
          ),
        ),
      );
    }

    return SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
            final review = allReviews[index];
                return Padding(
              padding: EdgeInsets.only(
                  bottom: index < allReviews.length - 1 ? 12 : 0),
                  child: ReviewItem(
                username: review.username,
                rating: review.rating.toStringAsFixed(1),
                date: review.date,
                reviewText: review.reviewText,
                userImage: review.userImage,
                  ),
                );
              },
          childCount: allReviews.length,
        ),
      ),
    );
  }

  String _formatDate(String dateString) {
    try {
      final date = DateTime.parse(dateString);
      return '${date.day.toString().padLeft(2, '0')}.${date.month.toString().padLeft(2, '0')}.${date.year}';
    } catch (e) {
      return dateString;
    }
  }
}

class _MyGivenReviewsWidget extends StatelessWidget {
  const _MyGivenReviewsWidget();

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
                      text: 'Отзывы',
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w800,
                    ),
                    20.ph,
                    BlocBuilder<ReviewsCubit, ReviewsState>(
                      builder: (context, state) {
                        return TabSwitchWidget(
                          isFirstSelected: state.isShowingAboutMe,
                          firstLabel: 'Обо мне',
                          secondLabel: 'Оставленные мной',
                          onChanged: (isAboutMe) {
                            context.read<ReviewsCubit>().toggleView(isAboutMe);
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            if (state.isLoading)
              SliverFillRemaining(
                hasScrollBody: false,
                child: const Center(
                  child: CircularProgressIndicator(color: AppColors.grey),
                ),
              )
            else if (state.errorMessage.isNotEmpty)
              SliverFillRemaining(
                hasScrollBody: false,
                child: Center(
                  child: CustomText(
                    text: state.errorMessage,
                    fontWeight: FontWeight.w600,
                    color: AppColors.blackTransparent40,
                  ),
                ),
              )
            else if (state.myRatings == null)
              SliverFillRemaining(
                hasScrollBody: false,
                child: const Center(
                  child: CircularProgressIndicator(color: AppColors.grey),
                ),
              )
            else
              _buildGivenReviewsList(state.myRatings!.givenRatings),
          ],
        );
      },
    );
  }

  Widget _buildGivenReviewsList(List<GivenRating> givenRatings) {
    if (givenRatings.isEmpty) {
      return SliverFillRemaining(
        hasScrollBody: false,
        child: Center(
          child: CustomText(
            text: 'Пока нет отзывов',
            fontWeight: FontWeight.w600,
            color: AppColors.blackTransparent40,
          ),
        ),
      );
    }

    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            final rating = givenRatings[index];
            return Padding(
              padding: EdgeInsets.only(
                  bottom: index < givenRatings.length - 1 ? 12 : 0),
              child: ReviewItem(
                username: rating.ratedUser.name,
                rating: rating.score.toDouble().toStringAsFixed(1),
                date: _formatDate(rating.createdAt),
                reviewText: rating.comment ?? '',
                userImage: rating.ratedUser.image,
              ),
            );
          },
          childCount: givenRatings.length,
        ),
      ),
    );
  }

  String _formatDate(String dateString) {
    try {
      final date = DateTime.parse(dateString);
      return '${date.day.toString().padLeft(2, '0')}.${date.month.toString().padLeft(2, '0')}.${date.year}';
    } catch (e) {
      return dateString;
    }
  }
}

class _ReviewItemData {
  final String username;
  final double rating;
  final String date;
  final String reviewText;
  final String? userImage;

  _ReviewItemData({
    required this.username,
    required this.rating,
    required this.date,
    required this.reviewText,
    this.userImage,
  });
}
