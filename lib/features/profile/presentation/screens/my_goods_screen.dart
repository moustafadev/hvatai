part of '../profile.dart';

class MyGoodsScreen extends StatelessWidget {
  const MyGoodsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<MyGoodsCubit>()..getMyProducts(),
      child: BlocBuilder<MyGoodsCubit, MyGoodsState>(builder: (context, state) {
        final cubit = context.read<MyGoodsCubit>();

        if (state.isLoading) {
          return Scaffold(body: Center(child: CircularProgressIndicator(color: AppColors.grey,)));
        }

        if (state.errorMessage.isNotEmpty) {
          return Center(child: CustomText(text: state.errorMessage));
        }
        return Scaffold(
          backgroundColor: AppColors.lightGreyBackground,
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          floatingActionButton: GestureDetector(
            onTap: () async {
              final cubit = context.read<MyGoodsCubit>();
              cubit.resetProduct();
              final result =
                  await context.push<bool>(AppRoutes.addProduct, extra: cubit);


              if (result == true && context.mounted) {
                cubit.getMyProducts();
              }
            },
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
            padding: const EdgeInsets.only(
                left: 16, right: 16, top: 20, bottom: 10),
          ),
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  12.ph,
                  CustomText(
                    text: 'myProducts'.tr(),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w800,
                  ),
                  16.ph,
                  SizedBox(
                    height: 35.h,
                    child: MyGoodsTabs(
                      selectedIndex: state.selectedCategoryIndex,
                      onSelect: cubit.changeCategory,
                    ),
                  ),
                  12.ph,
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: state.products.length,
                    itemBuilder: (context, index) {
                      final product = state.products[index];
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: MyCustomProductCard<MyGoodsCubit>(
                          product: product,
                          selectedCategoryIndex: index,
                          cubit: cubit,
                          onTap: () async {
                            final result = await context.push<bool>(
                              AppRoutes.myProductDetails,
                              extra: {
                                'model': product,
                                'cubit': cubit,
                              },
                            );
                           
                            if (result == true) {
                              cubit.getMyProducts();
                            }
                          },
                        ),
                      );
                    },
                  ),
                  20.ph,
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
