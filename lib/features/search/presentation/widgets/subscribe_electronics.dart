part of '../search.dart';

class SubscribeElectronics extends StatelessWidget {
  const SubscribeElectronics({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CustomText(
              text: 'Everyday Electronics'.tr(),
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              fontFamily: 'SFProRounded',
            ),
            const Spacer(),
            GestureDetector(
                onTap: () {},
                child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.r),
                        border: Border.all(color: AppColors.grey),
                        color: AppColors.gray),
                    child: CustomText(
                        text: 'Unsubscribe'.tr(),
                        color: AppColors.blackLite,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold))),
          ],
        ),
        21.ph,
        TopElectronicsContainer(),
      ],
    );
  }
}
