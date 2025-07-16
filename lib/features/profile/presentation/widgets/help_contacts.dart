part of '../profile.dart';

class HelpContacts extends StatelessWidget {
  const HelpContacts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(builder: (context, state) {
      return ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.all(0),
        physics: NeverScrollableScrollPhysics(),
        itemCount: state.helpAndContact.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return ListTile(
              contentPadding: EdgeInsets.all(0),
              leading: CustomText(
                text: "helpContacts".tr(),
                fontWeight: FontWeight.w800,
                fontSize: 20.sp,
                fontFamily: "Manrope",
              ),
            );
          }

          final item = state.helpAndContact[index - 1];

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
                    image: AssetImage(item['icon']),
                  ),
                ),
              ),
            ),
            title: CustomText(
              text: item['title'],
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
              final screen = item['screen'];
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
