part of '../profile.dart';

class MyGoodsScreen extends StatelessWidget {
  const MyGoodsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        backgroundColor: AppColors.lightGreyBackground,
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: GestureDetector(
          onTap: () => context.push(AppRoutes.addProduct),
          child: Container(
            margin: const EdgeInsets.only(bottom: 50),
            height: 50.h,
            width: 50.w,
            decoration: const BoxDecoration(
              color: AppColors.primaryColor,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.add_circle_outline,
              size: 30,
              color: AppColors.white,
            ),
          ),
        ),
        appBar: CustomAppBar(
          showBack: true,
          showSearch: true,
          showGift: false,
          showNotification: false,
          padding: const EdgeInsets.symmetric(horizontal: 16),
        ),
        body: BlocProvider(
          create: (_) => locator<MyGoodsCubit>(),
          child: BlocBuilder<MyGoodsCubit, MyGoodsState>(
            builder: (context, state) {
              final cubit = context.read<MyGoodsCubit>();
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    12.ph,
                    CustomText(
                      text: 'my Goods'.tr(),
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w800,
                    ),
                    16.ph,
                    Expanded(
                      child: ListView(
                        children: [
                          SizedBox(
                            height: 35.h,
                            child: MyGoodsTabs(
                              selectedIndex: state.selectedCategoryIndex,
                              onSelect: cubit.changeCategory,
                            ),
                          ),
                          12.ph,
                          ...state.products.map(
                            (e) => MyGoodsCard(
                              product: e,
                              selectedCategoryIndex:
                                  state.selectedCategoryIndex,
                              currentUserId: '',
                            ),
                          ),
                          20.ph,
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
