part of '../stream.dart';

class ScheduledStreamCard extends StatefulWidget {
  final String adminName;
  final String adminImage;
  final int viewsCount;
  final String title;
  final String description;
  final String liveImage;
  final String? latestThumbnailUrl;
  final String? latestGifUrl;
  final String price;
  final DateTime? scheduledAt;

  final bool? isFavorite;
  final VoidCallback? onFavoriteToggle;

  const ScheduledStreamCard({
    super.key,
    required this.adminName,
    required this.price,
    required this.adminImage,
    required this.viewsCount,
    required this.title,
    required this.description,
    required this.liveImage,
    this.latestThumbnailUrl,
    this.latestGifUrl,
    this.scheduledAt,
    this.isFavorite,
    this.onFavoriteToggle,
  });

  @override
  State<ScheduledStreamCard> createState() => _ScheduledStreamCardState();
}

class _ScheduledStreamCardState extends State<ScheduledStreamCard> {
  bool _showGif = false;

  String _formatDateTime(DateTime? dateTime) {
    if (dateTime == null) return '';
    final day = dateTime.day.toString().padLeft(2, '0');
    final month = dateTime.month.toString().padLeft(2, '0');
    final year = dateTime.year.toString().substring(2);
    final hour = dateTime.hour.toString().padLeft(2, '0');
    final minute = dateTime.minute.toString().padLeft(2, '0');
    return '$day.$month.$year • $hour:$minute';
  }

  @override
  Widget build(BuildContext context) {
    // final String imageUrl = liveImage.isNotEmpty
    //     ? liveImage
    //     : adminImage.isNotEmpty
    //         ? adminImage
    //         : '';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        // Live Image + Favorite Overlay
        Expanded(
          flex: 3,
          child: GestureDetector(
            onLongPress:
                (widget.latestGifUrl != null && widget.latestGifUrl!.isNotEmpty)
                    ? () {
                        // Toggle GIF display on long press
                        setState(() {
                          _showGif = !_showGif;
                        });

                        // Auto-hide GIF after 5 seconds
                        if (_showGif) {
                          Future.delayed(const Duration(seconds: 5), () {
                            if (mounted) {
                              setState(() {
                                _showGif = false;
                              });
                            }
                          });
                        }
                      }
                    : null,
            child: Stack(
              children: [
                // Background image - GIF or latest thumbnail or placeholder
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.r),
                  child: (_showGif &&
                          widget.latestGifUrl != null &&
                          widget.latestGifUrl!.isNotEmpty)
                      ? CachedNetworkImage(
                          imageUrl: widget.latestGifUrl!,
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.cover,
                          placeholder: (context, url) => Image.asset(
                            Assets.assetsIconsStreamPlaceholder,
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.fill,
                          ),
                          errorWidget: (context, url, error) => Image.asset(
                            Assets.assetsIconsStreamPlaceholder,
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.fill,
                          ),
                        )
                      : (widget.latestThumbnailUrl != null &&
                              widget.latestThumbnailUrl!.isNotEmpty)
                          ? CachedNetworkImage(
                              imageUrl: widget.latestThumbnailUrl!,
                              width: double.infinity,
                              height: double.infinity,
                              fit: BoxFit.cover,
                              placeholder: (context, url) => Image.asset(
                                Assets.assetsIconsStreamPlaceholder,
                                width: double.infinity,
                                height: double.infinity,
                                fit: BoxFit.fill,
                              ),
                              errorWidget: (context, url, error) => Image.asset(
                                Assets.assetsIconsStreamPlaceholder,
                                width: double.infinity,
                                height: double.infinity,
                                fit: BoxFit.fill,
                              ),
                            )
                          : Image.asset(
                              Assets.assetsIconsStreamPlaceholder,
                              width: double.infinity,
                              height: double.infinity,
                              fit: BoxFit.fill,
                            ),
                ),
                // Scheduled date/time overlay
                if (widget.scheduledAt != null)
                  Positioned.fill(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 6, vertical: 6),
                          decoration: BoxDecoration(
                            color: AppColors.primaryPink,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: CustomText(
                            text: _formatDateTime(widget.scheduledAt),
                            textAlign: TextAlign.center,
                            color: AppColors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                // if (isFavorite != null && onFavoriteToggle != null)
                Positioned(
                  top: 10,
                  right: 10,
                  child: Column(
                    children: [
                      GestureDetector(
                          onTap: widget.onFavoriteToggle,
                          child: CircleAvatar(
                            radius: 12.r,
                            backgroundColor: AppColors.blackDark,
                            child: Image.asset(
                              Assets.assetsIconsSave,
                              height: 14.h,
                              width: 14.w,
                              fit: BoxFit.cover,
                              color: AppColors.white,
                            ),
                          )),
                      4.ph,
                      CustomText(
                          text: widget.viewsCount.toString(),
                          color: AppColors.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold),
                    ],
                  ),
                ),
                // Company icon and name at bottom
                Positioned(
                  bottom: 8,
                  left: 8,
                  right: 8,
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12.r),
                        child: CustomImage(
                          imageSource: widget.adminImage,
                          width: 24.w,
                          height: 24.h,
                          fit: BoxFit.cover,
                        ),
                      ),
                      5.pw,
                      Flexible(
                        child: CustomText(
                          text: widget.adminName,
                          color: AppColors.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        12.ph,
      ],
    );
  }
}
