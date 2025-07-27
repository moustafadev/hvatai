part of 'customs.dart';

class CustomDialog extends StatelessWidget {
  final String title;
  final String content;
  final String cancelText;
  final String confirmText;
  final VoidCallback? onCancel;
  final VoidCallback? onConfirm;
  final bool isDestructive;
  CustomDialog({
    super.key,
    required this.title,
    required this.content,
    String? cancelText,
    String? confirmText,
    this.onCancel,
    this.onConfirm,
    this.isDestructive = false,
  })  : cancelText = cancelText ?? 'cancel'.tr(),
        confirmText = confirmText ?? 'ok'.tr();

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoAlertDialog(
        title: CustomText(
          text: title,
          fontSize: 17,
          fontWeight: FontWeight.w600,
        ),
        content: Padding(
          padding: EdgeInsets.only(top: 8),
          child: CustomText(
            text: content,
            fontSize: 13,
            height: 1.4,
          ),
        ),
        actions: [
          CupertinoDialogAction(
            onPressed: onCancel ?? () => Navigator.of(context).pop(),
            child: CustomText(
              text: cancelText,
              fontSize: 17,
              color: CupertinoColors.systemBlue,
            ),
          ),
          CupertinoDialogAction(
            onPressed: onConfirm ?? () => context.pop(),
            isDestructiveAction: isDestructive,
            child: CustomText(
              text: confirmText,
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      );
    } else {
      return AlertDialog(
        backgroundColor: Colors.grey[800],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        content: Text(
          content,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white70,
            height: 1.4,
          ),
        ),
        actions: [
          TextButton(
            onPressed: onCancel ?? () => context.pop(),
            child: Text(
              cancelText.toUpperCase(),
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.white70,
                letterSpacing: 0.5,
              ),
            ),
          ),
          TextButton(
            onPressed: onConfirm ?? () => context.pop(),
            child: Text(
              confirmText.toUpperCase(),
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: isDestructive ? Colors.red[400] : Colors.blue[400],
                letterSpacing: 0.5,
              ),
            ),
          ),
        ],
      );
    }
  }

  static void show(
    BuildContext context, {
    required String title,
    required String content,
    String? cancelText,
    String? confirmText,
    VoidCallback? onCancel,
    VoidCallback? onConfirm,
    bool isDestructive = false,
  }) {
    final String cancel = cancelText ?? 'cancel'.tr();
    final String confirm = confirmText ?? 'ok'.tr();

    if (Platform.isIOS) {
      showCupertinoDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => CustomDialog(
          title: title,
          content: content,
          cancelText: cancel,
          confirmText: confirm,
          onCancel: onCancel,
          onConfirm: onConfirm,
          isDestructive: isDestructive,
        ),
      );
    } else {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => CustomDialog(
          title: title,
          content: content,
          cancelText: cancel,
          confirmText: confirm,
          onCancel: onCancel,
          onConfirm: onConfirm,
          isDestructive: isDestructive,
        ),
      );
    }
  }
}
