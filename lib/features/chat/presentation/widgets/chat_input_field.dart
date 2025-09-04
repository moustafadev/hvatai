part of '../chat.dart';

class ChatInputField extends StatefulWidget {
  final TextEditingController controller;
  final Function(String, List<String>) onSend;

  const ChatInputField({
    super.key,
    required this.controller,
    required this.onSend,
  });

  @override
  State<ChatInputField> createState() => _ChatInputFieldState();
}

class _ChatInputFieldState extends State<ChatInputField> {
  List<String> selectedImages = [];
  bool _canSend = false;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_recomputeCanSend);
    _recomputeCanSend();
  }

  @override
  void didUpdateWidget(covariant ChatInputField oldWidget) {
    super.didUpdateWidget(oldWidget);
    // If parent swaps controller, move the listener
    if (oldWidget.controller != widget.controller) {
      oldWidget.controller.removeListener(_recomputeCanSend);
      widget.controller.addListener(_recomputeCanSend);
      _recomputeCanSend();
    }
  }

  @override
  void dispose() {
    widget.controller.removeListener(_recomputeCanSend);
    super.dispose();
  }

  void _recomputeCanSend() {
    final hasText = widget.controller.text.trim().isNotEmpty;
    final next = hasText || selectedImages.isNotEmpty;
    if (next != _canSend) setState(() => _canSend = next);
  }

  Future<void> pickImages() async {
    final picker = ImagePicker();
    final picked = await picker.pickMultiImage();
    if (picked.isNotEmpty) {
      setState(() {
        selectedImages = picked.map((e) => e.path).toList();
        _recomputeCanSend();
      });
    }
  }

  void _removeImageAt(int i) {
    setState(() {
      selectedImages.removeAt(i);
      _recomputeCanSend();
    });
  }

  void _handleSend() {
    if (!_canSend) return; // guard
    final content = widget.controller.text.trim();
    widget.onSend(content, selectedImages);
    widget.controller.clear();
    setState(() {
      selectedImages.clear();
      _recomputeCanSend();
    });
  }

  @override
  Widget build(BuildContext context) {
    final sendIcon = _canSend
        ? Assets.assetsIconsEnabledSend
        : Assets.assetsIconsDisabledSend;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          if (selectedImages.isNotEmpty)
            SizedBox(
              height: 80,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: selectedImages.length,
                itemBuilder: (_, i) => Padding(
                  padding: const EdgeInsets.all(4),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.file(
                          File(selectedImages[i]),
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: GestureDetector(
                          onTap: () => _removeImageAt(i),
                          child: const CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.black54,
                            child: Icon(Icons.close,
                                size: 12, color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(32),
            ),
            child: Row(
              children: [
                GestureDetector(
                  onTap: pickImages,
                  child: SvgPicture.asset(Assets.assetsIconsAttach),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: TextFormField(
                    controller: widget.controller,
                    decoration: const InputDecoration(
                      disabledBorder: InputBorder.none,
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Color(0xffAFB3B6)),
                      hintText: 'Сообщение',
                    ),
                    // onChanged not required since we attached a listener in initState
                  ),
                ),
                // Send button with toggle
                InkWell(
                  onTap: _canSend ? _handleSend : null,
                  child: Opacity(
                    opacity: _canSend ? 1.0 : 0.6,
                    child: SvgPicture.asset(sendIcon),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
