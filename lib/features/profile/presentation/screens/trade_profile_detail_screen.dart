part of '../profile.dart';

class TradeProfileDetail extends StatelessWidget {
  const TradeProfileDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: BlocProvider(
        create: (BuildContext context) => locator<ProfileCubit>(),
        child:
            BlocBuilder<ProfileCubit, ProfileState>(builder: (context, state) {
          // final cubit = context.read<ProfileCubit>();
          if (state.streamerOptions.isEmpty) {
            return Center(
                child: CircularProgressIndicator(
              color: AppColors.grey,
            ));
          }
          return SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  height: screenHeight * (230 / screenHeight),
                  color: AppColors.primaryPink,
                ),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16.0, top: 30.0),
                    child: Column(children: [
                      const AppBarTradeProfileDetail(),
                      22.ph,
                      UserInfoTradeProfileDetail(),
                      32.ph,
                      InfoTradeProfileDetailBottom(),
                      24.ph,
                      FourContainerTradeProfileDetail(),
                      24.ph,
                      StreamerProfileTradeOptions(
                        state: state,
                      ),
                      80.ph
                    ]))
              ],
            ),
          );
        }),
      ),
    );
  }
}
