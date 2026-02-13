part of '../search.dart';
class RecentSearchWidget extends StatelessWidget {
  const RecentSearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        final cubit = context.read<SearchCubit>();
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              16.ph,
              CustomText(
                text: 'Недавно искали',
                fontSize: 20.sp,
                fontWeight: FontWeight.w800,
              ),
              12.ph,
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: state.recentSearches.map((item) {
                  return InputChip(
                    side: const BorderSide(
                      color: AppColors.transparent,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: AppColors.greyButton,
                    deleteIconColor: AppColors.text,
                    label: CustomText(
                      text: item.query,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    onDeleted: () {
                      cubit.removeRecentSearch(item);
                    },
                    onPressed: () {
                      cubit.selectSuggestion(item.query);
                    },
                  );
                }).toList(),
              ),
            ],
          ),
        );
      },
    );
  }
}
