part of '../auth.dart';

class CategoryOptionsSection extends StatelessWidget {
  final String category;
  final List<CategoryChild> options;
  final Set<int> selectedDetails;
  final void Function(int) onItemTap;

  const CategoryOptionsSection({
    super.key,
    required this.category,
    required this.options,
    required this.selectedDetails,
    required this.onItemTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: category,
          fontSize: 20.sp,
          fontWeight: FontWeight.w800,
        ),
        10.ph,
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: options.map((item) {
            final isSelected = selectedDetails.contains(item.id);

            return GestureDetector(
              onTap: () => onItemTap(item.id!),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                decoration: BoxDecoration(
                  color: AppColors.gray,
                  borderRadius: BorderRadius.circular(10),
                  border: isSelected
                      ? Border.all(color: AppColors.primaryColor, width: 1)
                      : Border.all(color: Colors.transparent),
                ),
                child: CustomText(
                  text: item.name ?? '',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            );
          }).toList(),
        ),
        20.ph,
      ],
    );
  }
}
