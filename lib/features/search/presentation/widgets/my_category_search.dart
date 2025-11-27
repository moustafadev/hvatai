part of '../search.dart';

class MyCategorySearch extends StatelessWidget {
  const MyCategorySearch({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        final cubit = context.read<SearchCubit>();
        final categories = state.parentCategories;

        if (categories.isEmpty) {
          return const SizedBox.shrink();
        }

        final names = <String>[];
        final icons = <String>[];
        final views = <String?>[];

        for (final category in categories) {
          final name = category.name?.trim() ?? '';
          if (name.isEmpty) continue;
          names.add(name);
          icons.add(category.icon ?? '');
          views.add(category.views);
        }

        if (names.isEmpty) {
          return const SizedBox.shrink();
        }

        return ReusableCategoryWidget<SearchCubit, SearchState>(
          interestKeys: names,
          interestImages: icons,
          interestViews: views,
          selectedIndices: state.selectedIndices.toList(),
          onTap: (index, key) {},
          // onTap: (index, key) => cubit.toggleInterest(index, key),
        );
      },
    );
  }
}
