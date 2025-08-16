part of 'customs.dart';

Future<void> showDialogCupertino(
  BuildContext context,
  String message,
  String cancelText,
  String confirmText,
  VoidCallback onConfirm,
) async {
  await showDialog(
    context: context,
    builder: (_) => Dialog(
      backgroundColor: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Main message container
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[400],
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Column(
              children: [
                // Message text
                Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: CustomText(
                    text: message,
                    textAlign: TextAlign.center,
                    color: Colors.black87,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Divider(height: 1, color: Colors.grey),
                // Confirm button
                _buildDialogOption(
                  text: confirmText,
                  textColor: Colors.blue,
                  onTap: onConfirm,
                ),
              ],
            ),
          ),
          8.ph,
          // Cancel button
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: _buildDialogOption(
              text: cancelText,
              textColor: Colors.blue,
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _buildDialogOption({
  required String text,
  required Color textColor,
  required VoidCallback onTap,
}) {
  return InkWell(
    onTap: onTap,
    borderRadius: BorderRadius.circular(12),
    child: Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      child: CustomText(
        text: text,
        textAlign: TextAlign.center,
        color: textColor,
        fontSize: 18.sp,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}
