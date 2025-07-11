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
        itemCount: state.settingsOptions.length + 1, // زيادة عنصر واحد للفاصل
        itemBuilder: (context, index) {
          // موقع العنصر "chat" في القائمة
          final chatIndex = state.settingsOptions.indexWhere(
            (option) => option['title'] == "chat".tr(),
          );

          if (index == chatIndex + 1) {
            // العنصر الجديد (الفاصل) بعد "chat"
            return ListTile(
              contentPadding: EdgeInsets.all(0),
              leading: CustomText(
                text: "paymentDelivery".tr(),
                fontSize: 20.sp,
                fontWeight: FontWeight.w800,
                fontFamily: "Manrope",
              ),
            );
          }

          int dataIndex = index > chatIndex + 1 ? index - 1 : index;

          final option = state.settingsOptions[dataIndex];

          return ListTile(
            contentPadding: EdgeInsets.all(0),
            leading: Container(
              decoration: BoxDecoration(
                color: Color(0xff000000).withOpacity(0.05),
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
            title: Text(
              option['title'],
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                fontFamily: "Gilroy-Bold",
                color: Colors.black.withOpacity(0.8),
              ),
            ),
            trailing: Icon(
              Icons.chevron_right,
              color: Colors.black,
              size: 28,
            ),
          );
        },
      );
    });
  }
}
