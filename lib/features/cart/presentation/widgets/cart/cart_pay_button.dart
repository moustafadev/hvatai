part of '../../cart.dart';

class CartPayButton extends StatelessWidget {
  const CartPayButton({
    super.key,
    required this.onPay,
    required this.hasDeliveryAddress, required this.method,
  });

  final VoidCallback onPay;
  final bool hasDeliveryAddress;
  final String method;

  @override
  Widget build(BuildContext context) {
    return CustomGradientButton(
      text: 'pay'.tr(),
      onPressed: () {
        if (!hasDeliveryAddress && method != "pickup" ) {
          showFloatingMessageError('pleaseAddDeliveryAddress'.tr());
          return;
        }
        onPay();
      },
      width: double.infinity,
      height: 54,
      borderRadius: 10,
    );
  }
}
