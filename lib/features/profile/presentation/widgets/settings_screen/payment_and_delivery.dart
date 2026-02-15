part of '../../profile.dart';

class PaymentAndDelivery extends StatelessWidget {
  const PaymentAndDelivery({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditProfileCubit, EditProfileState>(
        builder: (context, state) {
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

          return ReusableProfileTile(
            title: option['title'],
            iconAsset: option['icon'],
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
