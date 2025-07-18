part of 'customs.dart';

class CustomAwardsCard extends StatelessWidget {
  final String imagePath;
  final String level;
  final String title;
  final List<String> features;

  const CustomAwardsCard({
    super.key,
    required this.imagePath,
    required this.level,
    required this.title,
    required this.features,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: AppColors.primaryPink,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: CustomText(
              text: level,
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.blackDark,
            ),
          ),
          4.ph,
          CustomText(
            text: title,
            fontWeight: FontWeight.w800,
            fontSize: 20.sp,
            fontFamily: "Manrope",
          ),
          12.ph,
          ...features.map((f) => Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: CustomText(
                  text: f,
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                  fontFamily: "Manrope",
                ),
              )),
        ],
      ),
    );
  }
}
