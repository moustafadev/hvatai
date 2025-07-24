part of '../profile.dart';

class TradeProfileDetail extends StatelessWidget {
  const TradeProfileDetail({super.key, required this.userRegistrationData});
  final UserRegistrationData userRegistrationData;
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.lightGreyBackground,
      body: BlocBuilder<ProfileCubit, ProfileState>(
        builder: (context, state) {
          final user = state.userProfileModel;
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(color: AppColors.grey),
            );
          }

          return SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  height: screenHeight * (230 / screenHeight),
                  color: AppColors.primaryPink,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, right: 16.0, top: 30.0),
                  child: Column(
                    children: [
                      const AppBarTradeProfileDetail(),
                      22.ph,
                      UserInfoTradeProfileDetail(
                        name: user.firstName ?? '',
                        nickname: user.firstName ?? '',
                        lastName: user.lastName ?? '',
                      ),
                      32.ph,
                      const InfoTradeProfileDetailBottom(),
                      24.ph,
                      const FourContainerTradeProfileDetail(),
                      24.ph,
                      StreamerProfileTradeOptions(),
                      80.ph
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
