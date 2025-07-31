part of 'customs.dart';

class CustomPhotoOptionsDialog extends StatelessWidget {
  const CustomPhotoOptionsDialog(
      {super.key, required this.onTakePhoto, required this.onChoosePhoto});
  final VoidCallback onTakePhoto;
  final VoidCallback onChoosePhoto;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // First container with photo options
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[400],
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Column(
              children: [
                _buildOption(
                  text: 'takePhoto'.tr(),
                  textColor: Colors.blue,
                  onTap: onTakePhoto,
                ),
                const Divider(height: 1, color: Colors.grey),
                _buildOption(
                  text: 'selectPhoto'.tr(),
                  textColor: Colors.blue,
                  onTap: onChoosePhoto,
                ),
                const Divider(height: 1, color: Colors.grey),
                _buildOption(
                  text: 'delete'.tr(),
                  textColor: AppColors.red,
                  onTap: () {
                    context.pop();
                    // Handle delete action
                    print('Delete selected');
                  },
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
            child: _buildOption(
              text: 'cancel'.tr(),
              textColor: Colors.blue,
              onTap: () {
                context.pop();
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOption({
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
}
