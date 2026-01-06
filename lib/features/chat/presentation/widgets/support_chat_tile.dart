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
      child: Container(
        color: AppColors.background,
        child: Padding(
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
                      imageSource: chat.support?.fullImageUrl ?? '',
                      width: 44,
                      height: 44,
                      fit: BoxFit.cover,
                    ),
                  )),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: chat.support?.name ?? 'Поддержка',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Expanded(
                          child: Html(
                            data: lastMessage?.content ?? '',
                            shrinkWrap: true,
                            style: {
                              "body": Style(
                                margin: Margins.zero,
                              ),
                              "p": Style(
                                margin: Margins.zero,
                              ),
                            },
                          ),
                        ),
                        chat.unreadCount != 0 && chat.unreadCount != null
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
      ),
    );
  }
}
