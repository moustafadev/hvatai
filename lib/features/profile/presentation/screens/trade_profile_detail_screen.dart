part of '../profile.dart';

class TradeProfileDetailScreen extends StatelessWidget {
  const TradeProfileDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(color: AppColors.grey),
          );
        }

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
                const SizedBox(height: 22),
                UserInfoTradeProfileDetail(
                  name: user.firstName ?? '',
                  nickname: user.firstName ?? '',
                  lastName: user.lastName ?? '',
                  image: user.image ?? '',
                ),
                const SizedBox(height: 32),
                const InfoTradeProfileDetailBottom(),
                const SizedBox(height: 24),
                const FourContainerTradeProfileDetail(),
                const SizedBox(height: 24),
                const StreamerProfileTradeOptions(),
                const SizedBox(height: 80),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
