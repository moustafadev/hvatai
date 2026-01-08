part of '../add_new_product.dart';

class CategoryDropdown extends StatelessWidget {
  const CategoryDropdown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductFormCubit, ProductFormState>(
      builder: (context, state) {
        final cubit = context.read<ProductFormCubit>();
        final allCategories = state.category;
        final filteredCategories = allCategories;

        if (filteredCategories.isEmpty) {
          return CustomText(
            text: 'No categories available',
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.grey,
          );
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
