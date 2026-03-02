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
  final bool showProductDetails;
  final bool showBidActions;
  final bool showSingleBidButton;
  final String singleBidButtonLabel;
  final VoidCallback? onSingleBidPressed;
  final bool isBidLoading;
  final Widget? postAuctionAction;

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
    this.showProductDetails = true,
    this.showBidActions = true,
    this.showSingleBidButton = false,
    this.singleBidButtonLabel = '',
    this.onSingleBidPressed,
    this.isBidLoading = false,
    this.postAuctionAction,
    this.controller,
    this.onEditPressed,
    this.onBidPressed,
  });

  @override
  Widget build(BuildContext context) {
    if (showProductDetails) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          _CommentsSection(
            controller: controller,
            onCommentChanged: onCommentChanged,
            onSend: onSend,
            getController: _getController,
          ),
          _ProductDetailsSection(
            productTitle: productTitle,
            productCategory: productCategory,
            startPrice: startPrice,
            timerText: timerText,
            showBidActions: showBidActions,
            postAuctionAction: postAuctionAction,
            showSingleBidButton: showSingleBidButton,
            singleBidButtonLabel: singleBidButtonLabel,
            onSingleBidPressed: onSingleBidPressed,
            isBidLoading: isBidLoading,
            onEditPressed: onEditPressed,
            onBidPressed: onBidPressed,
          ),
        ],
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          _CommentsSection(
            controller: controller,
            onCommentChanged: onCommentChanged,
            onSend: onSend,
            getController: _getController,
          ),
        ],
      );
    }
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

class _CommentsSection extends StatelessWidget {
  const _CommentsSection({
    this.controller,
    required this.onCommentChanged,
    required this.onSend,
    required this.getController,
  });

  final TextEditingController? controller;
  final ValueChanged<String> onCommentChanged;
  final VoidCallback onSend;
  final TextEditingController Function(BuildContext) getController;

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
          children: [
            Expanded(
              child: Builder(
                builder: (context) {
                  final textController = controller ?? getController(context);
                  return CustomTextField(
                    hintText: 'Сообщение...',
                    fillColor: Colors.transparent,
                    controller: textController,
                    borderRadius: BorderRadius.circular(24),
                    borderSide: const BorderSide(color: Colors.white),
                    hintColor: Colors.black.withValues(alpha: 0.2),
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
      ],
    );
  }
}

class _ProductDetailsSection extends StatelessWidget {
  const _ProductDetailsSection({
    required this.productTitle,
    required this.productCategory,
    required this.startPrice,
    required this.timerText,
    required this.showBidActions,
    this.postAuctionAction,
    required this.showSingleBidButton,
    required this.singleBidButtonLabel,
    this.onSingleBidPressed,
    required this.isBidLoading,
    this.onEditPressed,
    this.onBidPressed,
  });

  final String productTitle;
  final String productCategory;
  final double startPrice;
  final String timerText;
  final bool showBidActions;
  final Widget? postAuctionAction;
  final bool showSingleBidButton;
  final String singleBidButtonLabel;
  final VoidCallback? onSingleBidPressed;
  final bool isBidLoading;
  final VoidCallback? onEditPressed;
  final VoidCallback? onBidPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
                    Expanded(
                      child: CustomText(
                        text: productTitle,
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    CustomText(
                      text: 'Стартовая цена',
                      color: AppColors.primaryPink,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
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
                      text: '${startPrice.toStringAsFixedSmart} ₽',
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
                    CustomText(
                      text: timerText,
                      color: Color(0xFF7BE4EE),
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        if (showBidActions)
          Column(
            children: [
              SizedBox(height: 12.h),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                transitionBuilder: (child, animation) {
                  return FadeTransition(
                    opacity: animation,
                    child: SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(0.0, 0.3),
                        end: Offset.zero,
                      ).animate(CurvedAnimation(
                        parent: animation,
                        curve: Curves.easeOut,
                      )),
                      child: child,
                    ),
                  );
                },
                child: postAuctionAction != null
                    ? SizedBox(
                        key: const ValueKey('post_auction'),
                        child: postAuctionAction!,
                      )
                    : showSingleBidButton
                        ? SlideToBidButton(
                            key: const ValueKey('slide_button'),
                            priceText: singleBidButtonLabel.replaceAll('Ставка: ', ''),
                            onSlideComplete: () {
                              if (onSingleBidPressed != null) {
                                onSingleBidPressed!();
                              }
                            },
                            arrowIconLarge: Assets.assetsIconsAltArrowRight,
                            arrowIconSmall: Assets.assetsIconsAltArrowRightSmall,
                            isLoading: isBidLoading,
                          )
                        : Row(
                            key: const ValueKey('edit_bid_row'),
                            children: [
                              Expanded(
                                child: CustomButton(
                                  title: 'Изменить',
                                  onPressed: onEditPressed,
                                  color: Colors.black.withValues(alpha: 0.6),
                                  textColor: Colors.white,
                                  radius: 24,
                                  height: 40,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 12),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(width: 8.w),
                              Expanded(
                                flex: 2,
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
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomButton(
                                        title: 'Ставка: $startPrice₽',
                                        onPressed: isBidLoading ? null : onBidPressed,
                                        color: AppColors.primaryColor,
                                        textColor: Colors.white,
                                        isLoading: isBidLoading,
                                        radius: 24,
                                        height: 32,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16),
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
              ),
            ],
          ),
      ],
    );
  }
}
