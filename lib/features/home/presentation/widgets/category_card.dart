part of '../home.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.category,
    required this.isSelected,
    required this.onTap,
  });

  final CategoryData category;
  final bool isSelected;
  final VoidCallback onTap;

  String _formatViews(String? raw) {
    if (raw == null || raw.isEmpty) return '';
    final value = int.tryParse(raw) ?? 0;
    if (value >= 1000) {
      final formatted = value % 1000 == 0
          ? (value / 1000).toStringAsFixed(0)
          : (value / 1000).toStringAsFixed(1);
      return '${formatted.replaceAll('.', ',')}K';
    }
    return value.toString();
  }

  @override
  Widget build(BuildContext context) {
    final imageUrl = category.icon ?? '';
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.greyButton,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSelected ? AppColors.primaryColor : AppColors.greyBorder,
            width: 2,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 4.0, vertical: 6),
                child: CustomText(
                  text: category.name ?? '',
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
              ),
              if (category.views?.isNotEmpty == true && category.views != "0")
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 8,
                        height: 8,
                        decoration: const BoxDecoration(
                          color: AppColors.primaryPink,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(width: 6),
                      CustomText(
                        text: _formatViews(category.views),
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                      const SizedBox(width: 6),
                      SvgPicture.asset(
                        Assets.assetsIconsEye,
                        width: 14,
                        height: 14,
                      ),
                    ],
                  ),
                ),
              Expanded(
                child: CustomImage(
                  imageSource: imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
