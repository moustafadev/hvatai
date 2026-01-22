part of '../../cart.dart';

class CartTipsSection extends StatelessWidget {
  const CartTipsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        final selectedTip = state.selectedTipAmount;
        final cubit = context.read<CartCubit>();

        return Container(
          width: double.infinity,
          padding: EdgeInsets.all(12.r),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(0xFFFCF1CD),
                Color(0xFFFDE2D8),
                Color(0xFFC5EEFD),
                Color(0xFF94FBFD),
              ],
              stops: [0.0, 0.3942, 0.6635, 1.0],
            ),
            borderRadius: BorderRadius.circular(10.r),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF414141).withAlpha((255 * 0.08).round()),
                offset: const Offset(0, 10),
                blurRadius: 24,
                spreadRadius: 0,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomText(
                text: '🤑 Оставить чаевые?',
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
              ),
              12.ph,
              Wrap(
                spacing: 8.w,
                runSpacing: 8.h,
                children: [
                  _TipOption(
                    label: 'Без чаевых',
                    amount: 0,
                    isSelected: selectedTip == 0,
                    onTap: () => cubit.setTipAmount(0),
                  ),
                  _TipOption(
                    label: '49 ₽',
                    amount: 49,
                    isSelected: selectedTip == 49,
                    onTap: () => cubit.setTipAmount(49),
                  ),
                  _TipOption(
                    label: '99 ₽',
                    amount: 99,
                    isSelected: selectedTip == 99,
                    onTap: () => cubit.setTipAmount(99),
                  ),
                  _TipOption(
                    label: '199 ₽',
                    amount: 199,
                    isSelected: selectedTip == 199,
                    onTap: () => cubit.setTipAmount(199),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

class _TipOption extends StatelessWidget {
  const _TipOption({
    required this.label,
    required this.amount,
    required this.isSelected,
    required this.onTap,
  });

  final String label;
  final int amount;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10.r),
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.greyTransparent,
            width: 1,
          ),
          color: isSelected ? AppColors.background : Colors.transparent,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: CustomText(
          text: label,
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
