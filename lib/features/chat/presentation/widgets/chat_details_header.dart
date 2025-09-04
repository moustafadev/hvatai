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
          children: [
            GestureDetector(
              onTap: () {
                context.pop();
              },
              child: const Icon(Icons.arrow_back_ios),
            ),
            SizedBox(
              width: 100.w,
            ),
            CircleAvatar(
              radius: 16,
              backgroundImage: user.fullImageUrl.isNotEmpty
                  ? NetworkImage(user.fullImageUrl)
                  : const AssetImage(Assets.assetsImagesPlaceholder)
                      as ImageProvider,
            ),
            SizedBox(width: 20.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: user.name ?? 'No name', // Display user's name
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                ),
                // InkWell(
                //   onTap: () {
                //     final id = user.id;
                //     if (id == null) return; // or show a toast/snackbar

                //     showReportBottomSheet(
                //       context,
                //       id: id,
                //       type: 'User', // <- per your requirement
                //     );
                //   },
                //   child: const CommonTextWidget(
                //     text: 'Пожаловаться',
                //     color: AppColors.primary,
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
