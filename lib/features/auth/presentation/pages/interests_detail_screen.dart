part of '../auth.dart';

class InterestsDetailScreen extends StatelessWidget {
  final UserRegistrationData data;

  const InterestsDetailScreen({super.key, required this.data});

  static const Map<String, List<String>> detailedInterestOptions = {
    'shoes': ['sneakers', 'trainers', 'boots', 'sandals'],
    'electronics': ['smartphones', 'headphones', 'computers'],
    'beauty': ['skincare', 'makeup', 'fragrances'],
  };

  String getBaseCategoryKey(String category) {
    switch (category.toLowerCase()) {
      case 'обувь':
      case 'shoes':
        return 'shoes';
      case 'электроника':
      case 'electronics':
        return 'electronics';
      case 'красота':
      case 'beauty':
        return 'beauty';
      default:
        return category;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          InterestsDetailCubit(user: data)..init(data.interests ?? []),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios,
                color: AppColors.blackColorIcon),
            onPressed: () => context.pop(),
          ),
          actions: [
            TextButton.icon(
                iconAlignment: IconAlignment.end,
                icon: const Icon(
                  Icons.double_arrow,
                  color: AppColors.blackColorIcon,
                ),
                label: CustomText(
                    text: 'skip'.tr(),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.blackDark),
                onPressed: () => context.push(AppRoutes.home))
          ],
        ),
        body: SafeArea(
          bottom: false,
          child: BlocBuilder<InterestsDetailCubit, InterestsDetailState>(
            builder: (context, state) {
              final cubit = context.read<InterestsDetailCubit>();

              return Stack(
                clipBehavior: Clip.none,
                children: [
                  InterestsDetailWidget(
                    state: state,
                    getBaseCategoryKey: getBaseCategoryKey,
                    onItemTap: cubit.toggleDetail,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 20),
                      child: CustomGradientButton(
                        isLoading: state.isLoading,
                        isDisabled: !(state.selectedDetails.isNotEmpty),
                        text: state.isLoading ? "Updating..." : "Continue",
                        onPressed:
                            (state.isLoading || state.selectedDetails.isEmpty)
                                ? null
                                : () {
                                    cubit.submitDetails(context);
                                  },
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
