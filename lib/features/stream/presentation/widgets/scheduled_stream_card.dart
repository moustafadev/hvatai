part of '../stream.dart';

class ScheduledStreamCard extends StatefulWidget {
  final StreamDataModel stream;
  final String? price;
  final String? categoryName;

  const ScheduledStreamCard({
    super.key,
    required this.stream,
    this.price,
    this.categoryName,
  });

  @override
  State<ScheduledStreamCard> createState() => _ScheduledStreamCardState();
}

class _ScheduledStreamCardState extends State<ScheduledStreamCard> {
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          flex: 3,
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
                      : ((widget.stream.latestThumbnailUrl?.isNotEmpty ??
                              false))
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
                if (widget.stream.scheduledAt != null)
                  Positioned.fill(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: AppColors.primaryPink,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: CustomText(
                            text: _formatDateTime(widget.stream.scheduledAt),
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
                      4.ph,
                      CustomText(
                        text: "0",
                        color: AppColors.white,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 8,
                  left: 8,
                  right: 8,
                  child: Row(
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
                          color: AppColors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w800,
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
