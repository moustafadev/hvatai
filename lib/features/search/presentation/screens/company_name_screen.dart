part of '../search.dart';

class CompanyNameScreen extends StatelessWidget {
  const CompanyNameScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.lightGreyBackground,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: screenHeight * (230 / screenHeight),
              color: AppColors.darkYellow,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 16.0, right: 16.0, top: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: GestureDetector(
                      onTap: () {
                        context.pop();
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                      ),
                    ),
                  ),
                  22.ph,
                  InfoCompanyNameDetail(
                    companyName: 'company_name',
                    name: 'Ahmed',
                    lastName: 'Ramadan',
                  ),
                  32.ph,
                  const InfoCompanyNameBottom(),
                  16.ph,
                  CustomText(
                    text:
                        'We are an official store operating since 2021. Our mission is to offer you original products from leading global brands at affordable prices with a guarantee of authenticity. ✨ Why buy from us?',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  6.ph,
                  GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: [
                          CustomText(
                            text: 'viewAll'.tr(),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors.primaryPink,
                          ),
                          8.pw,
                          Icon(
                            Icons.keyboard_arrow_down,
                            size: 14.sp,
                            color: AppColors.primaryPink,
                          ),
                        ],
                      )),
                  16.ph,
                  CustomRowCompanyName(
                    text: 'sendReward'.tr(),
                    image: Assets.assetsIconsTips,
                  ),
                  12.ph,
                  CustomRowCompanyName(
                    text: 'write'.tr(),
                    image: Assets.assetsIconsMessage,
                  ),
                  24.ph,
                  FourContainerCompanyName(),
                  24.ph,
                  CustomButton(
                      title: 'subscribe'.tr(),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w800,
                      onPressed: () {}),
                  24.ph,
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
