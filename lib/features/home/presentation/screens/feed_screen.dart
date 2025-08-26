part of '../home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.lightGreyBackground,
      body: BlocProvider(
        create: (_) => locator<CategoryTabsCubit>()
          ..fetchLiveStreams()
          ..getCategories()
          ..getFavCategories(),
        child: SafeArea(
          bottom: false,
          child: BlocBuilder<CategoryTabsCubit, CategoryTabsState>(
            builder: (context, state) {
              if (state.isLoading) {
                return Scaffold(
                  body: const Center(
                      child: CircularProgressIndicator(
                    color: AppColors.grey,
                  )),
                );
              }
              return Column(
                children: [
                  10.ph,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: TopBarWidget(
                      onGiftTap: () => context.push(AppRoutes.awardsGift),
                    ),
                  ),
                  16.ph,
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: CategoryTabsWidget()),
                          10.ph,
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15.0),
                            child: TitleCategoriesForYou(),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: MyCategory(),
                          ),
                          12.ph,
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: LiveVideosWidget(
                              liveStreams: state.liveStreams,
                              currentUserId: '',
                            ),
                          ),
                          100.ph
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
