part of '../search.dart';

class ReusableCategoryWidget extends StatelessWidget {
  final List<CategoryData> categories;
  final List<int> selectedIndices;
  final void Function(int index, String key) onTap;

  const ReusableCategoryWidget({
    super.key,
    required this.categories,
    required this.selectedIndices,
    required this.onTap,
  });

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
    final itemCount = categories.length;
    if (itemCount == 0) {
      return const SizedBox.shrink();
    }

    return SizedBox(
      height: 150,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(itemCount, (index) {
            final category = categories[index];
            final isSelected = selectedIndices.contains(index);
            final title = category.name?.trim() ?? '';
            final imageUrl = category.icon ?? '';
            final views = category.views;

            return GestureDetector(
              onTap: () => onTap(index, title.isEmpty ? '' : title),
              child: Container(
                margin: EdgeInsets.only(left: index == 0 ? 16 : 12),
                width: 120,
                height: 141,
                decoration: BoxDecoration(
                  color: isSelected ? AppColors.primaryColor : null,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(2, 2),
                    ),
                  ],
                  border: isSelected
                      ? Border.all(width: 0.1, color: Colors.transparent)
                      : Border.all(color: AppColors.gray, width: 2),
                ),
                child: Padding(
                  padding:
                      isSelected ? const EdgeInsets.all(2) : EdgeInsets.zero,
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.gray,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4),
                          child: Center(
                            child: Text(
                              title,
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        if ((views ?? '').isNotEmpty)
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(40),
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
                                  const SizedBox(width: 8),
                                  Text(
                                    _formatViews(views),
                                    style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  SvgPicture.asset(
                                    Assets.assetsIconsEye,
                                    width: 14,
                                    height: 14,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        Expanded(
                          child: imageUrl.isEmpty
                              ? const Icon(
                                  Icons.image_not_supported,
                                  size: 30,
                                  color: Colors.grey,
                                )
                              : ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: CustomImage(
                                    imageSource: imageUrl,
                                    width: double.infinity,
                                    height: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
