part of '../chat.dart';

class SupportChatTile extends StatelessWidget {
  final SupportChatModel chat;

  const SupportChatTile({super.key, required this.chat});

  @override
  Widget build(BuildContext context) {
    final lastMessage = chat.lastMessage;

    return InkWell(
      onTap: () async {
        final cubit = ChatsCubit.get(context);
        cubit.markMessageAsRead(chat.id ?? 0);
        cubit.getSupportMessages(chat.id ?? 0);

        context.push(
          '${AppRoutes.chatRoot}/${AppRoutes.chatSupportDetails}',
          extra: {'chatId': chat.id},
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const CircleAvatar(
            //   radius: 32,
            //   backgroundColor: Colors.transparent,
            //   backgroundImage: AssetImage(Assets.assetsImagesSupportChat),
            // ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // const CommonTextWidget(
                  //   text: 'Поддержка',
                  //   size: 18,
                  //   fontWeight: FontWeight.w700,
                  // ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          lastMessage?.content ?? '',
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black87,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      // chat.unreadCount != 0 && chat.unreadCount != null
                      //     ? Container(
                      //         padding: const EdgeInsets.all(8),
                      //         decoration: const BoxDecoration(
                      //           color: AppColors.primary,
                      //           shape: BoxShape.circle,
                      //         ),
                      //         child:
                      //             CommonTextWidget(text: '${chat.unreadCount}'),
                      //       )
                      //     : lastMessage?.readAt != null
                      //         ? const Icon(Icons.done_all,
                      //             size: 20, color: Colors.black)
                      //         : const Icon(Icons.done,
                      //             size: 20, color: Colors.black),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
