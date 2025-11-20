part of '../stream.dart';

class LiveListingsSpeechBubble extends StatelessWidget {
  const LiveListingsSpeechBubble({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
            decoration: BoxDecoration(
              color: AppColors.blackColorIcon,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomText(
                  text: 'No Inventory!',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.white,
                ),
                SizedBox(height: 4.h),
                CustomText(
                  text: 'Tap here to create new products.',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.white,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: -6.h,
            right: 12.w,
            child: CustomPaint(
              size: Size(12.w, 12.h),
              painter: PointerPainter(),
            ),
          ),
        ],
      ),
    );
  }
}

