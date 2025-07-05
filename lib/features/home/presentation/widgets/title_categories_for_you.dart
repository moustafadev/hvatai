part of '../home.dart';

class TitleCategoriesForYou extends StatelessWidget {
  const TitleCategoriesForYou({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomText(
            text: 'Categories for you',
            fontWeight: FontWeight.bold,
            fontSize: 20.sp),
        const Spacer(),
        GestureDetector(
            onTap: () {}, child: Icon(Icons.double_arrow_sharp, size: 14.sp))
      ],
    );
  }
}
