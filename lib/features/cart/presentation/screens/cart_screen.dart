part of '../cart.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => locator<PaymentMethodCubit>()..getPaymentMethods(),
        ),
        BlocProvider(create: (_) => locator<ProfileCubit>()..getProfile()),
      ],
      child: CartScreenBody(),
    );
  }
}
