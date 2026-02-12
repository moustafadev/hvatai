part of '../company.dart';

class ClipsCompanyTab extends StatelessWidget {
  const ClipsCompanyTab({required this.userId, super.key});

  final int userId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CompanyCubit, CompanyState>(
      builder: (context, state) {
        if (state.isLoadingClips) {
          return const Center(
            child: CircularProgressIndicator(color: AppColors.grey),
          );
        }
        if (state.errorMessageClips.isNotEmpty) {
          return Center(
            child: CustomText(text: state.errorMessageClips),
          );
        }
        final clips = state.clips;

        return CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              sliver: SliverToBoxAdapter(
                child: CustomText(
                  text: 'clips'.tr(),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            if (clips.isEmpty)
              SliverFillRemaining(
                hasScrollBody: false,
                child: Center(
                  child: CustomText(
                    text: 'noClips'.tr(),
                    fontWeight: FontWeight.w600,
                    color: AppColors.blackTransparent40,
                  ),
                ),
              )
            else
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                sliver: SliverGrid(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 11,
                    mainAxisExtent: 300,
                    mainAxisSpacing: 12,
                    childAspectRatio: 0.6,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      final clip = clips[index];
                      final isFavorited = context
                          .read<CompanyCubit>()
                          .state
                          .favoritedClipIds
                          .contains(clip.id);

                      return ClipCard(
                        clip: clip,
                        showCompanyInfo: false,
                        showSettingsIcon: false,
                        isFavorited: isFavorited,
                        onSaveIconTap: () {
                          context
                              .read<CompanyCubit>()
                              .toggleClipFavorite(clip.id);
                        },
                        thumbnailBytes: context
                            .read<CompanyCubit>()
                            .getClipThumbnail(clip.id),
                      );
                    },
                    childCount: clips.length,
                  ),
                ),
              ),
            SliverToBoxAdapter(
              child: 40.ph,
            ),
          ],
        );
      },
    );
  }
}
