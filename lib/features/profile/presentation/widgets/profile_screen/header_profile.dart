part of '../../profile.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        final user = state.userProfileModel;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.of(context).maybePop(),
                    icon: const Icon(Icons.arrow_back_ios,
                        color: AppColors.blackColorIcon),
                  ),
                  const Spacer(),
                  _IconButton(
                    onTap: () {
                      ChatsCubit.get(context).getChats();
                      ChatsCubit.get(context).getSupportChat();
                      context.push(AppRoutes.chatRoot);
                    },
                    asset: Assets.assetsIconsMessage,
                    background: const Color(0xFFF2F2F2),
                  ),
                  12.pw,
                  _IconButton(
                    onTap: () {
                      context.push(AppRoutes.profileSettings,
                          extra: context.read<ProfileCubit>());
                    },
                    asset: Assets.assetsIconsSettings,
                    background: const Color(0xFFF2F2F2),
                  ),
                  12.pw,
                  _IconButton(
                    onTap: () {
                      context.push(AppRoutes.mainNotification);
                    },
                    asset: Assets.assetsIconsBell,
                  ),
                ],
              ),
              12.ph,
              CircleAvatar(
                radius: 25.r,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25.r),
                  child: CustomImage(
                    key: ValueKey(user.image),
                    imageSource: user.image ?? '',
                    width: 50.w,
                    height: 50.h,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              4.ph,
              CustomText(
                text: user.firstName ?? 'username',
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
              ),
              4.ph,
              CustomText(
                text: user.lastName ?? '',
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.greyTransparent,
              ),
              4.ph,
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '${user.subscribersCount ?? 0}',
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w700,
                        fontSize: 14.sp,
                        height: 1,
                        letterSpacing: 0,
                        color: AppColors.blackColorIcon,
                      ),
                    ),
                    TextSpan(
                      text: ' подписчиков  ',
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        height: 1,
                        letterSpacing: 0,
                        color: AppColors.blackTransparent40,
                      ),
                    ),
                    TextSpan(
                      text: '•  ${user.subscribedUsersCount ?? 0}',
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w700,
                        fontSize: 14.sp,
                        height: 1,
                        letterSpacing: 0,
                        color: AppColors.blackColorIcon,
                      ),
                    ),
                    TextSpan(
                      text: ' подписок',
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        height: 1,
                        letterSpacing: 0,
                        color: AppColors.blackTransparent40,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _IconButton extends StatelessWidget {
  const _IconButton(
      {required this.onTap, required this.asset, this.background});
  final VoidCallback onTap;
  final String asset;
  final Color? background;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: background ?? Colors.transparent,
          shape: BoxShape.circle,
        ),
        alignment: Alignment.center,
        child: Image.asset(
          asset,
          width: 24,
          height: 24,
        ),
      ),
    );
  }
}
