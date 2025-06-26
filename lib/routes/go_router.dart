import 'package:auto_route/auto_route.dart';
import 'package:hvatai/features/auth/data/models/user_registration_data.dart';
import 'package:hvatai/features/auth/presentation/auth.dart';
import 'package:hvatai/features/bottom_nav_bar/presentation/bottom_nav.dart';
import 'package:hvatai/features/splash/presentation/pages/splash_screen.dart';
import 'package:hvatai/routes/app_routes.dart';
import 'package:hvatai/routes/shell_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/routes/shell_route.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
final GoRouter router = GoRouter(
  // observers: [MyNavigatorObserver()],
  initialLocation: AppRoutes.home,
  navigatorKey: navigatorKey,
  routes: <RouteBase>[
    GoRoute(
      path: AppRoutes.splash,
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.onboarding, // Remove the leading '/'
      builder: (BuildContext context, GoRouterState state) {
        return const LoginScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.login, // Remove the leading '/'
      builder: (BuildContext context, GoRouterState state) {
        return const LoginScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.socialLogin, // Remove the leading '/'
      builder: (BuildContext context, GoRouterState state) {
        return const SocialsLoginScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.termAndConditions, // Remove the leading '/'
      builder: (BuildContext context, GoRouterState state) {
        return const TermsAndCondition();
      },
    ),
    GoRoute(
      path: AppRoutes.privacyPolicy, // Remove the leading '/'
      builder: (BuildContext context, GoRouterState state) {
        return const PrivacyPolicy();
      },
    ),
    GoRoute(
      path: AppRoutes.registration, // Remove the leading '/'
      builder: (BuildContext context, GoRouterState state) {
        return const RegistrationScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.verificationCode, // Remove the leading '/'
      builder: (BuildContext context, GoRouterState state) {
        return const VerificationCodeScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.deliveryAddress,
      builder: (context, state) {
        final user = state.extra as UserRegistrationData;
        return DeliveryAddressScreen(data: user);
      },
    ),
    GoRoute(
      path: AppRoutes.interests,
      builder: (BuildContext context, GoRouterState state) {
        final userData = state.extra as UserRegistrationData;
        return InterestsScreen(userData: userData);
      },
    ),

    GoRoute(
      path: AppRoutes.interestsDetail,
      builder: (context, state) {
        final user = state.extra as UserRegistrationData;
        return InterestsDetailScreen(userData: user);
      },
    ),
    GoRoute(
      path: AppRoutes.notification,
      builder: (BuildContext context, GoRouterState state) {
        return const NotificationScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.imageDelay,
      builder: (BuildContext context, GoRouterState state) {
        return const ImageDelayScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.bottomNavBar,
      builder: (BuildContext context, GoRouterState state) {
        return const BottomNavScreen();
      },
    ),

    statefulShellRoute,
  ],
);

class MyNavigatorObserver extends NavigatorObserver {
  static List<String> backStack = [];

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    backStack.add(route.settings.name ?? '');
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    print('didPop $previousRoute');
    backStack.removeLast();
  }
}



Page<T> buildCupertinoTransitionPage<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return CupertinoPageTransition(
        primaryRouteAnimation: animation,
        secondaryRouteAnimation: secondaryAnimation,
        linearTransition: false,
        child: child,
      );
    },
    transitionDuration: const Duration(milliseconds: 300),
  );
}
