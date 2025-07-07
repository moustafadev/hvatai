part of '../search.dart';

class SearchRecently extends StatelessWidget {
  const SearchRecently({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchTabsCubit, SearchTabsState>(
        builder: (context, state) {
      return Wrap(
        spacing: 8,
        runSpacing: 8,
        children: state.searchedItems.map((item) {
          return Chip(
            label: Text(item),
            deleteIcon: Icon(Icons.close),
            deleteIconColor: AppColors.blackDark,
            side: const BorderSide(
              color: AppColors.transparent,
            ),
            backgroundColor: AppColors.gray,
            onDeleted: () {
              context.read<SearchTabsCubit>().removeItem(item);
            },
          );
        }).toList(),
      );
    });
  }
}
