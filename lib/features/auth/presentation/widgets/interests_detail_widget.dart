part of '../auth.dart';

class InterestsDetailWidget extends StatelessWidget {
  final InterestsDetailState state;
  final String Function(String category) getBaseCategoryKey;
  final void Function(String item) onItemTap;

  const InterestsDetailWidget({
    super.key,
    required this.state,
    required this.getBaseCategoryKey,
    required this.onItemTap,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(bottom: 100, right: 16, left: 16),
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          20.ph,
          CustomText(
            text: 'tellMore'.tr(),
            fontSize: 28.sp,
            fontWeight: FontWeight.w800,
          ),
          4.ph,
          CustomText(
            text: 'chooseInterests'.tr(),
            fontSize: 16,
            color: Colors.grey,
            fontWeight: FontWeight.w600,
          ),
          24.ph,
          ...state.generalInterests.map((category) {
            final base = getBaseCategoryKey(category);
            final options = InterestsDetailScreen.detailedInterestOptions[base];

            if (options == null) return const SizedBox.shrink();

            return CategoryOptionsSection(
              category: category,
              options: options,
              selectedDetails: state.selectedDetails,
              onItemTap: onItemTap,
            );
          }).toList(),
        ],
      ),
    );
  }
}
