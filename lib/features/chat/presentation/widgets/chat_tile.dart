part of '../chat.dart';

class ChatTile extends StatelessWidget {
  final ChatModel chat;

  const ChatTile({super.key, required this.chat});

  @override
  Widget build(BuildContext context) {
    final user = chat.otherUser;
    final lastMessage = chat.lastMessage;

    return Container(
      color: AppColors.background,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                    radius: 32,
                    backgroundColor: Colors.transparent,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(32),
                      child: CustomImage(
                        imageSource: user?.fullImageUrl ?? '',
                        width: 44,
                        height: 44,
                        fit: BoxFit.cover,
                      ),
                    )),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  text: user?.name ?? 'Unknown',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14.sp,
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  lastMessage?.senderId == user?.id
                                      ? (lastMessage?.content ?? '')
                                      : 'Вы: ${lastMessage?.content ?? ''}',
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                  ),
                                  maxLines: 2, // Limit the text to 2 lines
                                  overflow: TextOverflow
                                      .ellipsis, // Add ellipsis if text overflows
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 8),
                          chat.unreadCount != 0
                              ? Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: const BoxDecoration(
                                    color: AppColors.purple2,
                                    shape: BoxShape.circle,
                                  ),
                                  child: CustomText(
                                    text: '${chat.unreadCount}',
                                    color: Colors.white,
                                  ),
                                )
                              : Icon(
                                  lastMessage?.readAt != null
                                      ? Icons.done_all
                                      : Icons.done,
                                  size: 20,
                                  color: AppColors.primary,
                                )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: Container(
              width: double.infinity,
              height: 1,
              color: const Color(0xffF2F2F2),
            ),
          ),
        ],
      ),
    );
  }
}
