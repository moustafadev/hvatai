part of '../profile.dart';

class CategoryDropdown extends StatelessWidget {
  const CategoryDropdown({
    super.key,
    this.allowedCategoryIds,
  });

  final List<int>? allowedCategoryIds;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyGoodsCubit, MyGoodsState>(
      builder: (context, state) {
        final cubit = context.read<MyGoodsCubit>();
        final allCategories = state.category;
        final filteredCategories = allowedCategoryIds == null
            ? allCategories
            : allCategories
                .where((category) =>
                    category.id != null &&
                    allowedCategoryIds!.contains(category.id!))
                .toList();

        if (filteredCategories.isEmpty) {
          return CustomText(
            text: 'No categories available',
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.grey,
          );
        }

        final selectedCategoryId = state.product.categoryId;
        final hasSelectedCategory = selectedCategoryId != null &&
            filteredCategories.any((c) => c.id == selectedCategoryId);

        final shouldAutoSelect =
            allowedCategoryIds != null && !hasSelectedCategory;

        if (shouldAutoSelect) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            final firstCategory = filteredCategories.first;
            if (firstCategory.id != null) {
              cubit.setCategory(firstCategory.id!, firstCategory.name);
            }
          });
        }

        final selectedCategoryName = filteredCategories
            .firstWhere(
              (c) => c.id == state.product.categoryId,
              orElse: () => MainCategoryModel(),
            )
            .name;

        return CustomDropdown(
          hintText: 'selectCategory'.tr(),
          value: selectedCategoryName,
          onChanged: (value) {
            if (value != null) {
              final selected = filteredCategories.firstWhere(
                (c) => c.name == value,
                orElse: () => MainCategoryModel(),
              );
              if (selected.id != null) {
                cubit.setCategory(selected.id!, selected.name);
              }
            }
          },
          items: filteredCategories
              .map((category) => DropdownMenuItem(
                    value: category.name,
                    child: Text(category.name ?? ''),
                  ))
              .toList(),
        );
      },
    );
  }
}
