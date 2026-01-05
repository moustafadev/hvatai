part of '../stream.dart';

class LastUsedCategoriesWidget extends StatelessWidget {
  const LastUsedCategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductFormCubit, ProductFormState>(
      builder: (context, state) {
        final cubit = context.read<ProductFormCubit>();
        final lastUsedCategories = state.lastUsedCategories;

        if (lastUsedCategories.isEmpty) {
          return const SizedBox.shrink();
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: 'Недавно использованные',
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.blackDark,
            ),
            SizedBox(height: 12.h),
            SizedBox(
              height: 100.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: lastUsedCategories.length,
                separatorBuilder: (context, index) => SizedBox(width: 12.w),
                itemBuilder: (context, index) {
                  final category = lastUsedCategories[index];
                  final isSelected = state.product.categoryId == category.id;
                  return GestureDetector(
                    onTap: () {
                      if (category.id != null) {
                        cubit.setCategory(category.id!, category.name);
                      }
                    },
                    child: Container(
                      width: 100.w,
                      decoration: BoxDecoration(
                        color: AppColors.greyButton,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: isSelected
                              ? AppColors.primaryColor
                              : Colors.transparent,
                          width: 2,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(11),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0, vertical: 6),
                              child: CustomText(
                                text: category.name ?? '',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w700,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Expanded(
                              child: CustomImage(
                                imageSource: _getIconUrl(category.icon),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }

  String _getIconUrl(String? icon) {
    if (icon == null || icon.isEmpty) return '';
    if (icon.startsWith('http://') || icon.startsWith('https://')) {
      return icon;
    }
    // Add storage prefix if not already present
    if (!icon.startsWith('storage/')) {
      return 'storage/$icon';
    }
    return icon;
  }
}
