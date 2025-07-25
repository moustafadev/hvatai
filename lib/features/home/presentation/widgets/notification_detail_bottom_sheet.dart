part of '../home.dart';

class NotificationDetailBottomSheet extends StatelessWidget {
  const NotificationDetailBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.w),
      child: Column(
        mainAxisSize: MainAxisSize.min, // ✅ تجعل الحجم حسب المحتوى فقط
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 40.w,
              height: 4.h,
              margin: EdgeInsets.only(bottom: 16.h),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
          ),
          Image.asset(
            Assets.assetsIconsAppleg,
            height: 40.h,
            width: 40.w,
            fit: BoxFit.cover,
          ),
          8.ph,
          RichText(
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'company_name',
                  style: TextStyle(
                    color: AppColors.primaryPink,
                    fontSize: 14.sp,
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: ' has subscribed to you ',
                  style: TextStyle(
                    color: AppColors.blackDark,
                    fontSize: 14.sp,
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          CustomText(
            text: '3 hours ago',
            fontSize: 12.sp,
            color: AppColors.grey,
            fontWeight: FontWeight.w400,
          ),
          16.ph,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: 'Subscribing back is a great way to:',
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
              ),
              8.ph,
              CustomText(
                text:
                    '✔ Stay in touch and be the first to know about new arrivals and promotions',
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
              ),
              8.ph,
              CustomText(
                text: '✔ See exclusive offers for subscribers only',
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
              ),
              8.ph,
              CustomText(
                text:
                    '✔ Participate in closed draws and receive personal discounts',
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
              ),
              16.ph,
            ],
          ),
          CustomButton(
            title: 'Subscribe',
            fontSize: 16.sp,
            fontWeight: FontWeight.w800,
            color: AppColors.primaryColor,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
