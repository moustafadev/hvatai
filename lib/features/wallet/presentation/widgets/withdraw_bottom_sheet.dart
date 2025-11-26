part of '../wallet.dart';

class WithdrawBottomSheet extends StatefulWidget {
  final int walletId;
  final double availableBalance;

  const WithdrawBottomSheet({
    super.key,
    required this.walletId,
    required this.availableBalance,
  });

  @override
  State<WithdrawBottomSheet> createState() => _WithdrawBottomSheetState();
}

class _WithdrawBottomSheetState extends State<WithdrawBottomSheet> {
  final TextEditingController _amountController = TextEditingController();
  CardModel? _selectedCard;

  @override
  void initState() {
    super.initState();
    _loadPaymentMethods();
  }

  @override
  void dispose() {
    _amountController.dispose();
    super.dispose();
  }

  Future<void> _loadPaymentMethods() async {
    PaymentMethodCubit paymentCubit;
    try {
      paymentCubit = context.read<PaymentMethodCubit>();
    } catch (e) {
      paymentCubit = locator<PaymentMethodCubit>();
    }
    await paymentCubit.getPaymentMethods();
    if (paymentCubit.state.cards.isNotEmpty && mounted) {
      setState(() {
        _selectedCard = paymentCubit.state.cards.first;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<WalletCubit>();
    
    // Try to get PaymentMethodCubit from the widget tree, or create a new one
    PaymentMethodCubit paymentCubit;
    try {
      paymentCubit = context.read<PaymentMethodCubit>();
    } catch (e) {
      paymentCubit = locator<PaymentMethodCubit>()..getPaymentMethods();
    }
    
    return BlocProvider.value(
      value: paymentCubit,
      child: GestureDetector(
      onTap: () => cubit.hideWithdrawSheet(),
      behavior: HitTestBehavior.opaque,
      child: Container(
        color: Colors.black.withOpacity(0.5),
        child: GestureDetector(
          onTap: () {},
          child: DraggableScrollableSheet(
            initialChildSize: 0.6,
            minChildSize: 0.5,
            maxChildSize: 0.9,
            builder: (context, scrollController) {
              return Container(
                decoration: BoxDecoration(
                  color: AppColors.lightGreyBackground,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
                ),
                child: Column(
                  children: [
                    8.ph,
                    Container(
                      width: 44.w,
                      height: 4.h,
                      decoration: BoxDecoration(
                        color: AppColors.gray,
                        borderRadius: BorderRadius.circular(2.r),
                      ),
                    ),
                    12.ph,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: 'withdrawMoney'.tr(),
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w800,
                          ),
                          GestureDetector(
                            onTap: () => cubit.hideWithdrawSheet(),
                            child: Icon(Icons.close, size: 24.sp),
                          ),
                        ],
                      ),
                    ),
                    16.ph,
                    Expanded(
                      child: SingleChildScrollView(
                        controller: scrollController,
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Payment method selection
                            BlocBuilder<PaymentMethodCubit, PaymentMethodState>(
                              builder: (context, paymentState) {
                                if (paymentState.isLoading) {
                                  return Padding(
                                    padding: EdgeInsets.symmetric(vertical: 16.h),
                                    child: const Center(
                                      child: CircularProgressIndicator(
                                        color: AppColors.primaryColor,
                                      ),
                                    ),
                                  );
                                }

                                if (paymentState.cards.isEmpty) {
                                  return GestureDetector(
                                    onTap: () async {
                                      await context.push(
                                        AppRoutes.addNewPaymentMethod,
                                        extra: paymentCubit,
                                      );
                                      _loadPaymentMethods();
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(vertical: 16.h),
                                      child: Row(
                                        children: [
                                          Icon(Icons.add, color: AppColors.primaryColor),
                                          12.pw,
                                          CustomText(
                                            text: 'addPaymentMethod'.tr(),
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }

                                return GestureDetector(
                                  onTap: () {
                                    // Show card selection dialog
                                    showModalBottomSheet(
                                      context: context,
                                      builder: (ctx) => Container(
                                        padding: const EdgeInsets.all(16),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            CustomText(
                                              text: 'selectCard'.tr(),
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.w800,
                                            ),
                                            16.ph,
                                            ...paymentState.cards.map((card) {
                                              return ListTile(
                                                leading: Image.asset(
                                                  Assets.assetsIconsCard,
                                                  width: 35.w,
                                                  height: 20.h,
                                                ),
                                                title: CustomText(
                                                  text: '**** ${card.lastFour}',
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                                trailing: _selectedCard?.id == card.id
                                                    ? Icon(Icons.check, color: AppColors.primaryColor)
                                                    : null,
                                                onTap: () {
                                                  setState(() {
                                                    _selectedCard = card;
                                                  });
                                                  Navigator.pop(ctx);
                                                },
                                              );
                                            }),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(vertical: 16.h),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          Assets.assetsIconsCard,
                                          width: 35.w,
                                          height: 20.h,
                                        ),
                                        12.pw,
                                        CustomText(
                                          text: _selectedCard != null
                                              ? '**** ${_selectedCard!.lastFour}'
                                              : '**** ${paymentState.cards.first.lastFour}',
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                            16.ph,
                            // Amount input
                            CustomTextField(
                              controller: _amountController,
                              keyboardType: TextInputType.number,
                              hintText: 'enterAmountUpTo'.tr().replaceAll(
                                '{amount}',
                                widget.availableBalance.toStringAsFixed(0),
                              ),
                              fillColor: AppColors.white,
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            24.ph,
                            // Continue button
                            CustomGradientButton(
                              text: 'continue'.tr(),
                              onPressed: () {
                                final amount = double.tryParse(_amountController.text) ?? 0.0;
                                if (amount <= 0) {
                                  showFloatingMessageError('invalidAmount'.tr());
                                  return;
                                }
                                if (amount > widget.availableBalance) {
                                  showFloatingMessageError('amountExceedsBalance'.tr());
                                  return;
                                }
                                if (_selectedCard == null && paymentCubit.state.cards.isEmpty) {
                                  showFloatingMessageError('pleaseAddPaymentMethod'.tr());
                                  return;
                                }
                                cubit.withdrawToCard(
                                  walletId: widget.walletId,
                                  amount: amount,
                                  context: context,
                                );
                              },
                              width: double.infinity,
                              height: 52,
                              borderRadius: 10,
                            ),
                            24.ph,
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
      ),
    );
  }
}

