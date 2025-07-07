part of '../search.dart';

class UsersSearchWidget extends StatelessWidget {
  const UsersSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final dummyUsers = [
      const UserRegistrationData(firstName: "Alice"),
      const UserRegistrationData(firstName: "Bob"),
      const UserRegistrationData(firstName: "Charlie"),
      const UserRegistrationData(firstName: "Diana"),
    ];

    return ListView.separated(
      shrinkWrap: true,
      padding: EdgeInsets.all(0),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: dummyUsers.length,
      separatorBuilder: (_, __) =>
          const Divider(color: AppColors.blackTransparent40),
      itemBuilder: (context, i) => UserTile(user: dummyUsers[i]),
    );
  }
}

class UserTile extends StatelessWidget {
  final UserRegistrationData user;

  const UserTile({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(0),
      leading: CircleAvatar(
        radius: 20.r,
        backgroundColor: AppColors.transparent,
        backgroundImage: AssetImage(
          Assets.assetsIconsApple1,
        ),
      ),
      title: CustomText(
        text: user.firstName ?? '',
        fontWeight: FontWeight.w500,
        fontFamily: 'Manrope',
        fontSize: 16.sp,
      ),
      subtitle: CustomText(
        text: "15K subscribers".tr(),
        fontWeight: FontWeight.w400,
        fontFamily: 'Manrope',
        fontSize: 16.sp,
        color: Colors.grey,
      ),
      trailing: SizedBox(
        // تحدد عرض مناسب للـ Row
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(Assets.assetsIconsStar,
                color: AppColors.goldenColor, height: 16.h, width: 16.w),
            CustomText(
              text: "4.5",
              fontSize: 12.sp,
              fontWeight: FontWeight.w700,
              fontFamily: 'GManrope',
              color: AppColors.blackDark,
            ),
          ],
        ),
      ),
    );
  }
}
