part of '../stream.dart';

class WinnerBannerOverlay extends StatelessWidget {
  const WinnerBannerOverlay({
    super.key,
    required this.isSelecting,
    required this.winner,
    required this.isViewerWinner,
    required this.topPadding,
  });

  final bool isSelecting;
  final BidWinnerEvent? winner;
  final bool isViewerWinner;
  final double topPadding;

  @override
  Widget build(BuildContext context) {
    if (!isSelecting && winner == null) {
      return const SizedBox.shrink();
    }
    final topOffset = topPadding + 80;
    return Positioned(
      top: topOffset,
      left: 16,
      
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 250),
        child: ClipRRect(
          key: ValueKey(
            isSelecting ? 'selecting' : 'winner-${winner?.winner?.id}',
          ),
          borderRadius: BorderRadius.circular(10),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
            child: Container(
              width: MediaQuery.of(context).size.width - 32,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
              decoration: BoxDecoration(
                color: const Color(0x99000000),
                borderRadius: BorderRadius.circular(24),
                border: Border.all(
                  color: Colors.white.withOpacity(0.08),
                ),
              ),
              child: isSelecting
                  ? const _SelectingWinnerContent()
                  : _WinnerContent(
                      winner: winner,
                      isViewerWinner: isViewerWinner,
                    ),
            ),
          ),
        ),
      ),
    );
  }
}

class _SelectingWinnerContent extends StatelessWidget {
  const _SelectingWinnerContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CustomText(
          text: 'Выбираем победителя...',
          color: Colors.white,
          fontSize: 19,
          fontWeight: FontWeight.w700,
        ),
        const SizedBox(height: 10),
        CircularProgressIndicator(
          strokeWidth: 2.4,
          color: Color(0xFFF4A8A1),
        ),
      ],
    );
  }
}

class _WinnerContent extends StatelessWidget {
  const _WinnerContent({
    required this.winner,
    required this.isViewerWinner,
  });

  final BidWinnerEvent? winner;
  final bool isViewerWinner;

  @override
  Widget build(BuildContext context) {
    if (isViewerWinner) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const CustomText(
            text: 'Вы выиграли аукцион! 🎉',
            color: Colors.white,
            fontSize: 19,
            fontWeight: FontWeight.w700,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          SvgPicture.asset(
            Assets.assetsIconsCrown,
            height: 30,
            width: 30,
           
          ),
          const SizedBox(height: 10),
          const CustomText(
            text: 'Вы получаете награду',
            color: Color(0xFFF4D1A1),
            fontSize: 14,
            fontWeight: FontWeight.w600,
            textAlign: TextAlign.center,
          ),
        ],
      );
    }

    final winnerUser = winner?.winner;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CustomText(
          text: 'Выиграл аукцион! 🎉',
          color: Colors.white,
          fontSize: 19,
          fontWeight: FontWeight.w700,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 12),
        ClipRRect(
          borderRadius: BorderRadius.circular(32),
          child: CustomImage(
            imageSource: winnerUser?.image ?? '',
            width: 40,
            height: 40,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 10),
        CustomText(
          text: winnerUser?.name ?? '—',
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w600,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

