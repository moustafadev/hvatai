part of '../../awards.dart';

class AwardsClubHeaderWidget extends StatelessWidget {
  const AwardsClubHeaderWidget({super.key});

  void _showBottomSheet(BuildContext context, AwardsClubCubit cubit) {
    showModalBottomSheet(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width,
      ),
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.r),
        ),
      ),
      backgroundColor: Colors.white,
      builder: (context) => AwardsClubBottomSheet(cubit: cubit),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AwardsClubCubit, AwardsClubState>(
      builder: (context, state) {
        final cubit = context.read<AwardsClubCubit>();
        final user = state.company;
        final companyName =
            (user?.name ?? '').isNotEmpty ? user!.name! : 'companyName'.tr();
        final description = 'subscribeAwardsDescription'
            .tr(namedArgs: {'company': companyName});
        final avatar = user?.image;

        return Stack(
          children: [
            _AwardsClubHeaderContent(
              companyName: companyName,
              description: description,
              avatar: avatar,
              onAvatarTap: () => _showBottomSheet(context, cubit),
            ),
            _AwardsClubHeaderBackButton(isSubscribed: state.isSubscribed),
          ],
        );
      },
    );
  }
}

class _AwardsClubHeaderBackButton extends StatelessWidget {
  const _AwardsClubHeaderBackButton({required this.isSubscribed});

  final bool isSubscribed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h),
      child: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios,
          color: AppColors.blackColorIcon,
        ),
        onPressed: () {
          Navigator.of(context).pop(isSubscribed);
        },
      ),
    );
  }
}
