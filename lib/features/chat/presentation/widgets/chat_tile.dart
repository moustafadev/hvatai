part of '../chat.dart';

class ChatTile extends StatelessWidget {
  final ChatModel chat;

  const ChatTile({super.key, required this.chat});

  @override
  Widget build(BuildContext context) {
    final user = chat.otherUser;
    final lastMessage = chat.lastMessage;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 24,
            backgroundImage: user?.fullImageUrl != null &&
                    (user?.fullImageUrl.isNotEmpty ?? false)
                ? NetworkImage(user?.fullImageUrl ?? "")
                : const AssetImage(Assets.assetsImagesPlaceholder)
                    as ImageProvider,
          ),
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
                          Text(
                            user?.name ?? 'Unknown',
                            style: const TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
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
                              color: AppColors.primary,
                              shape: BoxShape.circle,
                            ),
                            child: CustomText(text: '${chat.unreadCount}'),
                          )
                        : Icon(
                            lastMessage?.readAt != null
                                ? Icons.done_all
                                : Icons.done,
                            size: 20,
                            color: Colors.black,
                          )
                  ],
                ),
                const SizedBox(
                  width: double.infinity, // Ensures it stretches horizontally
                  child: Divider(
                    color: Color(0xffAFB3B6), // Customize color if necessary
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
