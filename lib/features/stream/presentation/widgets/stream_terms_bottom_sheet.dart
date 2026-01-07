part of '../stream.dart';

class StreamTermsBottomSheet extends StatelessWidget {
  final bool showCheckboxes;
  final VoidCallback? onButtonTap;

  const StreamTermsBottomSheet({
    super.key,
    this.showCheckboxes = false,
    this.onButtonTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Handle bar
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 8.h, bottom: 12.h),
                width: 40.w,
                height: 4.h,
                decoration: BoxDecoration(
                  color: AppColors.greyButton,
                  borderRadius: BorderRadius.circular(100.r),
                ),
              ),
            ),
            // Title
            CustomText(
              text: 'Добро пожаловать на первый стрим! ',
              fontSize: 18.sp,
              fontWeight: FontWeight.w800,
              color: AppColors.blackDark,
            ),

            4.ph,
            // Subtitle
            CustomText(
              text:
                  'Прежде, чем начать, ознакомьтесь с пользовательским соглашением',
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.blackDark,
              height: 1.4,
            ),
            16.ph,
            // Terms list
            TermItemWidget(
              text: 'Ставки обязательны к исполнению и не могут быть отменены',
            ),
            12.ph,
            TermItemWidget(
              text:
                  'Всегда используйте действующий способ оплаты, чтобы поддерживать рейтинг',
            ),
            12.ph,
            TermItemWidget(
              text:
                  'Хватай! обеспечивает защиту, если ваша покупка пройдет не так, как ожидалось',
            ),
            12.ph,
            TermItemWidget(
              text: 'Вы соглашаетесь с правилами и условиями нашего сообщества',
              highlightWords: ['правилами', 'условиями'],
            ),
            24.ph,
            // Accept button
            CustomButton(
              title: 'Принимаю условия',
              onPressed: onButtonTap,
              color: AppColors.primaryColor,
              textColor: AppColors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.w800,
            ),
            32.ph,
          ],
        ),
      ),
    );
  }
}

class TermItemWidget extends StatelessWidget {
  final String text;
  final List<String>? highlightWords;

  const TermItemWidget({
    super.key,
    required this.text,
    this.highlightWords,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          Assets.assetsImagesCheckCorrect,
          fit: BoxFit.contain,
          width: 48.w,
          height: 48.h,
        ),
        12.pw,
        Expanded(
          child: HighlightedTextWidget(
            text: text,
            highlightWords: highlightWords ?? [],
          ),
        ),
      ],
    );
  }
}

class HighlightedTextWidget extends StatelessWidget {
  final String text;
  final List<String> highlightWords;

  const HighlightedTextWidget({
    super.key,
    required this.text,
    required this.highlightWords,
  });

  @override
  Widget build(BuildContext context) {
    if (highlightWords.isEmpty) {
      return CustomText(
        text: text,
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        color: AppColors.blackDark,
        height: 1.4,
      );
    }

    final parts = <TextSpan>[];
    var remainingText = text;
    var startIndex = 0;

    for (final word in highlightWords) {
      final index = remainingText.indexOf(word, startIndex);
      if (index != -1) {
        // Add text before highlight
        if (index > startIndex) {
          parts.add(TextSpan(
            text: remainingText.substring(startIndex, index),
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.blackDark,
              height: 1.4,
            ),
          ));
        }
        // Add highlighted text
        parts.add(TextSpan(
          text: word,
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.primaryPink,
            height: 1.4,
          ),
        ));
        startIndex = index + word.length;
      }
    }
    // Add remaining text
    if (startIndex < remainingText.length) {
      parts.add(TextSpan(
        text: remainingText.substring(startIndex),
        style: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.blackDark,
          height: 1.4,
        ),
      ));
    }

    return RichText(
      text: TextSpan(children: parts),
    );
  }
}
