part of '../home.dart';

class CategoryTabsWidget extends StatelessWidget {
  final Function(dynamic) onCategorySelected;

  const CategoryTabsWidget({required this.onCategorySelected, super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CategoryTabsCubit>();

    return BlocBuilder<CategoryTabsCubit, CategoryTabsState>(
      builder: (context, state) {
        if (state.categories.isEmpty) {
          return const Center(child: CustomText(text: 'No interests found'));
        }

        return SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(min(5, 7), (index) {
              //  final category = state.categories[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: CustomGradiantTabButton(
                  text: 'Electronics',
                  isSelected: state.selectedIndex == index,
                  onPressed: () {
                    cubit.selectCategory(index);
                    // context.read<CategoryTabsCubit>().selectCategory(index);
                    // widget.onCategorySelected(
                    //     category == 'All' ? null : category);
                  },
                ),
              );
            }),
          ),
        );
      },
    );
  }
}
