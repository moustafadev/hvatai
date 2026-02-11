part of 'customs.dart';

/// Shows a reusable confirmation dialog with customizable title, content, and action button text
/// Uses iOS-style dialog on iOS, Material dialog on other platforms
///
/// Returns `true` if the user confirms, `false` if canceled
///
/// Example usage:
/// ```dart
/// final confirmed = await showConfirmDialog(
///   context,
///   title: 'Отменить заказ',
///   content: 'Вы уверены, что хотите отменить этот заказ?',
///   confirmText: 'Отменить',
/// );
/// ```
Future<bool> showConfirmDialog(
  BuildContext context, {
  required String title,
  required String content,
  String cancelText = 'Отмена',
  String confirmText = 'Удалить',
}) async {
  final isIOS = Theme.of(context).platform == TargetPlatform.iOS;

  if (isIOS) {
    return await showCupertinoDialog<bool>(
          context: context,
          builder: (ctx) => CupertinoAlertDialog(
            title: Text(title),
            content: Text(content),
            actions: [
              CupertinoDialogAction(
                onPressed: () => Navigator.pop(ctx, false),
                child: Text(cancelText),
              ),
              CupertinoDialogAction(
                isDestructiveAction: true,
                onPressed: () => Navigator.pop(ctx, true),
                child: Text(confirmText),
              ),
            ],
          ),
        ) ??
        false;
  } else {
    return await showDialog<bool>(
          context: context,
          builder: (ctx) => AlertDialog(
            title: Text(title),
            content: Text(content),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(ctx, false),
                child: Text(cancelText),
              ),
              TextButton(
                onPressed: () => Navigator.pop(ctx, true),
                child: Text(confirmText),
              ),
            ],
          ),
        ) ??
        false;
  }
}
