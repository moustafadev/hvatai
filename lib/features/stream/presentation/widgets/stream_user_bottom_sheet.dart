part of '../stream.dart';

class StreamUserBottomSheet extends StatelessWidget {
  const StreamUserBottomSheet({
    super.key,
    required this.cubit,
  });

  final ViewerStreamCubit cubit;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: cubit,
      child: const _StreamUserBottomSheetBody(),
    );
  }
}

class _StreamUserBottomSheetBody extends StatelessWidget {
  const _StreamUserBottomSheetBody();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ViewerStreamCubit, ViewerStreamState>(
      builder: (context, state) {
        final cubit = context.read<ViewerStreamCubit>();
        final streamUser = state.stream.user;
        final isSubscribed = state.isSubscribed;
        final isToggleLoading = state.isTogglingSubscription;

        return SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              8.ph,
              _StreamUserBottomSheetHandle(),
              _StreamUserBottomSheetHeader(
                streamUser: streamUser,
                isSubscribed: isSubscribed,
                isToggleLoading: isToggleLoading,
                onToggleSubscription: () => cubit.toggleSubscription(),
              ),
              8.ph,
              Divider(
                color: AppColors.greyLine,
                height: 1.h,
              ),
              16.ph,
              _StreamUserBottomSheetActions(
                streamUser: streamUser,
                cubit: cubit,
              ),
            ],
          ),
        );
      },
    );
  }
}

class _StreamUserBottomSheetHandle extends StatelessWidget {
  const _StreamUserBottomSheetHandle();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 44.w,
        height: 4.h,
        margin: EdgeInsets.only(bottom: 16.h),
        decoration: BoxDecoration(
          color: AppColors.greyButton,
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
    );
  }
}

class _StreamUserBottomSheetHeader extends StatelessWidget {
  const _StreamUserBottomSheetHeader({
    required this.streamUser,
    required this.isSubscribed,
    required this.isToggleLoading,
    required this.onToggleSubscription,
  });

  final StreamUserModel? streamUser;
  final bool isSubscribed;
  final bool isToggleLoading;
  final VoidCallback onToggleSubscription;

  @override
  Widget build(BuildContext context) {
    final avatar = streamUser?.image;
    final name = streamUser?.name ?? '';
    final rating = streamUser?.personalRating ?? 0.0;
    final buttonTitle = isSubscribed ? 'unsubscribe'.tr() : 'subscribe'.tr();

    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        width: 40.r,
        height: 40.r,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.r),
          child: CustomImage(
            imageSource: avatar ?? '',
            width: 40.r,
            height: 40.r,
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: CustomText(
        text: name,
        fontSize: 14.sp,
        fontWeight: FontWeight.w800,
      ),
      subtitle: Row(
        children: [
          Image.asset(
            Assets.assetsIconsStar,
            color: AppColors.goldenColor,
            height: 16.h,
            width: 16.w,
          ),
          4.pw,
          CustomText(
            text: rating.toStringAsFixed(1),
            fontSize: 14.sp,
            fontWeight: FontWeight.w800,
          ),
        ],
      ),
      trailing: SizedBox(
        width: MediaQuery.of(context).size.width / 3.5,
        child: CustomButton(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          radius: 10.r,
          fontSize: 16.sp,
          fontWeight: FontWeight.w800,
          isLoading: isToggleLoading,
          onPressed: streamUser == null ? null : onToggleSubscription,
          title: buttonTitle,
        ),
      ),
    );
  }
}

class _StreamUserBottomSheetActions extends StatelessWidget {
  const _StreamUserBottomSheetActions({
    required this.streamUser,
    required this.cubit,
  });

  final StreamUserModel? streamUser;
  final ViewerStreamCubit cubit;

  void _navigateToChat(BuildContext context) {
    if (streamUser == null) return;

    // Convert StreamUserModel to UserDataModel for chat navigation
    final userDataModel = UserDataModel(
      id: streamUser!.id,
      name: streamUser!.name,
      image: streamUser!.image,
      email: streamUser!.email,
      personalRating: streamUser!.personalRating?.toInt(),
      personalRatingCount: streamUser!.personalRatingCount,
    );

    navigateToChatDetails(context, userDataModel);
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _StreamUserActionRow(
            title: 'write'.tr(),
            imagePath: Assets.assetsIconsMessage,
            onTap: () => _navigateToChat(context),
          ),
          12.ph,
          _StreamUserActionRow(
            title: 'awardsDanger'.tr(),
            imagePath: Assets.assetsIconsDangerTriangle,
            color: AppColors.red,
            onTap: () {
              final cubit = ChatsCubit.get(context);

              // Navigate immediately with existing chat ID or 0 as placeholder
              final existingChatId = cubit.state.supportChat?.id ?? 0;
              inChat = true;

              context.push(
                '${AppRoutes.chatRoot}/${AppRoutes.chatSupportDetails}',
                extra: {
                  'chatId': existingChatId,
                },
              );
            },
          ),
          16.ph,
        ],
      ),
    );
  }
}

class _StreamUserActionRow extends StatelessWidget {
  const _StreamUserActionRow({
    required this.title,
    required this.imagePath,
    this.color,
    required this.onTap,
  });

  final String title;
  final String imagePath;
  final Color? color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          CircleAvatar(
            radius: 20.r,
            backgroundColor: AppColors.gray,
            child: Image.asset(
              imagePath,
              color: color ?? AppColors.blackDark,
              width: 20.w,
              height: 20.h,
            ),
          ),
          12.pw,
          CustomText(
            text: title,
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: color ?? AppColors.blackDark,
          ),
        ],
      ),
    );
  }
}
