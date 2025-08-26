part of 'customs.dart';

class CustomSearchField extends StatelessWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final Function(String)? onChanged;
  final VoidCallback? onTap;
  final VoidCallback? onEqualizerTap;
  final bool readOnly;
  final double? margin;
  final Color? color;
  final bool showEqualizerIcon;

  const CustomSearchField({
    super.key,
    this.controller,
    this.focusNode,
    this.onChanged,
    this.margin,
    this.color,
    this.onTap,
    this.onEqualizerTap,
    this.readOnly = false,
    this.showEqualizerIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      margin: EdgeInsets.symmetric(horizontal: margin ?? 16),
      decoration: BoxDecoration(
        color: color ,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          SvgPicture.asset(Assets.assetsIconsSearch),
          const SizedBox(width: 8),
          Expanded(
            child: TextField(
              controller: controller,
              focusNode: focusNode,
              onChanged: onChanged,
              onTap: onTap,
              readOnly: readOnly,
              decoration: const InputDecoration(
                hintText: "Найти...",
                border: InputBorder.none,
                hintStyle: TextStyle(color: Colors.black45),
              ),
            ),
          ),
        
        ],
      ),
    );
  }
}
