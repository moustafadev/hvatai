part of '../chat.dart';

class ChatBubble extends StatelessWidget {
  final MessageModel message;
  final bool? isSupport;

  const ChatBubble({super.key, required this.message, this.isSupport});

  @override
  Widget build(BuildContext context) {
    final isUser = message.senderId == locator<AppLocal>().getUserId();
    final senderImage = message.sender?.fullUrl;

    // 🔹 Support chat & not user → show avatar + bubble with name inside
    if (isSupport == true && !isUser) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 18,
            backgroundImage: senderImage != null && senderImage.isNotEmpty
                ? NetworkImage(senderImage)
                : const AssetImage(Assets.assetsImagesPlaceholder)
                    as ImageProvider,
          ),
          const SizedBox(width: 8),
          ChatMessageContent(
            message: message,
            isUser: false,
            showSenderName: true, // 👈 name appears inside bubble
          ),
        ],
      );
    }

    // 🔹 Default alignment for user or non-support
    return Align(
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: ChatMessageContent(
        message: message,
        isUser: isUser,
        showSenderName: false,
      ),
    );
  }
}

class ChatMessageContent extends StatelessWidget {
  final MessageModel message;
  final bool isUser;
  final bool showSenderName;

  const ChatMessageContent({
    super.key,
    required this.message,
    required this.isUser,
    this.showSenderName = false,
  });

  @override
  Widget build(BuildContext context) {
    final hasNetworkImages =
        message.images != null && message.images!.isNotEmpty;
    final hasLocalImages =
        message.localImages != null && message.localImages!.isNotEmpty;

    final senderName = message.sender?.name ?? "Неизвестно";

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width * 0.75,
      ),
      decoration: BoxDecoration(
        color: !isUser ? AppColors.gold : AppColors.gray2,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(18),
          topRight: Radius.circular(8),
          bottomLeft: Radius.circular(18),
          bottomRight: Radius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // 🔹 Optional sender name inside bubble
          if (showSenderName && !isUser) ...[
            Text(
              senderName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 13,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 4),
          ],

          // 🔹 Images
          if (hasLocalImages || hasNetworkImages) ...[
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                if (hasLocalImages)
                  ...message.localImages!.map((path) => ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.file(
                          File(path),
                          width: 120,
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                      )),
                if (hasNetworkImages)
                  ...message.images!.map((img) => ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: CustomImage(
                          imageSource: img.fullUrl,
                          width: 120,
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                      )),
              ],
            ),
            const SizedBox(height: 8),
          ],

          // 🔹 Message content
          if ((message.content ?? '').isNotEmpty)
            Text(
              message.content!,
              style: const TextStyle(fontSize: 14),
            ),

          const SizedBox(height: 6),

          // 🔹 Timestamp + Read Status
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                DateUtilsFormat.formatDate(message.createdAt ?? ""),
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(width: 4),
              Icon(
                message.readAt != null ? Icons.done_all : Icons.done,
                size: 20,
                color: Colors.black,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
