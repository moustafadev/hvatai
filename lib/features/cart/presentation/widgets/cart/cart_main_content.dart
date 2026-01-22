part of '../../cart.dart';

class CartMainContent extends StatelessWidget {
  const CartMainContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final profileCubit = context.read<ProfileCubit>();

    return BlocProvider.value(
      value: profileCubit,
      child: Scaffold(
        backgroundColor: AppColors.lightGreyBackground,
        appBar: AppBar(
          backgroundColor: AppColors.lightGreyBackground,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: AppColors.blackDark),
            onPressed: () {
              context.pop();
            },
          ),
        ),
        body: const CartContent(),
      ),
    );
  }
}
