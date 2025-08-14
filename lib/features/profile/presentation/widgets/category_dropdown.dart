part of '../profile.dart';

class CategoryDropdown extends StatelessWidget {
  const CategoryDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyGoodsCubit, MyGoodsState>(
      builder: (context, state) {
        final cubit = context.read<MyGoodsCubit>();
        final categories = state.category.data ?? [];

        return CustomDropdown(
          hintText: 'selectCategory'.tr(),
          value: categories
              .firstWhere(
                (c) => c.id == state.product.categoryId,
                orElse: () => CategoryData(),
              )
              .name,
          onChanged: (value) {
            if (value != null) {
              final selected = categories.firstWhere(
                (c) => c.name == value,
                orElse: () => CategoryData(),
              );
              if (selected.id != null) {
                cubit.setCategory(selected.id!);
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
