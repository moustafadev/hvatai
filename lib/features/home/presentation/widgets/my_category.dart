part of '../home.dart';

class MyCategory extends StatelessWidget {
  const MyCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CategoryTabsCubit, CategoryTabsState>(
      listener: (context, state) {
        if (state.error?.isNotEmpty == true) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.error!)),
          );
        }
      },
      builder: (context, state) {
        final cubit = context.read<CategoryTabsCubit>();
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
                      onTap: () =>
                          cubit.toggleInterest(index, category.id ?? 0),
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 6),
                        width: 100,
                        height: 120,
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
                                      // استخدم Text بدلاً من CustomText مؤقتاً
                                      category.name ?? '',
                                      style: const TextStyle(
                                        // استخدم TextStyle مباشرة
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
