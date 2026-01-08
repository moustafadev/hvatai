part of '../stream.dart';

class CustomBidPriceBottomSheet extends StatefulWidget {
  final double minimumPrice;
  final double currentPrice;
  final double step;
  final int? remainingSeconds;

  const CustomBidPriceBottomSheet({
    super.key,
    required this.minimumPrice,
    required this.currentPrice,
    this.step = 1000.0,
    this.remainingSeconds,
  });

  @override
  State<CustomBidPriceBottomSheet> createState() =>
      _CustomBidPriceBottomSheetState();
}

class _CustomBidPriceBottomSheetState extends State<CustomBidPriceBottomSheet> {
  late double _currentBidPrice;
  Timer? _timer;
  int? _remainingSeconds;

  @override
  void initState() {
    super.initState();
    _currentBidPrice = widget.currentPrice;
    _remainingSeconds = widget.remainingSeconds;
    if (_remainingSeconds != null && _remainingSeconds! > 0) {
      _startTimer();
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (mounted) {
        setState(() {
          if (_remainingSeconds != null && _remainingSeconds! > 0) {
            _remainingSeconds = _remainingSeconds! - 1;
          } else {
            _timer?.cancel();
          }
        });
      }
    });
  }

  String _formatTime(int seconds) {
    final minutes = seconds ~/ 60;
    final secs = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${secs.toString().padLeft(2, '0')}';
  }

  void _decreasePrice() {
    final newPrice = _currentBidPrice - widget.step;
    if (newPrice >= widget.minimumPrice) {
      setState(() {
        _currentBidPrice = newPrice;
      });
    }
  }

  void _increasePrice() {
    setState(() {
      _currentBidPrice = _currentBidPrice + widget.step;
    });
  }

  void _applyBid() {
    if (_currentBidPrice < widget.minimumPrice) {
      return;
    }
    Navigator.pop(context, _currentBidPrice);
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Drag handle
          Center(
            child: Container(
              width: 40.w,
              height: 4.h,
              margin: EdgeInsets.only(top: 8.h, bottom: 12.h),
              decoration: BoxDecoration(
                color: AppColors.greyButton,
                borderRadius: BorderRadius.circular(100.r),
              ),
            ),
          ),
          CustomText(
            text: 'Изменить ставку',
            fontSize: 16.sp,
            fontWeight: FontWeight.w800,
            color: AppColors.blackDark,
          ),
          43.ph,
          CustomText(
            text: _formatTime(_remainingSeconds!),
            fontSize: 10.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.blackDark,
          ),
          8.ph,

          // Large price display with +/- buttons
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Minus button
                GestureDetector(
                  onTap: _decreasePrice,
                  child: CircleAvatar(
                    radius: 24.r,
                    backgroundColor:
                        _currentBidPrice - widget.step >= widget.minimumPrice
                            ? AppColors.greyButton
                            : AppColors.greyTransparent,
                    child: Icon(
                      Icons.remove,
                      color: AppColors.blackDark,
                      size: 24.sp,
                    ),
                  ),
                ),
                SizedBox(width: 24.w),
                // Large price display
                Expanded(
                  child: Center(
                    child: CustomText(
                      text:
                          '${_currentBidPrice.toStringAsFixed(0).replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]} ')} ₽',
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.blackDark,
                    ),
                  ),
                ),
                SizedBox(width: 24.w),
                // Plus button
                GestureDetector(
                  onTap: _increasePrice,
                  child: CircleAvatar(
                    radius: 24.r,
                    backgroundColor: AppColors.greyButton,
                    child: Icon(
                      Icons.add,
                      color: AppColors.blackDark,
                      size: 24.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
          8.ph,
          // Step indicator
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: CustomText(
              text:
                  'Шаг: ${widget.step.toStringAsFixed(0).replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]} ')} ₽',
              fontSize: 10.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.grey,
            ),
          ),
          SizedBox(height: 32.h),
          // Apply button (light blue)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: CustomButton(
              title: 'Применить',
              onPressed:
                  _currentBidPrice >= widget.minimumPrice ? _applyBid : null,
              color: AppColors.primaryColor,
              textColor: Colors.white,
              radius: 10,
              height: 54,
              fontWeight: FontWeight.w800,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 24.h),
        ],
      ),
    );
  }
}
