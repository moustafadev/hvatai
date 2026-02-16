import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/core/datasources/local/app_local.dart';
import 'package:hvatai/locator.dart';
import 'package:hvatai/routes/app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      checkLogin();
    });
  }

  Future<void> checkLogin() async {
    final appLocal = locator<AppLocal>();

    final token = appLocal.getToken();
    final isSetup = appLocal.getIsSetup();
    if (token == null || token.isEmpty) {
      context.go(AppRoutes.socialLogin);
      return;
    }

    if (isSetup == false) {
      await appLocal.removeToken();
      // ignore: use_build_context_synchronously
      context.go(AppRoutes.socialLogin);
    } else {
      context.go(AppRoutes.home);
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
