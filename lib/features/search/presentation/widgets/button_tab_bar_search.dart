part of '../search.dart';

class ButtonTabBarSearch extends StatelessWidget {
  const ButtonTabBarSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchTabsCubit, SearchTabsState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = context.read<SearchTabsCubit>();
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              GestureDetector(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6.0),
                    child: Image.asset(
                      Assets.assetsIconsTune,
                      height: 39.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                  onTap: () {}),
              10.pw,
              GestureDetector(
                onTap: () => cubit.changeTab(0),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  decoration: BoxDecoration(
                    gradient: state.selectedIndex == 0
                        ? LinearGradient(
                            colors: [
                              AppColors.blueLite,
                              AppColors.purpleLite,
                              AppColors.deepPurple,
                            ],
                          )
                        : null,
                    color: state.selectedIndex == 0 ? null : AppColors.white,
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  child: CustomText(
                    text: 'Recommended',
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0.sp,
                    color: state.selectedIndex == 0
                        ? AppColors.white
                        : AppColors.blackDark,
                  ),
                ),
              ),
              10.pw,
              // Recommended
              GestureDetector(
                onTap: () => cubit.changeTab(1),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  decoration: BoxDecoration(
                    gradient: state.selectedIndex == 1
                        ? LinearGradient(
                            colors: [
                              AppColors.blueLite,
                              AppColors.purpleLite,
                              AppColors.deepPurple,
                            ],
                          )
                        : null,
                    color: state.selectedIndex == 1 ? null : AppColors.white,
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  child: CustomText(
                    text: 'TOP sellers',
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0.sp,
                    color: state.selectedIndex == 1
                        ? AppColors.white
                        : AppColors.blackDark,
                  ),
                ),
              ),
              10.pw,

              GestureDetector(
                onTap: () => cubit.changeTab(2),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  decoration: BoxDecoration(
                    gradient: state.selectedIndex == 2
                        ? LinearGradient(
                            colors: [
                              AppColors.blueLite,
                              AppColors.purpleLite,
                              AppColors.deepPurple,
                            ],
                          )
                        : null,
                    color: state.selectedIndex == 2 ? null : AppColors.white,
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  child: CustomText(
                    text: 'New',
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0.sp,
                    color: state.selectedIndex == 2
                        ? AppColors.white
                        : AppColors.blackDark,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
