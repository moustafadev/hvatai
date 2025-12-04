part of '../wallet.dart';

class WalletBalanceCard extends StatelessWidget {
  const WalletBalanceCard({
    super.key,
    required this.balance,
    required this.availableBalance,
    required this.symbol,
  });

  final String balance;
  final String availableBalance;
  final String symbol;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // First section: Account Balance
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
          // Second section: Available for Withdrawal
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
    );
  }
}
