part of '../chat.dart';

enum _TailDirection { right, left }

class ChatBubbleTail extends CustomPainter {
  ChatBubbleTail({required this.color, required this.isSentByMe});

  final Color color;
  final bool isSentByMe;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;

    Path paintBubbleTail(_TailDirection direction) {
      late double startingPoint;
      late double point;
      late double endPoint;
      late double curvePoint;
      if (direction == _TailDirection.right) {
        startingPoint = size.width - 5;
        point = size.width + 10;
        endPoint = size.width + 3;
        curvePoint = size.width;
      }
      if (direction == _TailDirection.left) {
        startingPoint = 5;
        point = -10;
        endPoint = -3;
        curvePoint = 0;
      }
      return Path()
        ..moveTo(startingPoint, size.height)
        ..lineTo(point, size.height)
        ..quadraticBezierTo(
            endPoint, size.height, curvePoint, size.height - 10);
    }

    final RRect bubbleBody = RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, size.width, size.height),
        const Radius.circular(5.0));
    final Path bubbleTail = isSentByMe
        ? paintBubbleTail(_TailDirection.right)
        : paintBubbleTail(_TailDirection.left);

    canvas.drawRRect(bubbleBody, paint);
    canvas.drawPath(bubbleTail, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class ChatBubble extends StatelessWidget {
  final MessageModel message;
  final bool? isSupport;

  const ChatBubble({super.key, required this.message, this.isSupport});

  @override
  Widget build(BuildContext context) {
    final isUser = message.senderId == locator<AppLocal>().getUserId();
    final senderImage = message.sender?.fullUrl;

    // 🔹 Bot notice/resolved_notice → show centered orange-bordered container
    if (message.botIntent == 'notice' ||
        message.botIntent == 'resolved_notice') {
      return Center(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            message.content ?? '',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
            ),
            textAlign: TextAlign.center,
          ),
        ),
      );
    }

    // 🔹 Support chat & not user → show avatar + bubble with name inside
    if (isSupport == true && !isUser) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CircleAvatar(
                radius: 18,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: CustomImage(
                    imageSource: senderImage ?? "",
                    width: 36,
                    height: 36,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              ChatMessageContent(
                message: message,
                isUser: false,
                showSenderName: true, // 👈 name appears inside bubble
                isSupport: isSupport,
              ),
            ],
          ),
          // Suggestions below support message
          if (message.suggestions != null && message.suggestions!.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(left: 44, top: 8),
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                children: message.suggestions!
                    .map((suggestion) => _SuggestionContainer(
                          text: suggestion,
                          onTap: () {
                            final cubit = ChatsCubit.get(context);
                            cubit.sendSupportMessage(suggestion, []);
                          },
                        ))
                    .toList(),
              ),
            ),
        ],
      );
    }

    // 🔹 Default alignment for user or non-support
    return Align(
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Column(
        crossAxisAlignment:
            isUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          ChatMessageContent(
            message: message,
            isUser: isUser,
            showSenderName: false,
            isSupport: isSupport,
          ),
          // Show suggestions for messages from others
          if (!isUser &&
              message.suggestions != null &&
              message.suggestions!.isNotEmpty)
            Padding(
              padding: EdgeInsets.only(
                top: 8,
                left: isUser ? 0 : 0,
                right: isUser ? 0 : 0,
              ),
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                children: message.suggestions!
                    .map((suggestion) => _SuggestionContainer(
                          text: suggestion,
                          onTap: () {
                            final cubit = ChatsCubit.get(context);
                            if (isSupport == true) {
                              cubit.sendSupportMessage(suggestion, []);
                            } else {
                              final receiverId = message.senderId ?? 0;
                              cubit.sendMessage(suggestion, receiverId, []);
                            }
                          },
                        ))
                    .toList(),
              ),
            ),
        ],
      ),
    );
  }
}

class ChatMessageContent extends StatelessWidget {
  final MessageModel message;
  final bool isUser;
  final bool showSenderName;
  final bool? isSupport;

  const ChatMessageContent({
    super.key,
    required this.message,
    required this.isUser,
    this.showSenderName = false,
    this.isSupport,
  });

  @override
  Widget build(BuildContext context) {
    final hasNetworkImages =
        message.images != null && message.images!.isNotEmpty;
    final hasLocalImages =
        message.localImages != null && message.localImages!.isNotEmpty;

    final senderName = message.sender?.name ?? "Неизвестно";

    // Border radius based on message alignment
    final BorderRadius borderRadius;
    if (isUser) {
      // User's messages (right-aligned): round left corners
      borderRadius = const BorderRadius.only(
        topLeft: Radius.circular(18),
        topRight: Radius.circular(12),
        bottomLeft: Radius.circular(18),
        bottomRight: Radius.circular(8),
      );
    } else {
      // Other user's messages (left-aligned): round right corners
      borderRadius = const BorderRadius.only(
        topLeft: Radius.circular(12),
        topRight: Radius.circular(18),
        bottomLeft: Radius.circular(8),
        bottomRight: Radius.circular(18),
      );
    }

    // Keep existing colors
    final bubbleColor = isUser ? AppColors.gray2 : AppColors.gold;

    return Container(
      margin: EdgeInsets.only(
        top: 6,
        bottom: 6,
        left: isUser ? 0 : 0,
        right: isUser ? 5 : 0,
      ),
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width * 0.75,
      ),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            decoration: BoxDecoration(
              color: bubbleColor,
              borderRadius: borderRadius,
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
                  showSenderName
                      ? Html(
                          data: message.content!,
                          shrinkWrap: true,
                          style: {
                            "body": Style(
                              margin: Margins.zero,
                              padding: HtmlPaddings.zero,
                              fontSize: FontSize(14),
                            ),
                            "p": Style(
                              margin: Margins.zero,
                              padding: HtmlPaddings.zero,
                            ),
                          },
                        )
                      : Text(
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
          ),
          Positioned(
            bottom: 0,
            left: isUser ? null : 0,
            right: isUser ? 0 : null,
            child: CustomPaint(
              painter: ChatBubbleTail(
                color: bubbleColor,
                isSentByMe: isUser,
              ),
              size: const Size(15, 15),
            ),
          ),
        ],
      ),
    );
  }
}

class _SuggestionContainer extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const _SuggestionContainer({required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 5),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
