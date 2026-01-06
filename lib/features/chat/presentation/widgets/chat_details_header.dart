part of '../chat.dart';

class ChatDetailsHeader extends StatelessWidget {
  final UserChatModel user; // Accept the user model

  const ChatDetailsHeader(
      {super.key, required this.user}); // Updated constructor

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, top: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                context.pop();
              },
              child: const Icon(Icons.arrow_back_ios),
            ),
            Row(
              children: [
                CircleAvatar(
                    radius: 16,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(32),
                        child: CustomImage(
                            imageSource: user.fullImageUrl,
                            width: 32,
                            height: 32))),
                SizedBox(width: 10.w),
                CustomText(
                  text: user.name ?? 'No name', // Display user's name
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w800,
                ),
              ],
            ),
            SizedBox(width: 30.w),
          ],
        ),
      ),
    );
  }
}
