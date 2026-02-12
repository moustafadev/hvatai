part of '../company.dart';

class ReviewsCompanyScreen extends StatelessWidget {
  const ReviewsCompanyScreen({super.key, required this.userId});

  final int userId;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BlocBuilder<CompanyCubit, CompanyState>(
          builder: (context, state) {
            if (state.isLoadingReviews) {
              return const Center(
                child: CircularProgressIndicator(color: AppColors.primaryColor),
              );
            }

            if (state.errorMessageReviews.isNotEmpty) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: CustomText(
                    text: state.errorMessageReviews,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            }

            final userRatings = state.userRatings;
            if (userRatings == null) {
              return const Center(
                child: CircularProgressIndicator(color: AppColors.primaryColor),
              );
            }

            // Combine product ratings and user personal ratings
            final allReviews = <_ReviewItemData>[];

            // Add product ratings
            for (var rating in userRatings.productRatings) {
              allReviews.add(_ReviewItemData(
                username: rating.user?.name ?? 'Unknown',
                rating: rating.score.toDouble(),
                date: _formatDate(rating.createdAt),
                reviewText: rating.comment ?? '',
                userImage: rating.user?.image,
              ));
            }

            // Add user personal ratings
            for (var rating in userRatings.userPersonalRatings) {
              allReviews.add(_ReviewItemData(
                username: rating.reviewer?.name ?? 'Unknown',
                rating: rating.score.toDouble(),
                date: _formatDate(rating.createdAt),
                reviewText: rating.comment ?? '',
                userImage: rating.reviewer?.image,
              ));
            }

            return CustomScrollView(
              slivers: [
                SliverPadding(
                  padding: EdgeInsets.only(
                    left: 16.w,
                    right: 16.w,
                    top: 12.h,
                  ),
                  sliver: SliverToBoxAdapter(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: 'reviews'.tr(),
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w800,
                        ),
                        Builder(
                          builder: (builderContext) {
                            return GestureDetector(
                              onTap: () {
                                final RenderBox? renderBox = builderContext
                                    .findRenderObject() as RenderBox?;
                                if (renderBox != null) {
                                  CompanyFilterDialog.showReviewsFilter(
                                    context,
                                    renderBox,
                                    userId,
                                  );
                                }
                              },
                              child: SvgPicture.asset(
                                Assets.assetsIconsFilter,
                                width: 24.w,
                                height: 24.h,
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                if (allReviews.isEmpty)
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Center(
                      child: CustomText(
                        text: 'Пока нет отзывов',
                        fontWeight: FontWeight.w600,
                        color: AppColors.blackTransparent40,
                      ),
                    ),
                  )
                else
                  SliverPadding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          final review = allReviews[index];
                          return Padding(
                            padding: EdgeInsets.only(
                              top: 12,
                              bottom: index < allReviews.length - 1 ? 12.h : 0,
                            ),
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
                  ),
              ],
            );
          },
        ),
        // Fixed bottom button
        BlocBuilder<CompanyCubit, CompanyState>(
          builder: (context, companyState) {
            return Positioned(
              left: 16.w,
              right: 16.w,
              bottom: 0,
              child: SafeArea(
                top: false,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 16.h),
                  child: CustomButton(
                    title: 'leaveReview'.tr(),
                    color: AppColors.blackDark,
                    textColor: AppColors.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w800,
                    height: 54,
                    radius: 10.r,
                    onPressed: () async {
                      final result = await context.push(AppRoutes.leaveReview,
                          extra: {'userId': userId});
                      if (result != null &&
                          result is bool &&
                          result &&
                          context.mounted) {
                        context.read<CompanyCubit>().fetchReviews(userId);
                      }
                    },
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
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

String _formatDate(String dateString) {
  try {
    final date = DateTime.parse(dateString);
    return '${date.day.toString().padLeft(2, '0')}.${date.month.toString().padLeft(2, '0')}.${date.year}';
  } catch (e) {
    return dateString;
  }
}
