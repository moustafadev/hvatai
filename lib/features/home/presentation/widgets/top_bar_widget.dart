part of '../home.dart';

class TopBarHomeWidget extends StatelessWidget {
  const TopBarHomeWidget({
    super.key,
    required this.controller,
    required this.focusNode,
    required this.onSubmitted,
    required this.onClear,
    required this.onFocus,

    // ✅ add these
    required this.searchFieldKey,
    required this.searchFieldLink,
  });

  final TextEditingController controller;
  final FocusNode focusNode;
  final ValueChanged<String> onSubmitted;
  final VoidCallback onClear;
  final VoidCallback onFocus;

  // ✅ new
  final GlobalKey searchFieldKey;
  final LayerLink searchFieldLink;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<NotificationsCubit>(),
      child: BlocBuilder<NotificationsCubit, NotificationsState>(
        builder: (context, state) {
          final cubit = context.read<NotificationsCubit>();
          final count = state.notifications?.data?.length ?? 0;

          return Row(
            children: [
              Expanded(
                child: ValueListenableBuilder<TextEditingValue>(
                  valueListenable: controller,
                  builder: (_, value, __) {
                    final hasText = value.text.trim().isNotEmpty;

                    // ✅ this is the important part
                    return CompositedTransformTarget(
                      link: searchFieldLink,
                      child: Container(
                        key: searchFieldKey,
                        child: CustomTextField(
                          controller: controller,
                          focusNode: focusNode,
                          height: 40,
                          fillColor: AppColors.white,
                          borderRadius: BorderRadius.circular(10.r),
                          hintText: 'find'.tr(),
                          textInputAction: TextInputAction.search,
                          onTap: onFocus,
                          onFieldSubmitted: onSubmitted,
                          prefixIcon: Image.asset(
                            Assets.assetsIconsSearch,
                            color: AppColors.blackDark,
                            height: 22.h,
                            width: 22.w,
                          ),
                          suffixIcon: hasText
                              ? GestureDetector(
                                  onTap: onClear,
                                  child: const Icon(Icons.close, size: 20),
                                )
                              : null,
                        ),
                      ),
                    );
                  },
                ),
              ),
              8.pw,
              GestureDetector(
                onTap: () {
                  context.push(AppRoutes.mainNotification, extra: cubit);
                },
                child: NotificationIconWidget(count: count),
              ),
              10.pw,
              GestureDetector(
                onTap: () {
                  context.push(AppRoutes.inviteFriends);
                },
                child: CircleAvatar(
                  backgroundColor: AppColors.purple,
                  radius: 16.r,
                  child: Image.asset(
                    height: 16.h,
                    width: 16.w,
                    Assets.assetsIconsGift,
                    color: AppColors.white,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
