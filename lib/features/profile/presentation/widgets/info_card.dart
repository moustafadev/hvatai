part of '../profile.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final String value;
  final VoidCallback? onInfoTap;

  const InfoCard({
    super.key,
    required this.title,
    required this.value,
    this.onInfoTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomText(
                text: title,
                fontSize: 14.sp,
                fontWeight: FontWeight.w800,
              ),
              const Spacer(),
              GestureDetector(
                onTap: onInfoTap,
                child: Icon(
                  Icons.info_outline_rounded,
                  color: AppColors.blueLite,
                  size: 20.sp,
                ),
              ),
            ],
          ),
          20.ph,
          CustomText(
            text: value,
            fontSize: 20.sp,
            fontWeight: FontWeight.w800,
          ),
        ],
      ),
    );
  }
}
