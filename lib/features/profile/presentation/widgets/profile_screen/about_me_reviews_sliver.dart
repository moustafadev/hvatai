part of '../../profile.dart';

class AboutMeReviewsSliver extends StatelessWidget {
  const AboutMeReviewsSliver({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReviewsCubit, ReviewsState>(
      builder: (context, state) {
        if (state.isLoading) {
          return SliverFillRemaining(
            hasScrollBody: false,
            child: const Center(
              child: CustomCircularProgressIndicator(),
            ),
          );
        }

        if (state.errorMessage.isNotEmpty) {
          return SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: CustomText(
                text: state.errorMessage,
                fontWeight: FontWeight.w600,
                color: AppColors.blackTransparent40,
              ),
            ),
          );
        }

        if (state.userRatings == null) {
          return SliverFillRemaining(
            hasScrollBody: false,
            child: const Center(
              child: CustomCircularProgressIndicator(),
            ),
          );
        }

        return ReviewsListWidget(
          userPersonalRatings: state.userRatings!.userPersonalRatings,
        );
      },
    );
  }
}

class _ReplyBottomSheet extends StatefulWidget {
  final int ratingId;
  final int userId;

  const _ReplyBottomSheet({
    required this.ratingId,
    required this.userId,
  });

  @override
  State<_ReplyBottomSheet> createState() => _ReplyBottomSheetState();
}

class _ReplyBottomSheetState extends State<_ReplyBottomSheet> {
  final TextEditingController _commentController = TextEditingController();

  @override
  void dispose() {
    _commentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ReviewsCubit, ReviewsState>(
      listenWhen: (previous, current) {
        // Listen when isReplying changes from true to false (reply completed)
        return previous.isReplying &&
            !current.isReplying &&
            current.errorMessage.isEmpty;
      },
      listener: (context, state) {
        // Close bottom sheet when reply is successfully completed
        Navigator.pop(context);
      },
      child: BlocBuilder<ReviewsCubit, ReviewsState>(
        builder: (context, state) {
          return Container(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
              left: 16,
              right: 16,
              top: 16,
            ),
            decoration: BoxDecoration(
              color: AppColors.background,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: 'replyToReview'.tr(),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w800,
                ),
                16.ph,
                CustomTextField(
                  hintText: 'enterYourAnswer'.tr(),
                  controller: _commentController,
                  maxLines: 5,
                  fillColor: AppColors.white,
                  isRequired: false,
                ),
                24.ph,
                CustomGradientButton(
                  text: 'send'.tr(),
                  onPressed:
                      state.isReplying || _commentController.text.trim().isEmpty
                          ? null
                          : () => _handleSubmit(context),
                  width: double.infinity,
                  height: 52,
                  borderRadius: 10,
                  isLoading: state.isReplying,
                ),
                16.ph,
              ],
            ),
          );
        },
      ),
    );
  }

  void _handleSubmit(BuildContext context) {
    if (_commentController.text.trim().isEmpty) return;

    context.read<ReviewsCubit>().replyToRating(
          widget.ratingId,
          _commentController.text.trim(),
          widget.userId,
        );
  }
}
