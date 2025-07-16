part of '../profile.dart';

class PaymentAndDelivery extends StatelessWidget {
  const PaymentAndDelivery({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(builder: (context, state) {
      return ListView.builder(
        padding: EdgeInsets.all(0),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: state.settingsOptions.length + 1,
        itemBuilder: (context, index) {
          final chatIndex = state.settingsOptions.indexWhere(
            (option) => option['title'] == "chat".tr(),
          );

          if (index == chatIndex + 1) {
            return ListTile(
              contentPadding: EdgeInsets.all(0),
              leading: CustomText(
                text: "paymentDelivery".tr(),
                fontSize: 20.sp,
                fontWeight: FontWeight.w800,
              ),
            );
          }

          int dataIndex = index > chatIndex + 1 ? index - 1 : index;

          final option = state.settingsOptions[dataIndex];

          return ListTile(
            contentPadding: EdgeInsets.all(0),
            leading: Container(
              decoration: BoxDecoration(
                color: AppColors.gray,
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0.r),
                child: CustomContainer(
                  height: 24.h,
                  width: 24.w,
                  image: DecorationImage(
                    image: AssetImage(option['icon']),
                  ),
                ),
              ),
            ),
            title: CustomText(
              text: option['title'],
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.blackDark,
            ),
            trailing: Icon(
              Icons.chevron_right,
              color: AppColors.blackDark,
              size: 28,
            ),
            onTap: () {
              final screen = option['screen'];
              if (screen is Function(BuildContext)) {
                screen(context);
              } else if (screen is Function()) {
                screen();
              }
            },
          );
        },
      );
    });
  }
}
