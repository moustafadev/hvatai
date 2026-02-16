part of '../stream.dart';

class FirstBidBottomSheet extends StatelessWidget {
  final String productTitle;
  final double currentPrice;
  final double minimumPrice;
  final int streamId;
  final int streamProductId;

  const FirstBidBottomSheet({
    super.key,
    required this.productTitle,
    required this.currentPrice,
    required this.minimumPrice,
    required this.streamId,
    required this.streamProductId,
  });

  static void show(
    BuildContext context, {
    required String productTitle,
    required double currentPrice,
    required double minimumPrice,
    required int streamId,
    required int streamProductId,
  }) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      isDismissible: false,
      enableDrag: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
      ),
      builder: (ctx) => BlocProvider.value(
        value: context.read<ViewerStreamCubit>(),
        child: FirstBidBottomSheet(
          productTitle: productTitle,
          currentPrice: currentPrice,
          minimumPrice: minimumPrice,
          streamId: streamId,
          streamProductId: streamProductId,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ViewerStreamCubit, ViewerStreamState>(
      builder: (context, state) {
        return Container(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Handle bar
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 8.h, bottom: 12.h),
                    width: 40.w,
                    height: 4.h,
                    decoration: BoxDecoration(
                      color: AppColors.greyButton,
                      borderRadius: BorderRadius.circular(100.r),
                    ),
                  ),
                ),
                // Title
                CustomText(
                  text: 'Разместите вашу ставку!',
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w800,
                  color: AppColors.blackDark,
                ),
                16.ph,
                // Product info
                CustomText(
                  text:
                      'Вы вводите максимальную ставку на участие (1 БОКС) в $productTitle. Если вы введете максимальную ставку, мы автоматически разместим ставки за вас, вплоть до этой суммы, когда будет запущен этот аукцион.',
                  fontSize: 12.sp,
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.w400,
                  color: AppColors.blackDark,
                ),
                8.ph,
                // Current winner info
                CustomText(
                  text:
                      'Кто-то другой в данный момент выиграет за ${currentPrice.toStringAsFixed(0)} ₽',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.blackDark,
                  height: 1.4,
                ),
                24.ph,
                // Input field
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.02),
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.02),
                        blurRadius: 13,
                        offset: Offset(0, 13),
                      ),
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.01),
                        blurRadius: 18,
                        offset: Offset(0, 30),
                      ),
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0),
                        blurRadius: 21,
                        offset: Offset(0, 53),
                      ),
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0),
                        blurRadius: 23,
                        offset: Offset(0, 83),
                      ),
                    ],
                  ),
                  child: CustomTextField(
                    initialValue: state.firstBidInputText,
                    hintText:
                        'Введите ставку не менее ${minimumPrice.toStringAsFixed(0)} ₽',
                    hintStyle: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.greyTransparent,
                    ),
                    keyboardType:
                        const TextInputType.numberWithOptions(decimal: true),
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'[\d.]')),
                    ],
                    textColor: AppColors.blackDark,
                    hintColor: AppColors.grey,
                    fillColor: AppColors.white,
                    borderRadius: BorderRadius.circular(12.r),
                    onChanged: (value) {
                      context
                          .read<ViewerStreamCubit>()
                          .updateFirstBidInput(value);
                    },
                  ),
                ),
                if (state.firstBidErrorMessage != null) ...[
                  8.ph,
                  CustomText(
                    text: state.firstBidErrorMessage!,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.red,
                  ),
                ],
                16.ph,
                // Place bid button
                CustomButton(
                  title: 'Выставить ставку',
                  onPressed:
                      (state.isFirstBidButtonEnabled && !state.isPlacingBid)
                          ? () {
                              context
                                  .read<ViewerStreamCubit>()
                                  .placeBidFromFirstBidSheet(
                                    streamId: streamId,
                                    streamProductId: streamProductId,
                                  );
                            }
                          : null,
                  color: AppColors.primaryColor,
                  textColor: AppColors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w800,
                  disabled:
                      !state.isFirstBidButtonEnabled || state.isPlacingBid,
                  isLoading: state.isPlacingBid,
                ),
                16.ph,
                // Info text
                CustomText(
                  text:
                      'Ставка является окончательной. Её можно увеличить в любое время, но нельзя уменьшить или отменить.',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.grey,
                  height: 1.4,
                ),
                12.ph,
                // Link
                GestureDetector(
                  onTap: () {
                    context.pop();
                  },
                  child: CustomText(
                    text: 'Как работает максимальная ставка',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w800,
                    color: AppColors.purple2,
                  ),
                ),
                32.ph,
              ],
            ),
          ),
        );
      },
    );
  }
}
