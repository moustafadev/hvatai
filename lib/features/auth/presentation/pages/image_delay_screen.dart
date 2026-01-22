part of '../auth.dart';

class ImageDelayScreen extends StatelessWidget {
  const ImageDelayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: Image.asset(
              Assets.assetsImagesOnboard,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CustomGradientButton(
                text: "Continue",
                isDisabled: false,
                isLoading: false,
                onPressed: () {
                  final cartCubit = context.read<CartCubit>();
                  cartCubit.getCartProducts();
                  cartCubit.getDeliveryAddress();
                  context.go(AppRoutes.home);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
