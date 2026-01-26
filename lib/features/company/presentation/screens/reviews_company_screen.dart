part of '../company.dart';

class ReviewsCompanyScreen extends StatelessWidget {
  const ReviewsCompanyScreen({
    super.key,
    required this.userId,
  });

  final int userId;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BlocBuilder<CompanyCubit, CompanyState>(
          builder: (context, companyState) {
            final reviewsCount = companyState.user?.personalRatingCount ?? 0;
            final formattedCount = reviewsCount >= 1000
                ? '${(reviewsCount / 1000).toStringAsFixed(1)}К'
                : reviewsCount.toString();

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
                        GestureDetector(
                          onTap: () {
                            CompanyFilterDialog.showReviewsFilter(context);
                          },
                          child: SvgPicture.asset(
                            Assets.assetsIconsFilter,
                            width: 24.w,
                            height: 24.h,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverPadding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(
                            top: 12,
                            bottom: index < 5 ? 12.h : 0,
                          ),
                          child: ReviewItem(
                            username: 'nickname25',
                            rating: '4.5',
                            date: '21.01.2025',
                            reviewText:
                                'We are an official store operating since 2021. Our mission is to offer you original products from leading global brands at affordable prices with a guarantee of authenticity',
                            onViewAllTap: () {},
                          ),
                        );
                      },
                      childCount: 6,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
        // Fixed bottom button
        Positioned(
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
                onPressed: () {
                  context.push(
                      AppRoutes.leaveReview, extra: {'userId': userId});
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
