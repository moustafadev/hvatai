part of '../../cart.dart';

class CartErrorState extends StatelessWidget {
  const CartErrorState({
    super.key,
    required this.errorMessage,
  });

  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText(text: errorMessage),
    );
  }
}
