part of '../../auth.dart';

class TextSection extends StatelessWidget {
  const TextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(
          text: 'grabIt'.tr(),
          fontSize: 32.sp,
          fontWeight: FontWeight.bold,
          fontFamily: 'SFProRounded',
        ),
        CustomText(
          text: 'YourPurchaseisProtected'.tr(),
          textAlign: TextAlign.center,
          fontSize: 25.sp,
          fontWeight: FontWeight.bold,
          fontFamily: 'SFProRounded',
        ),
        CustomText(
          text: 'joinCommunity'.tr(),
          textAlign: TextAlign.center,
          fontSize: 16.sp,
          fontFamily: 'MontserratAlternates',
        ),
      ],
    );
  }
}
