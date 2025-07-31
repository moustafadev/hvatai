part of '../auth.dart';

class InterestsScreen extends StatelessWidget {
  const InterestsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<InterestsCubit>()..getCategories(),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios,
                color: AppColors.blackColorIcon),
            onPressed: () => context.pop(),
          ),
        ),
        body: SafeArea(
          bottom: false,
          child: BlocBuilder<InterestsCubit, InterestsState>(
            builder: (context, state) {
              final interests = state.categories;
              final cubit = context.read<InterestsCubit>();
              if (state.categories?.data == null) {
                return Center(
                    child: CircularProgressIndicator(
                  color: AppColors.primaryColor,
                ));
              }

              return Stack(
                children: [
                  SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        20.ph,
                        CustomText(
                          text: 'interestsTitle'.tr(),
                          fontSize: 28.sp,
                          fontWeight: FontWeight.w800,
                        ),
                        4.ph,
                        CustomText(
                          text: 'interestsSubtitle'.tr(),
                          fontSize: 16.sp,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                        ),
                        20.ph,
                        ResponsiveGridListBuilder(
                          minItemWidth: 1,
                          minItemsPerRow: 3,
                          maxItemsPerRow: 3,
                          horizontalGridSpacing: 12.h,
                          verticalGridSpacing: 12.h,
                          builder: (context, items) => Column(
                            children: items,
                          ),
                          gridItems:
                              List.generate(interests!.data!.length, (index) {
                            final category = interests.data![index];
                            final isSelected =
                                state.selectedIndices.contains(index);

                            return GestureDetector(
                              onTap: () =>
                                  cubit.toggleInterest(index, category.id ?? 0),
                              child: Container(
                                height: 120.h,
                                decoration: BoxDecoration(
                                  color: isSelected
                                      ? AppColors.primaryColor
                                      : null,
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 4,
                                      offset: Offset(2, 2),
                                    ),
                                  ],
                                  border: isSelected
                                      ? Border.all(
                                          width: 0.1, color: Colors.transparent)
                                      : Border.all(
                                          color: Colors.white, width: 2),
                                ),
                                child: Padding(
                                  padding: isSelected
                                      ? EdgeInsets.all(1.5.r)
                                      : EdgeInsets.zero,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: AppColors.white,
                                      borderRadius: BorderRadius.circular(8.r),
                                    ),
                                    child: Column(
                                      children: [
                                        Center(
                                          child: CustomText(
                                            text: category.name ?? '',
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black,
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8.r),
                                              image: category.image != null
                                                  ? DecorationImage(
                                                      image:
                                                          CachedNetworkImageProvider(
                                                              category.image!),
                                                      fit: BoxFit.cover,
                                                    )
                                                  : null,
                                            ),
                                            child: category.image == null
                                                ? Icon(
                                                    Icons.image_not_supported,
                                                    size: 30,
                                                    color: Colors.grey)
                                                : null,
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
                      ],
                    ),
                  ),
                  Positioned(
                    left: 16,
                    right: 16,
                    bottom: 20,
                    child: CustomGradientButton(
                      isLoading: state.isLoading,
                      isDisabled: !(state.selectedCategoryIds.isNotEmpty),
                      text: "continue".tr(),
                      onPressed: () {
                        cubit.addFavCategories(context);
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
