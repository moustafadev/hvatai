part of '../../cart.dart';

class CartPayButton extends StatelessWidget {
  const CartPayButton({
    super.key,
    required this.onPay,
    required this.hasDeliveryAddress,
  });

  final VoidCallback onPay;
  final bool hasDeliveryAddress;

  @override
  Widget build(BuildContext context) {
    return CustomGradientButton(
      text: 'pay'.tr(),
      onPressed: () {
        if (!hasDeliveryAddress) {
          showFloatingMessageError('pleaseAddDeliveryAddress'.tr());
          return;
        }
        onPay();
      },
      width: double.infinity,
      height: 52,
      borderRadius: 10,
    );
  }
}
