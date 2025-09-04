part of '../auth.dart';

class InterestsDetailWidget extends StatelessWidget {
  const InterestsDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InterestsDetailCubit, InterestsDetailState>(
      builder: (context, state) {
        final cubit = context.read<InterestsDetailCubit>();
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
              ...(state.categories?.data ?? []).map((categoryData) {
                final children = categoryData.children;

                if (children == null || children.isEmpty) {
                  return const SizedBox.shrink();
                }

                return CategoryOptionsSection(
                  category: categoryData.name ?? '',
                  options: children,
                  selectedDetails: state.selectedDetailIds,
                  onItemTap: (int detailId) {
                    cubit.toggleDetail(detailId, categoryData.id ?? 0);
                  },
                );
              }).toList(),
            ],
          ),
        );
      },
    );
  }
}
