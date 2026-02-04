part of '../stream.dart';

class ViewerCountWidget extends StatefulWidget {
  final int count;
  final bool isViewerMode;

  const ViewerCountWidget({
    super.key,
    required this.count,
    this.isViewerMode = true,
  });

  @override
  State<ViewerCountWidget> createState() => _ViewerCountWidgetState();
}

class _ViewerCountWidgetState extends State<ViewerCountWidget> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(Assets.assetsIconsViewers),
                    SizedBox(width: 8.w),
                    CustomText(
                      text: widget.count.toString(),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                    8.pw,
                  ],
                ),
              ),
            ),
            4.pw,
            GestureDetector(
              onTap: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Icon(
                  _isExpanded
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                  color: Colors.white,
                  size: 26,
                ),
              ),
            ),
          ],
        ),
        if (_isExpanded)
          ViewerCountMenu(
            isViewerMode: widget.isViewerMode,
            onItemTapped: () {
              setState(() {
                _isExpanded = false;
              });
            },
          ),
      ],
    );
  }
}

class ViewerCountMenu extends StatelessWidget {
  final bool isViewerMode;
  final VoidCallback onItemTapped;

  const ViewerCountMenu({
    super.key,
    required this.isViewerMode,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8.h),
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.8),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (isViewerMode)
            Builder(
              builder: (context) {
                // Try ViewerStreamCubit first (for live streams)
                try {
                  return BlocBuilder<ViewerStreamCubit, ViewerStreamState>(
                    builder: (context, state) {
                      return ViewerCountMenuItem(
                        icon: state.isAudioMuted
                            ? const Icon(
                                Icons.volume_off,
                                color: Colors.white,
                                size: 20,
                              )
                            : SvgPicture.asset(
                                Assets.assetsIconsVolumeLoud,
                                width: 20,
                                height: 20,
                                colorFilter: const ColorFilter.mode(
                                  Colors.white,
                                  BlendMode.srcIn,
                                ),
                              ),
                        label: 'Звук',
                        isMuted: state.isAudioMuted,
                        onTap: () {
                          context.read<ViewerStreamCubit>().toggleAudio();
                          onItemTapped();
                        },
                      );
                    },
                  );
                } catch (_) {
                  // If ViewerStreamCubit not found, try EndedStreamCubit (for ended streams)
                  try {
                    return BlocBuilder<EndedStreamCubit, EndedStreamState>(
                      builder: (context, state) {
                        return ViewerCountMenuItem(
                          icon: state.isAudioMuted
                              ? const Icon(
                                  Icons.volume_off,
                                  color: Colors.white,
                                  size: 20,
                                )
                              : SvgPicture.asset(
                                  Assets.assetsIconsVolumeLoud,
                                  width: 20,
                                  height: 20,
                                  colorFilter: const ColorFilter.mode(
                                    Colors.white,
                                    BlendMode.srcIn,
                                  ),
                                ),
                          label: 'Звук',
                          isMuted: state.isAudioMuted,
                          onTap: () {
                            context.read<EndedStreamCubit>().toggleAudio();
                            onItemTapped();
                          },
                        );
                      },
                    );
                  } catch (_) {
                    return const SizedBox.shrink();
                  }
                }
              },
            )
          else
            BlocBuilder<BroadcasterStreamCubit, BroadcasterStreamState>(
              builder: (context, state) {
                return ViewerCountMenuItem(
                  icon: Icon(
                    state.isMicrophoneMuted ? Icons.mic_off : Icons.mic,
                    color: Colors.white,
                    size: 20,
                  ),
                  label: 'Микрофон',
                  isMuted: state.isMicrophoneMuted,
                  onTap: () {
                    context.read<BroadcasterStreamCubit>().toggleMicrophone();
                    onItemTapped();
                  },
                );
              },
            ),
        ],
      ),
    );
  }
}

class ViewerCountMenuItem extends StatelessWidget {
  final Widget icon;
  final String label;
  final bool isMuted;
  final VoidCallback onTap;

  const ViewerCountMenuItem({
    super.key,
    required this.icon,
    required this.label,
    required this.isMuted,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 8.w),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            icon,
            SizedBox(width: 12.w),
            CustomText(
              text: label,
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: isMuted ? Colors.grey : Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
