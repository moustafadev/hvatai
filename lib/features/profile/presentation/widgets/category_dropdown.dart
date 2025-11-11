part of '../profile.dart';

class CategoryDropdown extends StatelessWidget {
  const CategoryDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyGoodsCubit, MyGoodsState>(
      builder: (context, state) {
        final cubit = context.read<MyGoodsCubit>();
        final categories = state.category;
        print("categories: $categories");

        return CustomDropdown(
          hintText: 'selectCategory'.tr(),
          value: categories
              .firstWhere(
                (c) => c.id == state.product.categoryId,
                orElse: () => MainCategoryModel(),
              )
              .name,
          onChanged: (value) {
            if (value != null) {
              final selected = categories.firstWhere(
                (c) => c.name == value,
                orElse: () => MainCategoryModel(),
              );
              if (selected.id != null) {
                cubit.setCategory(selected.id!, selected.name);
              }
            }
          },
          items: categories
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
