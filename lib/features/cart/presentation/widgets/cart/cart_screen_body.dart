part of '../../cart.dart';

class CartScreenBody extends StatelessWidget {
  const CartScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<CartCubit, CartState>(
      listenWhen: (previous, current) {
        final qrReady = current.qrCodeSvg != null && current.qrCodeSvg!.isNotEmpty;
        final webViewReady = current.pendingPaymentWebViewUrl != null &&
            current.pendingPaymentWebViewUrl!.isNotEmpty;
        return qrReady || webViewReady;
      },
      listener: (context, state) {
        final basketCubit = context.read<CartCubit>();

        if (state.qrCodeSvg != null && state.qrCodeSvg!.isNotEmpty) {
          final qrCodeSvg = state.qrCodeSvg!;
          final url = state.sbpPaymentUrl;
          final orderUuid = state.lastOrderUuid;
          basketCubit.clearQrCode();
          showSbpQrBottomSheet(
            context,
            qrCodeSvg,
            url,
            orderUuid: orderUuid,
          );
          return;
        }

        if (state.pendingPaymentWebViewUrl != null &&
            state.pendingPaymentWebViewUrl!.isNotEmpty) {
          final paymentUrl = state.pendingPaymentWebViewUrl!;
          final orderUuid = state.lastOrderUuid;
          basketCubit.clearPendingPaymentWebView();
          context.push(
            AppRoutes.paymentWebView,
            extra: {
              'url': paymentUrl,
              'isPlan': false,
              'orderUuid': orderUuid,
            },
          );
        }
      },
      child: BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        return BlocBuilder<ProfileCubit, ProfileState>(
          builder: (context, profileState) {
            final basketCubit = context.read<CartCubit>();
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
                  context.pop();
                },
              );
            }
            return const CartMainContent();
          },
        );
      },
    ),
    );
  }
}
