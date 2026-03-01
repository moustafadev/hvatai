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
  bool _seeded = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_seeded) return;

    final id = widget.stream.id;
    if (id != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        context.read<ToggleFavoriteCubit>().seedStream(
              id,
              isFavorited: widget.stream.isFavorited ?? false,
            );
      });
    }

    _seeded = true;
  }

  String _getPrice() {
    if (widget.price != null && widget.price!.isNotEmpty) return widget.price!;
    final firstProduct = widget.stream.streamProducts?.firstOrNull;
    if (firstProduct?.startingPrice != null &&
        firstProduct!.startingPrice != '0') {
      return 'Стартовая цена ${double.tryParse(firstProduct.startingPrice ?? '0')?.toStringAsFixedSmart ?? '0'} Р';
    }
    return '';
  }

  String _getProductName() {
    final firstProduct = widget.stream.streamProducts?.firstOrNull;
    return firstProduct?.product?.name ?? widget.stream.title ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: GestureDetector(
            onLongPress: (widget.stream.latestGifUrl?.isNotEmpty ?? false)
                ? () {
                    setState(() => _showGif = !_showGif);
                    if (_showGif) {
                      Future.delayed(const Duration(seconds: 5), () {
                        if (mounted) setState(() => _showGif = false);
                      });
                    }
                  }
                : null,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.r),
                  child: (_showGif &&
                          (widget.stream.latestGifUrl?.isNotEmpty ?? false))
                      ? CachedNetworkImage(
                          imageUrl: widget.stream.latestGifUrl!,
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.cover,
                          errorWidget: (context, url, error) => Image.asset(
                            Assets.assetsIconsStreamPlaceholder,
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.fill,
                          ),
                        )
                      : ((widget.stream.latestThumbnailUrl?.isNotEmpty ??
                              false))
                          ? CachedNetworkImage(
                              imageUrl: widget.stream.latestThumbnailUrl!,
                              width: double.infinity,
                              height: double.infinity,
                              fit: BoxFit.cover,
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
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: CustomText(
                          text: "Live • ${widget.stream.viewerCount ?? 0}",
                          textAlign: TextAlign.center,
                          color: AppColors.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
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
                        buildWhen: (p, c) =>
                            p.favoritedStreamIds != c.favoritedStreamIds,
                        builder: (context, favState) {
                          final streamId = widget.stream.id;
                          final modelFav = widget.stream.isFavorited ?? false;

                          final isFav = streamId == null
                              ? modelFav
                              : (_seeded
                                  ? favState.favoritedStreamIds
                                      .contains(streamId)
                                  : modelFav);

                          return GestureDetector(
                            onTap: streamId == null
                                ? null
                                : () => context
                                    .read<ToggleFavoriteCubit>()
                                    .toggleStreamFavorite(streamId),
                            child: Container(
                              width: 24.w,
                              height: 24.h,
                              decoration: BoxDecoration(
                                color: AppColors.blackColor
                                    .withValues(alpha: 0.65),
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Image.asset(
                                  Assets.assetsIconsFavsav,
                                  height: 14.h,
                                  width: 14.w,
                                  color: isFav
                                      ? AppColors.primaryColor
                                      : AppColors.white,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                      2.ph,
                      CustomText(
                        text: "0",
                        color: AppColors.white,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 8,
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
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
        if (widget.categoryName?.isNotEmpty ?? false) ...[
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
