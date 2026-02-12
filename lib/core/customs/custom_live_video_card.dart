part of 'customs.dart';

class CustomLiveVideoCard extends StatefulWidget {
  final StreamDataModel stream;
  final String? price;
  final String? categoryName;

  const CustomLiveVideoCard({
    super.key,
    required this.stream,
    this.price,
    this.categoryName,
  });

  @override
  State<CustomLiveVideoCard> createState() => _CustomLiveVideoCardState();
}

class _CustomLiveVideoCardState extends State<CustomLiveVideoCard> {
  bool _showGif = false;

  String _getPrice() {
    if (widget.price != null && widget.price!.isNotEmpty) {
      return widget.price!;
    }
    final firstProduct = widget.stream.streamProducts?.firstOrNull;
    if (firstProduct?.startingPrice != null &&
        firstProduct!.startingPrice != '0') {
      return 'Стартовая цена ${firstProduct.startingPrice} Р';
    }
    return '';
  }

  String _getProductName() {
    final firstProduct = widget.stream.streamProducts?.firstOrNull;
    return firstProduct?.product?.name ?? widget.stream.title ?? '';
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
            onLongPress: (widget.stream.latestGifUrl != null &&
                    widget.stream.latestGifUrl!.isNotEmpty)
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
                          widget.stream.latestGifUrl != null &&
                          widget.stream.latestGifUrl!.isNotEmpty)
                      ? CachedNetworkImage(
                          imageUrl: widget.stream.latestGifUrl!,
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
                      : (widget.stream.latestThumbnailUrl != null &&
                              widget.stream.latestThumbnailUrl!.isNotEmpty)
                          ? CachedNetworkImage(
                              imageUrl: widget.stream.latestThumbnailUrl!,
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
                          text: "Live • ${widget.stream.viewerCount ?? 0}",
                          textAlign: TextAlign.center,
                          color: AppColors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Column(
                    children: [
                      BlocBuilder<ToggleFavoriteCubit, ToggleFavoriteState>(
                        builder: (context, state) {
                          final streamId = widget.stream.id;
                          final isFavorited = streamId != null &&
                              (context
                                      .read<ToggleFavoriteCubit>()
                                      .state
                                      .favoritedByType['stream']
                                      ?.contains(streamId) ??
                                  widget.stream.user?.isFavorited ??
                                  false);

                          return GestureDetector(
                            onTap: (streamId != null
                                ? () => context
                                    .read<ToggleFavoriteCubit>()
                                    .toggleFavorite('stream', streamId)
                                : null),
                            child: CircleAvatar(
                              radius: 12.r,
                              backgroundColor: isFavorited
                                  ? AppColors.primaryPink
                                  : AppColors.blackDark,
                              child: Image.asset(
                                Assets.assetsIconsSave,
                                height: 14.h,
                                width: 14.w,
                                fit: BoxFit.cover,
                                color: AppColors.white,
                              ),
                            ),
                          );
                        },
                      ),
                      4.ph,
                      CustomText(
                          text: (widget.stream.viewerCount ?? 0).toString(),
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
        if (_getPrice().isNotEmpty) ...[
          8.ph,
          CustomText(
            text: _getPrice(),
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryPink,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
        8.ph,
        if (_getProductName().isNotEmpty) ...[
          CustomText(
            text: _getProductName(),
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: AppColors.blackDark,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          4.ph,
        ],
        if (widget.categoryName != null && widget.categoryName!.isNotEmpty) ...[
          CustomText(
            text: widget.categoryName!,
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
                imageSource: widget.stream.user?.image ?? '',
                width: 24.w,
                height: 24.h,
                fit: BoxFit.cover,
              ),
            ),
            5.pw,
            Flexible(
              child: CustomText(
                text: widget.stream.user?.name ?? 'company_name',
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
