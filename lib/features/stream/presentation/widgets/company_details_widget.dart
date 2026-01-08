part of '../stream.dart';

class CompanyDetailsWidget extends StatelessWidget {
  final StreamUserModel? streamUserModel;
  final bool? isSubscribed;
  final bool isSubscriptionLoading;
  final VoidCallback? onSubscribeTap;
  final bool isViewerMode;

  const CompanyDetailsWidget({
    super.key,
    this.streamUserModel,
    this.isSubscribed,
    this.isViewerMode = true,
    this.isSubscriptionLoading = false,
    this.onSubscribeTap,
  });

  @override
  Widget build(BuildContext context) {
    final canToggle = onSubscribeTap != null;
    final subscribed = isSubscribed ?? false;
    final label = subscribed ? 'unsubscribe'.tr() : 'subscribe'.tr();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: streamUserModel?.name ?? "",
          fontWeight: FontWeight.w800,
          fontSize: 14,
          color: Colors.white,
        ),
        Row(
          children: [
            const Icon(Icons.star, color: Colors.white, size: 16),
            SizedBox(width: 4.w),
            CustomText(
              text: '${streamUserModel?.personalRating}',
              fontWeight: FontWeight.w800,
              fontSize: 14,
              color: Colors.white,
            ),
            SizedBox(width: 12.w),
            if (isViewerMode)
              GestureDetector(
                onTap:
                    canToggle && !isSubscriptionLoading ? onSubscribeTap : null,
                behavior: HitTestBehavior.opaque,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.white.withOpacity(0.3)),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (isSubscriptionLoading)
                        const SizedBox(
                          width: 14,
                          height: 14,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: Colors.white,
                          ),
                        ),
                      if (!isSubscriptionLoading)
                        CustomText(
                          text: label,
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          color: Colors.white,
                        ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
