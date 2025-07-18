part of 'customs.dart';

class CustomVerticalDivider extends StatelessWidget {
  final double thickness;
  final double width;
  final Color color;
  final double? height;

  const CustomVerticalDivider({
    Key? key,
    this.thickness = 1,
    this.width = 20,
    this.color = Colors.pink, // غير اللون الافتراضي حسب حاجتك
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: VerticalDivider(
        color: color,
        thickness: thickness,
        width: width,
      ),
    );
  }
}
