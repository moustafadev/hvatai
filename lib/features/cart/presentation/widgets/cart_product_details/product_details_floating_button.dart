part of '../../cart.dart';

class ProductDetailsFloatingButton extends StatelessWidget {
  const ProductDetailsFloatingButton({
    super.key,
    required this.totalCartPrice,
    required this.onPressed,
  });

  final double totalCartPrice;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryPink,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: FloatingActionButton.extended(
        backgroundColor: AppColors.primaryPink,
        onPressed: onPressed,
        icon: Image.asset(
          Assets.assetsIconsStore,
          height: 22.h,
          width: 22.w,
        ),
        label: CustomText(
          text: "${totalCartPrice.toStringAsFixedSmart} ₽",
          fontSize: 20.sp,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}

