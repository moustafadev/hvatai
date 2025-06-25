part of 'customs.dart';

class CustomBackgroundScaffold extends StatelessWidget {
  final Widget child;
  const CustomBackgroundScaffold({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      image: DecorationImage(image: AssetImage(Assets.assetsImagesBackgroundScaffold),fit: BoxFit.fill),
      child: child,
    );
  }
}
