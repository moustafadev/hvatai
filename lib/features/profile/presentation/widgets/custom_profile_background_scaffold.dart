part of '../profile.dart';
class CustomProfileBackgroundScaffold extends StatelessWidget {
  final Widget child;

  const CustomProfileBackgroundScaffold({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      image: DecorationImage(
          image: AssetImage(Assets.assetsImagesProfileScreenBackgroundImage), fit: BoxFit.fill),
      child: child,
    );
  }
}
