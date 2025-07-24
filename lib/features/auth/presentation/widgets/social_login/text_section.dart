part of '../../auth.dart';

class TextSection extends StatelessWidget {
  const TextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(
          text: 'grabIt'.tr(),
          fontSize: 40.sp,
          fontWeight: FontWeight.w800,
        ),
        CustomText(
          text: 'joinCommunity'.tr(),
          textAlign: TextAlign.center,
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
        ),
      ],
    );
  }
}
