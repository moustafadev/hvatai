part of '../../profile.dart';

class ChangeInfoProfile extends StatelessWidget {
  const ChangeInfoProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditProfileCubit, EditProfileState>(
        builder: (context, state) {
      return ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.all(0),
        physics: NeverScrollableScrollPhysics(),
        itemCount: state.changeInfoProfile.length,
        itemBuilder: (context, index) {
          final item = state.changeInfoProfile[index];
          return ReusableProfileTile(
            isEmailVerified: index == 0 ? item['isEmailVerified'] : false,
            title: item['title'],
            iconAsset: item['icon'],
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
