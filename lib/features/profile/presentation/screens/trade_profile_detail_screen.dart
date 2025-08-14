part of '../profile.dart';

class TradeProfileDetailScreen extends StatelessWidget {
  const TradeProfileDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        final user = state.userProfileModel;
        return _buildTradeProfileContent(screenHeight, user);
      },
    );
  }

  Widget _buildTradeProfileContent(
      double screenHeight, UserRegistrationData user) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            height: screenHeight * (230 / screenHeight),
            color: AppColors.primaryPink,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 30.0),
            child: Column(
              children: [
                const TopBarWidget(
                  isSearch: false,
                  isGift: false,
                  isCircle: true,
                ),
                22.ph,
                UserInfoTradeProfileDetail(
                  name: user.firstName ?? '',
                  nickname: user.firstName ?? '',
                  lastName: user.lastName ?? '',
                  image: user.image ?? '',
                ),
                32.ph,
                const InfoTradeProfileDetailBottom(),
                24.ph,
                const FourContainerTradeProfileDetail(),
                24.ph,
                const StreamerProfileTradeOptions(),
                100.ph,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
