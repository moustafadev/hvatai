part of 'customs.dart';


void showFloatingMessageError(String message) {
  final context = navigatorKey.currentContext;
  if (context != null) {
    print(message);
    if (message.contains('-')) {
      List<String> messages = message.split('-');
      showMultipleMessages(messages, isError: true);
    } else {
      floatingSnackBar(
        message: message,
        context: context,
        textColor: Colors.black,
        textStyle: const TextStyle(color: AppColors.eerieBlack),
        duration: const Duration(milliseconds: 4000),
        backgroundColor: AppColors.raspberryRed,
      );
    }
  }
}

void showMultipleMessages(List<String> messages, {bool isError = true}) async {
  for (String message in messages) {
    if (isError) {
      showFloatingMessageError(message);
    } else {
      showFloatingMessageSuccess(message);
    }
    // Wait for the current message to disappear before showing the next one
    await Future.delayed(const Duration(milliseconds: 2000));
  }
}

void showFloatingMessageSuccess(String message) {
  final context = navigatorKey.currentContext;
  if (context != null) {
    floatingSnackBar(
      message: message,
      context: context,
      textColor: Colors.black,
      textStyle: const TextStyle(
          color: AppColors.eerieBlack, fontWeight: FontWeight.w700),
      duration: const Duration(milliseconds: 4000),
      backgroundColor: AppColors.primary,
    );
  }
}

void floatingSnackBar({
  required String message,
  required BuildContext context,
  Duration? duration,
  TextStyle? textStyle,
  Color? textColor,
  Color? backgroundColor,
}) {
  WidgetsBinding.instance.addPostFrameCallback((_) {
    final overlay = navigatorKey.currentState?.overlay;

    if (overlay == null) {
      debugPrint('❌ No overlay found from rootNavigatorKey');
      return;
    }

    final overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        top: MediaQueryData.fromView(WidgetsBinding.instance.window)
                .padding
                .top +
            50,
        left: 20,
        right: 20,
        child: Material(
          color: Colors.transparent,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: backgroundColor ?? Colors.black.withAlpha(200),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.15),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Text(
              message,
              style: textStyle ??
                  TextStyle(
                    color: textColor ?? Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
        ),
      ),
    );

    overlay.insert(overlayEntry);
    Future.delayed(duration ?? const Duration(milliseconds: 4000), () {
      overlayEntry.remove();
    });
  });
}
