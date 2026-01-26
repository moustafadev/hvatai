part of '../invite_friend.dart';

class AcceptInviteScreen extends StatelessWidget {
  const AcceptInviteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AcceptInviteCubit(),
      child: BlocBuilder<AcceptInviteCubit, AcceptInviteState>(
        builder: (context, state) {
          final cubit = context.read<AcceptInviteCubit>();

          return Scaffold(
            backgroundColor: AppColors.lightGreyBackground,
            appBar: AppBar(
              backgroundColor: AppColors.lightGreyBackground,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios,
                    color: AppColors.blackColorIcon),
                onPressed: () => context.pop(),
              ),
              actions: [
                TextButton.icon(
                  iconAlignment: IconAlignment.end,
                  icon: const Icon(
                    Icons.double_arrow,
                    color: AppColors.blackColorIcon,
                  ),
                  label: CustomText(
                    text: 'skip'.tr(),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.blackDark,
                  ),
                  onPressed: () => _skipToImageDelay(context),
                ),
              ],
            ),
            body: SafeArea(
              bottom: false,
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          24.ph,
                          CustomText(
                            text: 'Введите реферальный код',
                            fontWeight: FontWeight.w800,
                            fontSize: 20.sp,
                            textAlign: TextAlign.center,
                          ),
                          16.ph,
                          CustomText(
                            text:
                                'Введите код пригласившего вас друга, и вы оба получите подарок',
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                            textAlign: TextAlign.center,
                          ),
                          24.ph,
                          // Error message
                          if (state.hasError) ...[
                            Align(
                              alignment: Alignment.centerLeft,
                              child: CustomText(
                                text: state.errorMessage,
                                color: AppColors.redLite,
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                              ),
                            ),
                            8.ph,
                          ],
                          // Text field
                          CustomTextField(
                            hintText: 'Введите код',
                            keyboardType: TextInputType.text,
                            isRequired: false,
                            onChanged: cubit.updateCode,
                            borderSide: state.hasError
                                ? BorderSide(color: AppColors.redLite, width: 1)
                                : null,
                            textColor:
                                state.hasError ? AppColors.redLite : null,
                          ),
                          12.ph,
                          Align(
                            alignment: Alignment.centerLeft,
                            child: GestureDetector(
                              onTap: () => HowItWorksBottomSheet.show(context),
                              child: CustomText(
                                text: 'Как это работает?',
                                color: AppColors.primaryColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverFillRemaining(
                    hasScrollBody: false,
                    fillOverscroll: true,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 20),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: CustomGradientButton(
                          isLoading: state.isLoading,
                          isDisabled: state.code.isEmpty,
                          text: 'continue'.tr(),
                          onPressed: state.code.isEmpty || state.isLoading
                              ? null
                              : () => cubit.submitCode(
                                    onSuccess: () => context
                                        .push(AppRoutes.acceptInviteSuccess),
                                  ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _skipToImageDelay(BuildContext context) {
    context.go(AppRoutes.home);
  }
}
