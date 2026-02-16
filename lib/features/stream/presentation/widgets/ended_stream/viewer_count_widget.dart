part of '../../stream.dart';

class _EndedStreamViewerCountWidget extends StatelessWidget {
  const _EndedStreamViewerCountWidget({
    required this.count,
  });

  final int count;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EndedStreamCubit, EndedStreamState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withValues(alpha: 0.65),
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
                          text: count.toString(),
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
                    context.read<EndedStreamCubit>().toggleExpanded();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withValues(alpha: 0.65),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Icon(
                      state.isExpanded
                          ? Icons.keyboard_arrow_up
                          : Icons.keyboard_arrow_down,
                      color: Colors.white,
                      size: 26,
                    ),
                  ),
                ),
              ],
            ),
            if (state.isExpanded)
              Container(
                margin: EdgeInsets.only(top: 8.h),
                padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
                decoration: BoxDecoration(
                  color: Colors.black.withValues(alpha: 0.65),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: InkWell(
                  onTap: () {
                    context.read<EndedStreamCubit>().toggleAudio();
                    context.read<EndedStreamCubit>().toggleExpanded();
                  },
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 12.h, horizontal: 8.w),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        state.isAudioMuted
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
                        SizedBox(width: 12.w),
                        CustomText(
                          text: 'Звук',
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color:
                              state.isAudioMuted ? Colors.grey : Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
