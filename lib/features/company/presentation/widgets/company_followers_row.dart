part of '../company.dart';

class _CompanyFollowersRow extends StatelessWidget {
  const _CompanyFollowersRow({
    required this.subscribersCount,
    required this.subscribedUsersCount,
  });

  final int subscribersCount;
  final int subscribedUsersCount;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: '$subscribersCount',
            style: TextStyle(
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w700,
              fontSize: 14.sp,
              height: 1,
              color: AppColors.blackColorIcon,
            ),
          ),
          TextSpan(
            text: ' ${'subscribers'.tr()}  ',
            style: TextStyle(
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              height: 1,
              color: AppColors.text,
            ),
          ),
          TextSpan(
            text: '•  $subscribedUsersCount',
            style: TextStyle(
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w700,
              fontSize: 14.sp,
              height: 1,
              color: AppColors.blackColorIcon,
            ),
          ),
          TextSpan(
            text: ' ${'subscriptions'.tr()}',
            style: TextStyle(
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              height: 1,
              color: AppColors.text,
            ),
          ),
        ],
      ),
    );
  }
}
