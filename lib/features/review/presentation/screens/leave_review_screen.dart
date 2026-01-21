part of '../review.dart';

class LeaveReviewScreen extends StatelessWidget {
  const LeaveReviewScreen({
    super.key,
    required this.userId,
  });

  final int userId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ReviewCubit>(
      create: (_) => locator<ReviewCubit>(),
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: BlocConsumer<ReviewCubit, ReviewState>(
          listener: (context, state) {
            if (state.errorMessage.isNotEmpty && !state.isLoading) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: CustomText(text: state.errorMessage),
                  backgroundColor: AppColors.red,
                ),
              );
            }
          },
          builder: (context, state) {
            return SafeArea(
              bottom: false,
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            context.pop();
                          },
                          child: Icon(Icons.arrow_back_ios),
                        ),
                        12.pw,
                        CustomText(
                          text: 'leaveReview'.tr(),
                          fontWeight: FontWeight.w700,
                          fontSize: 18.sp,
                        ),
                      ],
                    ),
                    16.ph,
                    // Rating Section
                    CustomText(
                      text: 'rateFrom0To5'.tr(),
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w800,
                    ),
                    12.ph,
                    StarRatingWidget(
                      rating: state.rating,
                      onRatingChanged: (rating) {
                        context.read<ReviewCubit>().setRating(rating);
                      },
                    ),
                    24.ph,
                    // Photo Section
                    ReviewPhotoWidget(
                      title: 'photo'.tr(),
                      initialImages: state.images,
                      updateImage: (images) {
                        context.read<ReviewCubit>().setImages(images);
                      },
                    ),
                    24.ph,
                    // Comment Section
                    CustomText(
                      text: 'comment'.tr(),
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w800,
                    ),
                    12.ph,
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: TextField(
                        maxLines: 8,
                        maxLength: 2000,
                        decoration: InputDecoration(
                          hintText: 'upTo2000Characters'.tr(),
                          hintStyle: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.graniteGray,
                            fontFamily: 'Manrope',
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(12.r),
                          counterText: '',
                        ),
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.blackDark,
                          fontFamily: 'Manrope',
                        ),
                        onChanged: (value) {
                          context.read<ReviewCubit>().setComment(value);
                        },
                      ),
                    ),

                    12.ph,
                    // Rules text
                    Center(
                      child: RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'reviewRulesPart1'.tr(),
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: AppColors.text,
                                fontFamily: 'Manrope',
                              ),
                            ),
                            TextSpan(
                              text: 'reviewRulesPart2'.tr(),
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: AppColors.primaryPink,
                                fontFamily: 'Manrope',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    24.ph,
                    // Submit Button
                    CustomGradientButton(
                      text: 'send'.tr(),
                      height: 54,
                      isDisabled: state.rating == 0 ||
                          state.comment.trim().isEmpty ||
                          state.isLoading,
                      onPressed: () {
                        context.read<ReviewCubit>().submitReview(userId);
                      },
                    ),
                    24.ph,
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
