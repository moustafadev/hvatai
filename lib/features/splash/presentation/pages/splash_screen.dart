import 'package:hvatai/core/shared/datasources/local/app_local.dart';
import 'package:hvatai/locator.dart';
import 'package:hvatai/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isLoading = false;
  @override
  void initState() {
    setState(() => isLoading = true);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      checkLogin();
    });
    setState(() => isLoading = false);
    super.initState();
  }

  checkLogin() {
    final appLocal = locator<AppLocal>();
    final token = appLocal.getToken();
    if (token.isNotEmpty) {
      context.go(AppRoutes.home);
    } else {
      context.go(AppRoutes.socialLogin);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: isLoading
            ? const CircularProgressIndicator()
            : const SizedBox.shrink(),
      ),
    );
  }
}
