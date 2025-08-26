part of '../chat.dart';

class ChatDetailsSupportHeader extends StatelessWidget {
  const ChatDetailsSupportHeader({
    super.key,
  }); // Updated constructor

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 16, top: 16),
      child: Row(
        children: [
          // CircleAvatar(
          //   radius: 32,
          //   backgroundColor:
          //       Colors.transparent, // optional for PNG with transparency
          //   backgroundImage: AssetImage(Assets.assetsImagesSupportChat),
          // ),
          SizedBox(width: 20),
          // CommonTextWidget(
          //   text: 'Поддержка', // Display user's name
          //   size: 18,
          //   fontWeight: FontWeight.w700,
          // ),
        ],
      ),
    );
  }
}
