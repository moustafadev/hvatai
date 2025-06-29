part of '../activity.dart';

class MessageListWidget extends StatelessWidget {
  const MessageListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final dummyUsers = [
      const UserRegistrationData(firstName: "Alice"),
      const UserRegistrationData(firstName: "Bob"),
      const UserRegistrationData(firstName: "Charlie"),
      const UserRegistrationData(firstName: "Diana"),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.separated(
        itemCount: dummyUsers.length,
        separatorBuilder: (_, __) => const Divider(color: Color(0xffe2e2e2)),
        itemBuilder: (context, i) => UserTile(user: dummyUsers[i]),
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          gradient: AppColors.primaryGradient,
          borderRadius: BorderRadius.circular(30.r),
        ),
        child: FloatingActionButton.extended(
          onPressed: () {},
          icon: Image.asset(Assets.assetsIconsPen),
          label: CustomText(
            text: "write".tr(),
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}

class UserTile extends StatelessWidget {
  final UserRegistrationData user;

  const UserTile({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipOval(
        child: Image.asset(
          Assets.assetsImagesAppleg,
          height: 40.h,
          width: 40.w,
          fit: BoxFit.cover,
        ),
      ),
      title: CustomText(
        text: user.firstName ?? '',
        fontWeight: FontWeight.w500,
        fontFamily: 'Gilroy-Bold',
        fontSize: 16.sp,
      ),
      subtitle: CustomText(
        text: "tapToChat".tr(),
        fontWeight: FontWeight.w400,
        fontFamily: 'Gilroy-Bold',
        fontSize: 16.sp,
        color: Colors.grey,
      ),
    );
  }
}
