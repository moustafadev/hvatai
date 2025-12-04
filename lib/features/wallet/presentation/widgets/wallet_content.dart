part of '../wallet.dart';

class WalletContent extends StatelessWidget {
  const WalletContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WalletCubit, WalletState>(
      builder: (context, state) {
        final cubit = context.read<WalletCubit>();
        final wallet = state.wallet;
        final balance = wallet?.balance ?? '0.00';
        final currency = wallet?.currency;
        final symbol = currency?.symbol ?? '₽';
        final availableBalance = balance;

        return SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const WalletHeader(),
                WalletBalanceCard(
                  balance: balance,
                  availableBalance: availableBalance,
                  symbol: symbol,
                ),
                24.ph,
                CustomGradientButton(
                  text: 'withdrawMoney'.tr(),
                  onPressed: () => cubit.showWithdrawSheet(),
                  width: double.infinity,
                  height: 54,
                  borderRadius: 10,
                ),
                24.ph,
                const WalletTipsSection(),
                24.ph,
                WalletTransactionsList(
                  isLoading: state.isLoadingTransactions,
                  transactions: state.transactions,
                  symbol: symbol,
                ),
                100.ph,
              ],
            ),
          ),
        );
      },
    );
  }
}
