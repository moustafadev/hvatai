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
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSelected ? AppColors.primaryColor : Colors.transparent,
            width: 2,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: const Offset(2, 2),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Stack(
            children: [
              Positioned.fill(
                child: CustomImage(
                  imageSource: imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: 6,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Column(
                    children: [
                      CustomText(
                        text: category.name ?? '',
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                      ),
                      if (category.views?.isNotEmpty == true &&
                          category.views != "0")
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 4),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.6),
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
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
