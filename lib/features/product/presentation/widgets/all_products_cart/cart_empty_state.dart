part of '../../product.dart';

class CartEmptyState extends StatelessWidget {
  const CartEmptyState({
    super.key,
    required this.onBack,
  });

  final VoidCallback onBack;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGreyBackground,
      appBar: AppBar(
        backgroundColor: AppColors.lightGreyBackground,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: AppColors.blackDark),
          onPressed: onBack,
        ),
      ),
      body: Center(
        child: Text(
          'basketEmpty'.tr(),
          style: TextStyle(fontSize: 18.sp),
        ),
      ),
    );
  }
}

