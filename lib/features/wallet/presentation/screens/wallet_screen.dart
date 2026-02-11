part of '../wallet.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key, required this.walletId});
  final int walletId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
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

          return Scaffold(
            backgroundColor: AppColors.background,
            body: Stack(
              children: [
                const WalletContent(),
                if (state.showWithdrawSheet)
                  BlocBuilder<WalletCubit, WalletState>(
                    builder: (context, state) {
                      final wallet = state.wallet;
                      final availableBalance = wallet?.balance ?? '0.00';
                      return WithdrawBottomSheet(
                        walletId: walletId,
                        availableBalance:
                            double.tryParse(availableBalance) ?? 0.0,
                      );
                    },
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
