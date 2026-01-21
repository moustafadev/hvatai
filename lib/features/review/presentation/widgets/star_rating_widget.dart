part of '../review.dart';

class StarRatingWidget extends StatelessWidget {
  const StarRatingWidget({
    super.key,
    required this.rating,
    required this.onRatingChanged,
  });

  final int rating;
  final ValueChanged<int> onRatingChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index) {
        final starIndex = index + 1;
        final isSelected = starIndex <= rating;
        return GestureDetector(
          onTap: () => onRatingChanged(starIndex),
          child: Padding(
            padding: EdgeInsets.only(right: 8.w),
            child: isSelected
                ? SvgPicture.asset(
                    Assets.assetsIconsStarFilled,
                  )
                : SvgPicture.asset(
                    Assets.assetsIconsStarBorder,
                  ),
          ),
        );
      }),
    );
  }
}
