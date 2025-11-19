part of '../stream.dart';

class CustomBidPriceBottomSheet extends StatefulWidget {
  final double minimumPrice;

  const CustomBidPriceBottomSheet({
    super.key,
    required this.minimumPrice,
  });

  @override
  State<CustomBidPriceBottomSheet> createState() =>
      _CustomBidPriceBottomSheetState();
}

class _CustomBidPriceBottomSheetState extends State<CustomBidPriceBottomSheet> {
  final TextEditingController _priceController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String? _errorMessage;

  @override
  void dispose() {
    _priceController.dispose();
    super.dispose();
  }

  void _validateAndSubmit() {
    final priceText = _priceController.text.trim();
    if (priceText.isEmpty) {
      setState(() {
        _errorMessage = 'Пожалуйста, введите цену';
      });
      return;
    }

    final price = double.tryParse(priceText);
    if (price == null) {
      setState(() {
        _errorMessage = 'Неверный формат цены';
      });
      return;
    }

    if (price < widget.minimumPrice) {
      setState(() {
        _errorMessage =
            'Цена должна быть не менее ${widget.minimumPrice.toStringAsFixed(2)} ₽';
      });
      return;
    }

    // Valid price - return it
    Navigator.pop(context, price);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.r),
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Drag handle
            Center(
              child: Container(
                width: 40.w,
                height: 4.h,
                margin: EdgeInsets.only(top: 12.h, bottom: 8.h),
                decoration: BoxDecoration(
                  color: AppColors.grey,
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
            ),
            // Header
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: 'Введите цену ставки',
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w800,
                    color: AppColors.blackDark,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(
                      Icons.close,
                      size: 24.sp,
                      color: AppColors.blackDark,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: CustomText(
                text: 'Минимальная цена: ${widget.minimumPrice.toStringAsFixed(2)} ₽',
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.grey,
              ),
            ),
            SizedBox(height: 24.h),
            // Price input
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Form(
                key: _formKey,
                child: CustomTextField(
                  controller: _priceController,
                  hintText: 'Введите цену',
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(
                      RegExp(r'[\d.]'),
                    ),
                    TextInputFormatter.withFunction((oldValue, newValue) {
                      final text = newValue.text;
                      // Allow empty
                      if (text.isEmpty) return newValue;
                      // Check if it's a valid decimal number
                      if (RegExp(r'^\d+\.?\d{0,2}$').hasMatch(text)) {
                        return newValue;
                      }
                      return oldValue;
                    }),
                  ],
                  textColor: AppColors.blackDark,
                  hintColor: AppColors.grey,
                  fillColor: AppColors.white,
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    color: _errorMessage != null
                        ? Colors.red
                        : AppColors.grey.withOpacity(0.3),
                    width: 1,
                  ),
                  onChanged: (value) {
                    if (_errorMessage != null) {
                      setState(() {
                        _errorMessage = null;
                      });
                    }
                  },
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Пожалуйста, введите цену';
                    }
                    final price = double.tryParse(value.trim());
                    if (price == null) {
                      return 'Неверный формат цены';
                    }
                    if (price < widget.minimumPrice) {
                      return 'Цена должна быть не менее ${widget.minimumPrice.toStringAsFixed(2)} ₽';
                    }
                    return null;
                  },
                ),
              ),
            ),
            if (_errorMessage != null) ...[
              SizedBox(height: 8.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: CustomText(
                  text: _errorMessage!,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.red,
                ),
              ),
            ],
            SizedBox(height: 24.h),
            // Submit button
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: CustomButton(
                title: 'Подтвердить',
                onPressed: _validateAndSubmit,
                color: AppColors.primaryColor,
                textColor: Colors.white,
                radius: 24,
                height: 48,
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 24.h),
          ],
        ),
      ),
    );
  }
}

