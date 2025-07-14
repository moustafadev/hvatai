part of '../auth.dart';

class InterestsDetailScreen extends StatelessWidget {
  final UserRegistrationData userData;

  const InterestsDetailScreen({super.key, required this.userData});

  static const Map<String, List<String>> detailedInterestOptions = {
    'shoes': ['sneakers', 'trainers', 'boots', 'sandals'],
    'electronics': ['smartphones', 'headphones', 'computers'],
    'beauty': ['skincare', 'makeup', 'fragrances'],
  };

  String getBaseCategoryKey(String category) {
    switch (category.toLowerCase()) {
      case 'обувь':
      case 'shoes':
        return 'shoes';
      case 'электроника':
      case 'electronics':
        return 'electronics';
      case 'красота':
      case 'beauty':
        return 'beauty';
      default:
        return category;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          locator<InterestsDetailCubit>()..init(userData.interests ?? []),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios,
                color: AppColors.blackColorIcon),
            onPressed: () => GoRouter.of(context).pop(),
          ),
        ),
        body: SafeArea(
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: BlocBuilder<InterestsDetailCubit, InterestsDetailState>(
              builder: (context, state) {
                final cubit = context.read<InterestsDetailCubit>();

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'tellMore'.tr(),
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(height: 8.h),
                    CustomText(
                      text: 'chooseInterests'.tr(),
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 20.h),
                    Expanded(
                      child: ListView(
                        children: state.generalInterests.map((category) {
                          final base = getBaseCategoryKey(category);
                          final options = detailedInterestOptions[base];
                          if (options == null) return const SizedBox.shrink();

                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                text: category,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                              ),
                              SizedBox(height: 10.h),
                              Wrap(
                                spacing: 8.w,
                                runSpacing: 8.h,
                                children: options.map((item) {
                                  final isSelected =
                                      state.selectedDetails.contains(item);
                                  return GestureDetector(
                                    onTap: () => cubit.toggleDetail(item),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16.w, vertical: 10.h),
                                      decoration: BoxDecoration(
                                        color: AppColors.gray,
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                        border: isSelected
                                            ? Border.all(
                                                color: AppColors.primaryColor,
                                                width: 2)
                                            : Border.all(
                                                color: Colors.transparent),
                                      ),
                                      child: Text(
                                        item,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  );
                                }).toList(),
                              ),
                              SizedBox(height: 20.h),
                            ],
                          );
                        }).toList(),
                      ),
                    ),
                    CustomGradientButton(
                      text: state.isLoading ? "Updating..." : "Continue",
                      isDisabled: state.selectedDetails.isNotEmpty,
                      onPressed: (state.isLoading ||
                              state.selectedDetails.isEmpty)
                          ? null
                          : () {
                              cubit.submit(
                                onSuccess: (detailed) {
                                  context.go(AppRoutes.notification);
                                },
                                onError: (msg) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text(msg)),
                                  );
                                },
                              );
                            },
                    ),
                    SizedBox(height: 20.h),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
