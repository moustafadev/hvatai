part of '../profile.dart';

/// ✅ Reusable Tile for Profile list items
class ReusableProfileTile extends StatelessWidget {
  const ReusableProfileTile({
    super.key,
    required this.title,
    required this.iconAsset,
    required this.onTap,
    this.isEmailVerified = false,
  });

  final String title;
  final String iconAsset;
  final VoidCallback onTap;
  final bool isEmailVerified;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        decoration: const BoxDecoration(
          color: AppColors.greyButton,
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0.r),
          child: CustomContainer(
            height: 24.h,
            width: 24.w,
            image: DecorationImage(
              image: AssetImage(iconAsset),
            ),
          ),
        ),
      ),
      title: Row(
        children: [
          if (isEmailVerified) ...[
            SvgPicture.asset(
              Assets.assetsIconsWavyCheck,
              width: 24.w,
              height: 24.h,
            ),
            8.pw,
          ],
          Expanded(
            child: CustomText(
              text: title,
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
      trailing: const Icon(
        Icons.chevron_right,
        color: AppColors.blackDark,
        size: 28,
      ),
      onTap: onTap,
    );
  }
}
