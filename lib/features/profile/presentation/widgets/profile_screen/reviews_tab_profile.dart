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
              _ReviewsListWidget(
                productRatings: state.userRatings!.productRatings,
                userPersonalRatings: state.userRatings!.userPersonalRatings,
              ),
          ],
        );
      },
    );
  }
}

class _ReviewsListWidget extends StatelessWidget {
  final List<ProductRating> productRatings;
  final List<UserPersonalRating> userPersonalRatings;

  const _ReviewsListWidget({
    required this.productRatings,
    required this.userPersonalRatings,
  });

  String _formatDate(String dateString) {
    try {
      final date = DateTime.parse(dateString);
      return '${date.day.toString().padLeft(2, '0')}.${date.month.toString().padLeft(2, '0')}.${date.year}';
    } catch (e) {
      return dateString;
    }
  }

  @override
  Widget build(BuildContext context) {
    final allReviews = <_ReviewItemData>[];

    // Add product ratings
    for (var rating in productRatings) {
      allReviews.add(_ReviewItemData(
        id: rating.id,
        username: rating.user?.name ?? 'Unknown',
        rating: rating.score.toDouble(),
        date: _formatDate(rating.createdAt),
        reviewText: rating.comment ?? '',
        userImage: rating.user?.image,
        isProductRating: true,
      ));
    }

    // Add user personal ratings
    for (var rating in userPersonalRatings) {
      allReviews.add(_ReviewItemData(
        id: rating.id,
        username: rating.reviewer?.name ?? 'Unknown',
        rating: rating.score.toDouble(),
        date: _formatDate(rating.createdAt),
        reviewText: rating.comment ?? '',
        userImage: rating.reviewer?.image,
        isProductRating: false,
        reply: rating.reply,
        repliedAt: rating.repliedAt,
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

    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, profileState) {
        final userId = profileState.userProfileModel.id;
        final reviewsCubit = context.read<ReviewsCubit>();

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
                    onReply: userId != null && review.reply == null
                        ? () => _showReplyBottomSheet(
                              context,
                              review.id,
                              userId,
                              reviewsCubit,
                            )
                        : null,
                    actionText: 'Ответить',
                    reply: review.reply,
                    repliedAt: review.repliedAt,
                  ),
                );
              },
              childCount: allReviews.length,
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
                      bottom: index < givenRatings.length - 1 ? 12 : 0),
                  child: ReviewItem(
                    username: rating.ratedUser.name,
                    rating: rating.score.toDouble().toStringAsFixed(1),
                    date: _formatDate(rating.createdAt),
                    reviewText: rating.comment ?? '',
                    userImage: rating.ratedUser.image,
                    onDelete: userId != null
                        ? () => _handleDeleteReview(context, rating.id, userId)
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

  void _handleDeleteReview(
      BuildContext context, int ratingId, int userId) async {
    final confirmed = await showConfirmDialog(
      context,
      title: 'Удалить отзыв',
      content: 'Вы уверены, что хотите удалить этот отзыв?',
      confirmText: 'Удалить',
      cancelText: 'Отмена',
    );

    if (confirmed) {
      context.read<ReviewsCubit>().deleteRating(ratingId, userId);
    }
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
  final int id;
  final String username;
  final double rating;
  final String date;
  final String reviewText;
  final String? userImage;
  final bool isProductRating;
  final String? reply;
  final String? repliedAt;

  _ReviewItemData({
    required this.id,
    required this.username,
    required this.rating,
    required this.date,
    required this.reviewText,
    this.userImage,
    required this.isProductRating,
    this.reply,
    this.repliedAt,
  });
}

class _ReplyBottomSheet extends StatefulWidget {
  final int ratingId;
  final int userId;

  const _ReplyBottomSheet({
    required this.ratingId,
    required this.userId,
  });

  @override
  State<_ReplyBottomSheet> createState() => _ReplyBottomSheetState();
}

class _ReplyBottomSheetState extends State<_ReplyBottomSheet> {
  final TextEditingController _commentController = TextEditingController();

  @override
  void dispose() {
    _commentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ReviewsCubit, ReviewsState>(
      listenWhen: (previous, current) {
        // Listen when isReplying changes from true to false (reply completed)
        return previous.isReplying &&
            !current.isReplying &&
            current.errorMessage.isEmpty;
      },
      listener: (context, state) {
        // Close bottom sheet when reply is successfully completed
        Navigator.pop(context);
      },
      child: BlocBuilder<ReviewsCubit, ReviewsState>(
        builder: (context, state) {
          return Container(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
              left: 16,
              right: 16,
              top: 16,
            ),
            decoration: BoxDecoration(
              color: AppColors.background,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: 'Ответить на отзыв',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w800,
                ),
                16.ph,
                CustomTextField(
                  hintText: 'Введите ваш ответ',
                  controller: _commentController,
                  maxLines: 5,
                  fillColor: AppColors.white,
                  isRequired: false,
                ),
                24.ph,
                CustomGradientButton(
                  text: 'Отправить',
                  onPressed:
                      state.isReplying || _commentController.text.trim().isEmpty
                          ? null
                          : () => _handleSubmit(context),
                  width: double.infinity,
                  height: 52,
                  borderRadius: 10,
                  isLoading: state.isReplying,
                ),
                16.ph,
              ],
            ),
          );
        },
      ),
    );
  }

  void _handleSubmit(BuildContext context) {
    if (_commentController.text.trim().isEmpty) return;

    context.read<ReviewsCubit>().replyToRating(
          widget.ratingId,
          _commentController.text.trim(),
          widget.userId,
        );
  }
}
