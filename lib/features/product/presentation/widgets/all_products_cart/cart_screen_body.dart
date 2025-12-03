part of '../../product.dart';

class CartScreenBody extends StatelessWidget {
  const CartScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BasketCubit, BasketState>(
      builder: (context, state) {
        return BlocBuilder<ProfileCubit, ProfileState>(
          builder: (context, profileState) {
            final basketCubit = context.read<BasketCubit>();
            // handle the error and loading
            if (state.showOrderLoadingScreen) {
              return const OrderLoadingScreen();
            }

            if (state.showOrderSuccessScreen) {
              return OrderSuccessScreen(
                onContinue: () {
                  basketCubit.hideOrderSuccessScreen();
                  context.pop();
                },
              );
            }

            if (state.showOrderErrorScreen) {
              return OrderErrorScreen(
                onRetry: () {
                  basketCubit.hideOrderErrorScreen();
                },
              );
            }

            if (state.isLoading || profileState.isLoading) {
              return const CartLoadingState();
            }

            if (state.errorMessage.isNotEmpty ||
                profileState.errorMessage.isNotEmpty) {
              return CartErrorState(
                errorMessage: state.errorMessage.isNotEmpty
                    ? state.errorMessage
                    : profileState.errorMessage,
              );
            }

            if (state.carts.isEmpty ||
                state.carts.every((cart) => cart.items?.isEmpty ?? true)) {
              return CartEmptyState(
                onBack: () {
                  basketCubit.pop(context);
                },
              );
            }
            return const CartMainContent();
          },
        );
      },
    );
  }
}
