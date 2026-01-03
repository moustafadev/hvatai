part of '../search.dart';

class SearchSuggestionsWidget extends StatelessWidget {
  const SearchSuggestionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        // Only show if suggestions are available and not empty
        if (!state.showSuggestions || state.suggestions.isEmpty) {
          return const SizedBox.shrink();
        }

        return Material(
          elevation: 8,
          borderRadius: BorderRadius.circular(10.r),
          color: Colors.transparent,
          shadowColor: Colors.black.withOpacity(0.2),
          child: GestureDetector(
            onTap: () {}, // Prevent tap from propagating to parent
            behavior: HitTestBehavior.opaque,
            child: Container(
              width: 310.w,
              constraints: BoxConstraints(
                maxHeight: 110.h,
              ),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(10.r),
              ),
              padding: EdgeInsets.only(
                top: 4.h,
                bottom: 4.h,
                right: 12.w,
                left: 9.w,
              ),
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: state.suggestions.length,
                padding: EdgeInsets.zero,
                separatorBuilder: (context, index) => SizedBox(height: 4.h),
                itemBuilder: (context, index) {
                  final suggestion = state.suggestions[index];
                  return GestureDetector(
                    onTap: () {
                      context.read<SearchCubit>().selectSuggestion(suggestion);
                    },
                    behavior: HitTestBehavior.opaque,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 2.h),
                      child: CustomText(
                        text: suggestion,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.blackDark,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
