part of '../profile.dart';

class ChangeInfoProfile extends StatelessWidget {
  final ProfileState state;

  const ChangeInfoProfile({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.all(0),
      physics: NeverScrollableScrollPhysics(),
      itemCount: state.changeInfoProfile.length,
      itemBuilder: (context, index) {
        final item = state.changeInfoProfile[index];
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
                  image: AssetImage(item['icon']),
                ),
              ),
            ),
          ),
          title: Text(
            item['title'],
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              fontFamily: "Gilroy-Bold",
              color: Color(0xff2A2A2A),
            ),
          ),
          trailing: Icon(
            Icons.chevron_right,
            color: Colors.black,
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
  }
}
