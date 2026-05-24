part of '../cart.dart';

void showSbpQrBottomSheet(
  BuildContext context,
  String qrCodeSvg,
  String? confirmationUrl, {
  String? orderUuid,
}) {
  showModalBottomSheet<bool>(
    context: context,
    isScrollControlled: true,
    isDismissible: true,
    enableDrag: true,
    backgroundColor: Colors.transparent,
    builder: (sheetContext) => SbpQrBottomSheet(
      qrCodeSvg: qrCodeSvg,
      confirmationUrl: confirmationUrl,
      orderUuid: orderUuid,
      parentContext: context,
    ),
  ).then((result) {
    if (result == true) return;
    if (!context.mounted) return;
    context.pop();
  });
}

class SbpQrBottomSheet extends StatefulWidget {
  final String qrCodeSvg;
  final String? confirmationUrl;
  final String? orderUuid;
  final BuildContext parentContext;

  const SbpQrBottomSheet({
    super.key,
    required this.qrCodeSvg,
    required this.confirmationUrl,
    this.orderUuid,
    required this.parentContext,
  });

  @override
  State<SbpQrBottomSheet> createState() => _SbpQrBottomSheetState();
}

class _SbpQrBottomSheetState extends State<SbpQrBottomSheet> {
  bool _isClosing = false;

  Future<void> _closeSheet({bool success = false}) async {
    if (_isClosing) return;
    _isClosing = true;
    if (!mounted) return;
    Navigator.of(widget.parentContext).pop(success);
  }

  Future<void> _openExternalLink() async {
    final url = widget.confirmationUrl;
    if (url == null || url.isEmpty) {
      debugPrint('[SbpQrBottomSheet] Confirmation URL is not available');
      return;
    }

    final uri = Uri.tryParse(url);
    if (uri == null) {
      debugPrint('[SbpQrBottomSheet] Invalid confirmation URL: $url');
      return;
    }

    final launched = await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    );

    if (!launched) {
      debugPrint('[SbpQrBottomSheet] Could not launch URL: $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.65,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 12, right: 12),
            child: Row(
              children: [
                const Spacer(),
                Container(
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                    color: AppColors.greyButton,
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: _isClosing ? null : () => _closeSheet(success: false),
                  child: _isClosing
                      ? const SizedBox(
                          height: 22,
                          width: 22,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : const Icon(Icons.close, color: AppColors.graniteGray),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.string(
                  widget.qrCodeSvg,
                  width: double.infinity,
                  height: 400,
                  fit: BoxFit.contain,
                ),
                Image.asset(
                  Assets.assetsIconsSbp,
                  width: 120,
                  height: 120,
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 50),
            child: CustomButton(
              title: 'Открыть в браузере',
              onPressed: _openExternalLink,
            ),
          ),
        ],
      ),
    );
  }
}
