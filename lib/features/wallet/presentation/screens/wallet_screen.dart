part of '../wallet.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Try to get ProfileCubit from the widget tree, or create a new one
    ProfileCubit? profileCubit;
    try {
      profileCubit = context.read<ProfileCubit>();
    } catch (e) {
      profileCubit = locator<ProfileCubit>();
    }
    
    // Get wallet ID from profile, or default to 1
    final walletId = profileCubit.state.userProfileModel.walletId ?? 1;

    return BlocProvider.value(
      value: profileCubit,
      child: BlocProvider(
        create: (_) => locator<WalletCubit>()
          ..loadWallet(walletId)
          ..loadTransactions(walletId),
      child: BlocBuilder<WalletCubit, WalletState>(
        builder: (context, state) {
          final cubit = context.read<WalletCubit>();

          if (state.showLoadingScreen) {
            return const WalletLoadingScreen();
          }

          if (state.showSuccessScreen) {
            final wallet = state.wallet;
            final currency = wallet?.currency;
            final symbol = currency?.symbol ?? '₽';
            final withdrawalAmount = state.withdrawalAmount ?? 0.0;
            
            return WalletSuccessScreen(
              withdrawalAmount: withdrawalAmount,
              symbol: symbol,
              onContinue: () {
                cubit.hideSuccessScreen();
                context.pop();
              },
            );
          }

          if (state.isLoading) {
            return Scaffold(
              body: const Center(
                child: CircularProgressIndicator(color: AppColors.grey),
              ),
            );
          }

          if (state.errorMessage.isNotEmpty && state.wallet == null) {
            return Scaffold(
              body: Center(
                child: CustomText(
                  text: state.errorMessage,
                  fontWeight: FontWeight.w600,
                  color: AppColors.red,
                ),
              ),
            );
          }

          final wallet = state.wallet;
          final balance = wallet?.balance ?? '0.00';
          final currency = wallet?.currency;
          final symbol = currency?.symbol ?? '₽';
          final availableBalance = balance;

          return Scaffold(
            backgroundColor: AppColors.background,
            body: Stack(
              children: [
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Arrow back and wallet text
                        Padding(
                          padding: EdgeInsets.only(
                            top: MediaQuery.of(context).padding.top + 12.h,
                            bottom: 24.h,
                          ),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () => context.pop(),
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: AppColors.blackColorIcon,
                                  size: 20.sp,
                                ),
                              ),
                              12.pw,
                              CustomText(
                                text: 'wallet'.tr(),
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w800,
                              ),
                            ],
                          ),
                        ),
                        // White container with two sections
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(16.r),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // First section: Счёт аккаунта
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: '$balance $symbol',
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    8.ph,
                                    CustomText(
                                      text: 'accountBalance'.tr(),
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.blackColorIcon,
                                    ),
                                  ],
                                ),
                              ),
                              // Divider
                              Container(
                                width: 1,
                                height: 60.h,
                                color: Colors.grey[500],
                                margin: EdgeInsets.symmetric(horizontal: 16.w),
                              ),
                              // Second section: Доступно для вывода
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: '$availableBalance $symbol',
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    8.ph,
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          Assets.assetsIconsUpload,
                                          width: 16.w,
                                          height: 16.h,
                                        ),
                                        6.pw,
                                        Expanded(
                                          child: CustomText(
                                            text: 'availableForWithdrawal'.tr(),
                                            fontSize: 11.sp,
                                                                                fontWeight: FontWeight.w600,
                                                                                color: AppColors.blackColorIcon,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        24.ph,
                        // Withdraw money button
                        CustomGradientButton(
                          text: 'withdrawMoney'.tr(),
                          onPressed: () => cubit.showWithdrawSheet(),
                          width: double.infinity,
                          height: 54,
                          borderRadius: 10,
                        ),
                        24.ph,
                        // Tips section
                        GestureDetector(
                          onTap: () {
                            // Navigate to tips screen if needed
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    Assets.assetsIconsTips2,
                                    width: 24.w,
                                    height: 24.h,
                                  ),
                                  12.pw,
                                  CustomText(
                                    text: 'tips'.tr(),
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                                color: const Color(0xFF2A2A2A),
                              ),
                            ],
                          ),
                        ),
                        24.ph,
                        // History section
                        CustomText(
                          text: 'history'.tr(),
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w800,
                        ),
                        12.ph,
                        if (state.isLoadingTransactions)
                          const Center(
                            child: Padding(
                              padding: EdgeInsets.all(20.0),
                              child: CircularProgressIndicator(
                                color: AppColors.grey,
                              ),
                            ),
                          )
                        else if (state.transactions.isEmpty)
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(40.0),
                              child: CustomText(
                                text: 'noTransactions'.tr(),
                                fontSize: 14.sp,
                                color: AppColors.blackTransparent40,
                              ),
                            ),
                          )
                        else
                          Column(
                            children: [
                              ...List.generate(state.transactions.length, (index) {
                                final transaction = state.transactions[index];
                                final isDebit = transaction.type == 'debit';
                                final amount = transaction.amount ?? '0.00';
                                final description = transaction.description ?? '';

                                return Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(vertical: 16.h),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          // Amount on the left
                                          RichText(
                                            text: TextSpan(
                                              style: TextStyle(
                                                fontFamily: 'Manrope',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14.sp,
                                                color: const Color(0xFF2A2A2A),
                                                height: 1.0,
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: '${isDebit ? '-' : '+'}$amount ',
                                                ),
                                                TextSpan(
                                                  text: symbol,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          // Description on the right
                                          Expanded(
                                            child: Align(
                                              alignment: Alignment.centerRight,
                                              child: CustomText(
                                                text: description,
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w600,
                                                textAlign: TextAlign.right,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    if (index < state.transactions.length - 1)
                                      Divider(
                                        height: 1,
                                        thickness: 1,
                                        color: AppColors.gray,
                                      ),
                                  ],
                                );
                              }),
                            ],
                          ),
                        100.ph,
                      ],
                    ),
                  ),
                ),
                if (state.showWithdrawSheet)
                  WithdrawBottomSheet(
                    walletId: walletId,
                    availableBalance: double.tryParse(availableBalance) ?? 0.0,
                  ),
              ],
            ),
          );
        },
      ),
      ),
    );
  }
}

