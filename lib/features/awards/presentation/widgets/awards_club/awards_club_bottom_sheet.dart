part of '../../awards.dart';

class AwardsClubBottomSheet extends StatelessWidget {
  const AwardsClubBottomSheet({
    super.key,
    required this.cubit,
  });

  final AwardsClubCubit cubit;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: cubit,
      child: const _AwardsClubBottomSheetBody(),
    );
  }
}

class _AwardsClubBottomSheetBody extends StatelessWidget {
  const _AwardsClubBottomSheetBody();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AwardsClubCubit, AwardsClubState>(
      builder: (context, state) {
        final cubit = context.read<AwardsClubCubit>();
        final user = state.company;

        return SingleChildScrollView(
          padding: EdgeInsets.all(16.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _AwardsClubBottomSheetHandle(),
              _AwardsClubBottomSheetHeader(
                user: user,
                isSubscribed: state.isSubscribed,
                isToggleLoading: state.isToggleLoading,
                onToggleSubscription: () => cubit.toggleSubscription(),
              ),
              16.ph,
              _AwardsClubBottomSheetActions(user: user, cubit: cubit),
            ],
          ),
        );
      },
    );
  }
}

class _AwardsClubBottomSheetHandle extends StatelessWidget {
  const _AwardsClubBottomSheetHandle();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 40.w,
        height: 4.h,
        margin: EdgeInsets.only(bottom: 16.h),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
    );
  }
}
