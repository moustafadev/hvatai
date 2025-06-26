import 'package:flutter/material.dart';
import 'package:hvatai/core/customs/customs.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [CustomText(text: "home")],
      ),
    );
  }
}
