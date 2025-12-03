part of '../product.dart';

class AllProductsCartScreen extends StatelessWidget {
  const AllProductsCartScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => locator<BasketCubit>()
            ..getCartProducts()
            ..getDeliveryAddress(),
        ),
        BlocProvider(
          create: (_) => locator<PaymentMethodCubit>()..getPaymentMethods(),
        ),
        BlocProvider(create: (_) => locator<ProfileCubit>()..getProfile()),
      ],
      child: CartScreenBody(
            
      ),
    );
  }
}
