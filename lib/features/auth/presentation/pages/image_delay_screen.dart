part of '../auth.dart';

class ImageDelayScreen extends StatefulWidget {
  const ImageDelayScreen({super.key});

  @override
  State<ImageDelayScreen> createState() => _ImageDelayScreenState();
}

class _ImageDelayScreenState extends State<ImageDelayScreen> {
  @override
  void initState() {
    super.initState();
    // Wait 5 seconds then navigate
    Timer(const Duration(seconds: 4), () {
      context.go(AppRoutes.bottomNavBar);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Image.asset(
          Assets.assetsImagesOnboard,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
