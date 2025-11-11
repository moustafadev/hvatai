part of '../stream.dart';

class LiveBottomPanel extends StatelessWidget {
  final List<StreamCommentModel> comments;
  final ValueChanged<String> onCommentChanged;
  final VoidCallback onSend;
  final TextEditingController? controller;

  final String productTitle;
  final String productCategory;
  final double startPrice;
  final String timerText;

  final VoidCallback? onEditPressed;
  final VoidCallback? onBidPressed;

  const LiveBottomPanel({
    super.key,
    required this.comments,
    required this.onCommentChanged,
    required this.onSend,
    required this.productTitle,
    required this.productCategory,
    required this.startPrice,
    required this.timerText,
    this.controller,
    this.onEditPressed,
    this.onBidPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          height: 200,
          child: ShaderMask(
            shaderCallback: (Rect r) => const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.transparent, Colors.white],
              stops: [0.0, 0.32],
            ).createShader(r),
            blendMode: BlendMode.dstIn,
            child: CommentsCompactList(),
          ),
        ),
        SizedBox(height: 12.h),
        Row(
          //
          children: [
            Expanded(
              child: Builder(
                builder: (context) {
                  final textController = controller ?? _getController(context);
                  return CustomTextField(
                    hintText: 'Сообщение...',
                    fillColor: Colors.transparent,
                    controller: textController,
                    borderRadius: BorderRadius.circular(24),
                    borderSide: const BorderSide(color: Colors.white),
                    hintColor: Colors.black.withOpacity(0.2),
                    onChanged: onCommentChanged,
                    suffixIcon: IconButton(
                      icon:
                          const Icon(Icons.send, color: Colors.white, size: 20),
                      onPressed: onSend,
                      splashRadius: 20,
                    ),
                  );
                },
              ),
            ),
            SizedBox(width: 64.w),
          ],
        ),
        SizedBox(height: 12.h),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: productTitle,
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                    const CustomText(
                      text: 'Стартовая цена',
                      color: AppColors.primaryPink,
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                    ),
                  ],
                ),
                SizedBox(height: 4.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: productCategory,
                      color: AppColors.whiteGrey,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                    CustomText(
                      text: '$startPrice ₽',
                      color: AppColors.primaryPink,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const CustomText(
                        text: 'Бесплатная доставка',
                        color: AppColors.green,
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 12.h),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                title: 'Изменить',
                onPressed: onEditPressed,
                color: Colors.black.withOpacity(0.6),
                textColor: Colors.white,
                radius: 24,
                height: 40,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                fontWeight: FontWeight.w700,
                fontSize: 14,
              ),
            ),
            SizedBox(width: 8.w),
            Expanded(
              child: Container(
                height: 40,
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.primaryColor,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: CustomButton(
                  title: 'Ставка: $startPrice₽',
                  onPressed: onBidPressed,
                  color: AppColors.primaryColor,
                  textColor: Colors.white,
                  radius: 24,
                  height: 32,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  TextEditingController _getController(BuildContext context) {
    // Try to get controller from BroadcasterStreamCubit or ViewerStreamCubit
    try {
      return context.read<BroadcasterStreamCubit>().controller;
    } catch (_) {
      return context.read<ViewerStreamCubit>().controller;
    }
  }
}
