part of '../search.dart';

class UsersSearchWidget extends StatelessWidget {
  const UsersSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(
              color: AppColors.grey,
            ),
          );
        }

        if (state.users.isEmpty) {
          return const CustomText(
            text: 'No users found',
            fontWeight: FontWeight.w500,
          );
        }

        return ListView.separated(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: state.users.length,
          separatorBuilder: (_, __) =>
              const Divider(color: AppColors.blackTransparent40),
          itemBuilder: (context, i) => UserTile(user: state.users[i]),
        );
      },
    );
  }
}

class UserTile extends StatelessWidget {
  final UserRegistrationData user;

  const UserTile({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => context.push(AppRoutes.companyName),
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
        fontSize: 16.sp,
      ),
      // subtitle: CustomText(
      //   text: "15K subscribers".tr(),
      //   fontWeight: FontWeight.w400,
      //   fontSize: 16.sp,
      //   color: Colors.grey,
      // ),
      trailing: SizedBox(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(Assets.assetsIconsStar,
                color: AppColors.goldenColor, height: 16.h, width: 16.w),
            CustomText(
              text: user.personalRating.toString(),
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
