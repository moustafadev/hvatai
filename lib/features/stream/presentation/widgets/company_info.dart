part of '../stream.dart';

class CompanyInfo extends StatelessWidget {
  final StreamUserModel? streamUserModel;
  final bool? isSubscribed;
  final bool isSubscriptionLoading;
  final VoidCallback? onSubscribeTap;
  final bool isViewerMode;
  final ViewerStreamCubit? cubit;

  void _showBottomSheet(BuildContext context, ViewerStreamCubit cubit) {
    showModalBottomSheet(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width,
      ),
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.r),
        ),
      ),
      backgroundColor: Colors.white,
      builder: (context) => StreamUserBottomSheet(cubit: cubit),
    );
  }

  const CompanyInfo({
    super.key,
    this.streamUserModel,
    this.isSubscribed,
    this.isViewerMode = true,
    this.isSubscriptionLoading = false,
    this.onSubscribeTap,
    this.cubit,
  });

  @override
  Widget build(BuildContext context) {
    final avatar = streamUserModel?.image ?? '';

    return GestureDetector(
      onTap: cubit != null ? () => _showBottomSheet(context, cubit!) : null,
      child: Row(
        children: [
          // Company Icon
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(24),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: CustomImage(
                imageSource: avatar,
                width: 48,
                height: 48,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 12.w),
          // Company Details
          CompanyDetailsWidget(
            streamUserModel: streamUserModel,
            isSubscribed: isSubscribed,
            isViewerMode: isViewerMode,
            isSubscriptionLoading: isSubscriptionLoading,
            onSubscribeTap: null, // Make subscription not clickable
          ),
        ],
      ),
    );
  }
}
