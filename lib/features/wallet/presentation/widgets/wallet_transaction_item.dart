part of '../wallet.dart';

class WalletTransactionItem extends StatelessWidget {
  const WalletTransactionItem({
    super.key,
    required this.transaction,
    required this.symbol,
    required this.showDivider,
  });

  final TransactionModel transaction;
  final String symbol;
  final bool showDivider;

  @override
  Widget build(BuildContext context) {
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
        if (showDivider)
          Divider(
            height: 1,
            thickness: 1,
            color: AppColors.gray,
          ),
      ],
    );
  }
}
