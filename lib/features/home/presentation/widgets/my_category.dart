part of '../home.dart';

class MyCategory extends StatelessWidget {
  const MyCategory({super.key});

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
    return BlocConsumer<CategoriesCubit, CategoriesState>(
      listener: (context, state) {
        if (state.error?.isNotEmpty == true) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.error!)),
          );
        }
      },
      builder: (context, state) {
        final interests = state.categories;

        if (interests == null || interests.data == null) {
          return SizedBox(
            height: 150,
            child: const Center(
              child: CircularProgressIndicator(color: Colors.grey),
            ),
          );
        }

        if (interests.data!.isEmpty) {
          return SizedBox(
            height: 100,
            child: Center(child: Text('noCategories')),
          );
        }

        return Column(
          children: [
            if (state.isLoading)
              const LinearProgressIndicator(color: Colors.blue),
            SizedBox(
              height: 150,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(interests.data!.length, (index) {
                    final category = interests.data![index];
                    final isSelected = state.selectedIndices.contains(index);
                    final String imageUrl = category.icon ?? '';

                    return GestureDetector(
                      // onTap: () =>
                      //     cubit.toggleInterest(index, category.id ?? 0),
                      child: Container(
                        margin: EdgeInsets.only(left: index == 0 ? 16 : 12),
                        width: 120,
                        height: 141,
                        decoration: BoxDecoration(
                          color: isSelected ? Colors.blue : null,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 4,
                              offset: const Offset(2, 2),
                            ),
                          ],
                          border: isSelected
                              ? Border.all(
                                  width: 0.1, color: Colors.transparent)
                              : Border.all(color: AppColors.gray, width: 2),
                        ),
                        child: Padding(
                          padding: isSelected
                              ? const EdgeInsets.all(1.5)
                              : EdgeInsets.zero,
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.gray,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: Center(
                                    child: Text(
                                      category.name ?? '',
                                      style: const TextStyle(
                                        fontSize: 12, // قيمة ثابتة
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                if (category.views?.isNotEmpty == true)
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                                            _formatViews(category.views),
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
                                          borderRadius:
                                              BorderRadius.circular(8),
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
            ),
          ],
        );
      },
    );
  }
}
