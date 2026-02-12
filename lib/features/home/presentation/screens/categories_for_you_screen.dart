part of '../home.dart';

class CategoriesForYouScreen extends StatelessWidget {
  const CategoriesForYouScreen({
    super.key,
    required this.favorites,
    required this.initialSelectedIds,
  });

  final List<CategoryData> favorites;
  final List<int> initialSelectedIds;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          locator<CategoriesForYouCubit>()..initialize(initialSelectedIds),
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: SafeArea(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () => context.pop(), // ✅ discard (null)
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: AppColors.blackColorIcon,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: CustomText(
                      text: 'categoriesForYou'.tr(),
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  24.ph,
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: BlocBuilder<CategoriesForYouCubit,
                          CategoriesForYouState>(
                        builder: (context, state) {
                          final cubit = context.read<CategoriesForYouCubit>();

                          return GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 12,
                              mainAxisSpacing: 12,
                              childAspectRatio: 0.82,
                            ),
                            itemCount: favorites.length,
                            itemBuilder: (context, index) {
                              final cat = favorites[index];
                              final catId = cat.id ?? 0;

                              final isSelected =
                                  state.selectedIds.contains(catId);

                              return CategoryCard(
                                category: cat,
                                isSelected: isSelected,
                                onTap: () => cubit.toggle(catId),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 100),
                ],
              ),
              Positioned(
                left: 16,
                right: 16,
                bottom: 32,
                child:
                    BlocBuilder<CategoriesForYouCubit, CategoriesForYouState>(
                  builder: (context, state) {
                    return CustomGradientButton(
                      text: 'Применить',
                      height: 54,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w800,
                      onPressed: () {
                        context.pop(
                            state.selectedIds.toList()); // ✅ return to home
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
