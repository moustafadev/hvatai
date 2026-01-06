part of '../chat.dart';

class ChatDetailsSupportHeader extends StatelessWidget {
  const ChatDetailsSupportHeader({
    super.key,
  }); // Updated constructor

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatsCubit, ChatsState>(
      builder: (context, state) {
        final supportChat = state.supportChat;
        final support = supportChat?.support;

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
                                imageSource: support?.fullImageUrl ?? '',
                                width: 32,
                                height: 32))),
                    SizedBox(width: 10.w),
                    CustomText(
                      text: support?.name ?? 'Поддержка', // Display user's name
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
      },
    );
  }
}
