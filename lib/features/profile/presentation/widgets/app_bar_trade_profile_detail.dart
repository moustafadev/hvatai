part of '../profile.dart';

class AppBarTradeProfileDetail extends StatelessWidget {
  const AppBarTradeProfileDetail({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        GestureDetector(
            onTap: () {
              context.pop();
            },
            child: Icon(Icons.arrow_back_ios)),
        Expanded(
          child: const SizedBox.shrink(),
        ),
        GestureDetector(
          onTap: () {
            // Get.to(() => GiftScreen());
          },
          child: CircleAvatar(
            backgroundColor: AppColors.white,
            radius: 20.r,
            child: NotificationIconWidget(count: 2),
          ),
        ),
      ],
    );
  }
}
