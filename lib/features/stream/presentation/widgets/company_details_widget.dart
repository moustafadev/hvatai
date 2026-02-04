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
            // Removed subscription widget as requested
          ],
        ),
      ],
    );
  }
}
