part of '../home.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
        
          icon: Icon(
            Icons.arrow_back_ios,
            color: AppColors.blackDark,
          ),
          onPressed: () {
            context.pop();
          },
      )
    ));
  }
}