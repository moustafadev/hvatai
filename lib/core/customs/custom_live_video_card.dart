part of 'customs.dart';

class CustomLiveVideoCard extends StatefulWidget {
  final String adminName;
  final String adminImage;
  final int viewsCount;
  final String title;
  final String description;
  final String liveImage;
  final String? latestThumbnailUrl;
  final String? latestGifUrl;
  final String price;

  final bool? isFavorite;
  final VoidCallback? onFavoriteToggle;

  const CustomLiveVideoCard({
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
    this.isFavorite,
    this.onFavoriteToggle,
  });

  @override
  State<CustomLiveVideoCard> createState() => _CustomLiveVideoCardState();
}

class _CustomLiveVideoCardState extends State<CustomLiveVideoCard> {
  bool _showGif = false;

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
                // Overlay content
                Positioned.fill(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6, vertical: 3),
                        decoration: BoxDecoration(
                          color: AppColors.primaryPink,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: CustomText(
                          text: "Live • ${widget.viewsCount}",
                          textAlign: TextAlign.center,
                          color: AppColors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
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
                Positioned(
                  bottom: 8,
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 2,
                    ),
                    height: 20.h,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: CustomText(
                      text: 'Free shipping',
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.green,
                      textAlign: TextAlign.center,
                      fontFamily: 'Manrope',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        if (widget.price.isNotEmpty) ...[
          8.ph,
          CustomText(
            text: widget.price,
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryPink,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
        8.ph,
        if (widget.title.isNotEmpty) ...[
          CustomText(
            text: widget.title,
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: AppColors.blackDark,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          4.ph,
        ],
        if (widget.description.isNotEmpty) ...[
          CustomText(
            text: widget.description,
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: AppColors.grey,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          6.ph,
        ],
        4.ph,
        // Admin Info
        Row(
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
                color: AppColors.blackDark,
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
