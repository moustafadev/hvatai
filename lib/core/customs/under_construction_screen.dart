part of 'customs.dart';

@RoutePage()
class UnderConstructionScreen extends StatelessWidget {
  const UnderConstructionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Under Construction'),
        backgroundColor: AppColors.hotPink,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Construction icon
              Icon(
                Icons.construction,
                size: 100,
                color: Colors.grey.shade400,
              ),
              const SizedBox(height: 20),
              // Title Text
              const Text(
                'This Feature is Under Construction!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              // Subtitle Text
              const Text(
                'We\'re working hard to bring you this feature soon.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
