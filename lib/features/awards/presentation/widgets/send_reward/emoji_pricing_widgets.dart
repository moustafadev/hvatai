part of '../../awards.dart';

class EmojiPricingRow extends StatelessWidget {
  final List<EmojiPricingItem> items;
  final double spacing;
  final int? selectedIndex;
  final Function(int index) onSelect;

  const EmojiPricingRow({
    super.key,
    required this.items,
    required this.selectedIndex,
    required this.onSelect,
    this.spacing = 14.0,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: spacing,
      runSpacing: spacing,
      children: List.generate(
        items.length,
        (i) => SizedBox(
          key: ValueKey('emoji_$i'),
          width: MediaQuery.of(context).size.width / 3 - spacing - 10,
          child: EmojiPricingCard(
            emoji: items[i].emoji,
            price: items[i].price,
            isSelected: selectedIndex == i,
            onTap: () => onSelect(i),
          ),
        ),
      ),
    );
  }
}

class EmojiPricingCard extends StatelessWidget {
  final String emoji;
  final String price;
  final VoidCallback? onTap;
  final bool isSelected;

  const EmojiPricingCard({
    super.key,
    required this.emoji,
    required this.price,
    this.onTap,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 9),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10.r),
          border: isSelected
              ? Border.all(color: AppColors.primaryColor, width: 2)
              : Border.all(color: AppColors.transparent, width: 2),
        ),
        child: Column(
          children: [
            CustomText(
              text: emoji,
              fontSize: 40.sp,
              color: AppColors.graniteGray,
              fontWeight: FontWeight.w500,
            ),
            CustomText(
              text: price,
              fontSize: 14.sp,
              color: AppColors.blackDark,
              fontWeight: FontWeight.w800,
            ),
          ],
        ),
      ),
    );
  }
}

class EmojiPricingItem {
  final String emoji;
  final String price;

  EmojiPricingItem({
    required this.emoji,
    required this.price,
  });
}
