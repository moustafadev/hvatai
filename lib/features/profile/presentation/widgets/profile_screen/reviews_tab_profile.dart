part of '../../profile.dart';

class ReviewsTabProfile extends StatelessWidget {
  const ReviewsTabProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          sliver: SliverToBoxAdapter(
            child: CustomText(
              text: 'Отзывы (33,8К)',
              fontSize: 20.sp,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: index < 5 ? 12 : 0),
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
  }
}
