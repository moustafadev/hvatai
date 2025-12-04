part of '../wallet.dart';

class WalletTransactionsList extends StatelessWidget {
  const WalletTransactionsList({
    super.key,
    required this.isLoading,
    required this.transactions,
    required this.symbol,
  });

  final bool isLoading;
  final List<TransactionModel> transactions;
  final String symbol;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: 'history'.tr(),
          fontSize: 20.sp,
          fontWeight: FontWeight.w800,
        ),
        12.ph,
        if (isLoading)
          const Center(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: CircularProgressIndicator(
                color: AppColors.grey,
              ),
            ),
          )
        else if (transactions.isEmpty)
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
              ...List.generate(transactions.length, (index) {
                final transaction = transactions[index];
                final showDivider = index < transactions.length - 1;

                return WalletTransactionItem(
                  transaction: transaction,
                  symbol: symbol,
                  showDivider: showDivider,
                );
              }),
            ],
          ),
      ],
    );
  }
}
