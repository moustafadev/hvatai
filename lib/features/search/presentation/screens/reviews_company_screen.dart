part of '../search.dart';

class ReviewsCompanyScreen extends StatelessWidget {
  const ReviewsCompanyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGreyBackground,
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                50.ph,
                TopBarSearchWidget(
                  isSearch: false,
                  image: Assets.assetsIconsTune,
                ),
                24.ph,
                CustomText(
                  text: 'reviews'.tr(),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w800,
                ),
                12.ph,
                ReviewItem(
                  username: 'nickname25',
                  rating: '4.5',
                  date: '21.01.2025',
                  reviewText:
                      'We are an official store operating since 2021. Our mission is to offer you original products from leading global brands at affordable prices with a guarantee of authenticity',
                  onViewAllTap: () {},
                ),
                16.ph,
                ReviewItem(
                  username: 'nickname25',
                  rating: '4.5',
                  date: '21.01.2025',
                  reviewText:
                      'We are an official store operating since 2021. Our mission is to offer you original products from leading global brands at affordable prices with a guarantee of authenticity',
                  onViewAllTap: () {},
                ),
                16.ph,
                ReviewItem(
                  username: 'nickname25',
                  rating: '4.5',
                  date: '21.01.2025',
                  reviewText:
                      'We are an official store operating since 2021. Our mission is to offer you original products from leading global brands at affordable prices with a guarantee of authenticity',
                  onViewAllTap: () {},
                ),
              ]),
            ),
          ),
    
          /// Push button to bottom
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16, vertical: 16),
                  child: CustomButton(
                    title: 'leaveReview'.tr(),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w800,
                    onPressed: () {
                      context.pop();
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
