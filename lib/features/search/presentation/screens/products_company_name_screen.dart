part of '../search.dart';

class ProductsCompanyNameScreen extends StatelessWidget {
  const ProductsCompanyNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        floatingActionButton: Container(
          decoration: BoxDecoration(
            color: AppColors.primaryPink,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: FloatingActionButton.extended(
            backgroundColor: AppColors.primaryPink,
            onPressed: () {},
            icon:
                Image.asset(Assets.assetsIconsStore, height: 22.h, width: 22.w),
            label: CustomText(
              text: '90 000 ₽',
              fontSize: 16.sp,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        backgroundColor: AppColors.lightGreyBackground,
        body: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
              child: TopBarSearchWidget(
                image: Assets.assetsIconsTune,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      12.ph,
                      CustomText(
                        text: 'goods',
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w800,
                      ),
                      ProductCardCompany(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
