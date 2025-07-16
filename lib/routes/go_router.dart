import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hvatai/features/auth/data/models/user_registration_data.dart';
import 'package:hvatai/features/auth/presentation/auth.dart';
import 'package:hvatai/features/auth/presentation/cubit/delivery_address/delivery_address_cubit.dart';
import 'package:hvatai/features/profile/presentation/cubit/profile_cubit.dart';
import 'package:hvatai/features/profile/presentation/profile.dart';
import 'package:hvatai/locator.dart';
import 'package:hvatai/routes/app_routes.dart';
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
      path: AppRoutes.deliveryAddressUpdate, // Remove the leading '/'
      builder: (BuildContext context, GoRouterState state) {
        return const DeliveryAddressUpdateScreen();
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
        path: AppRoutes.notificationSettings,
        name: AppRoutes.notificationSettings,
        builder: (context, state) {
          return NotificationSettingsScreen();
        }),
    GoRoute(
      path: AppRoutes.settings,
      builder: (context, state) => BlocProvider(
        create: (context) => locator<ProfileCubit>(),
        child: const SettingsScreen(),
      ),
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
      path: AppRoutes.myAwards,
      builder: (BuildContext context, GoRouterState state) {
        return MyAwardsScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.newAddress,
      builder: (context, state) => BlocProvider(
        create: (context) => locator<DeliveryAddressCubit>(),
        child: const InitNewAddress(),
      ),
    ),
    GoRoute(
      path: AppRoutes.tradeProfile,
      builder: (BuildContext context, GoRouterState state) {
        return TradeProfileScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.imageDelay,
      builder: (BuildContext context, GoRouterState state) {
        return const ImageDelayScreen();
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
