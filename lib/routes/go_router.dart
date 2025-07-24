import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/auth/presentation/auth.dart';
import 'package:hvatai/features/auth/presentation/cubit/delivery_address/delivery_address_cubit.dart';
import 'package:hvatai/features/profile/presentation/cubit/delivery_address/update_delivery_address_cubit.dart';
import 'package:hvatai/features/profile/presentation/profile.dart';
import 'package:hvatai/features/splash/presentation/pages/splash_screen.dart';
import 'package:hvatai/locator.dart';
import 'package:hvatai/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/routes/shell_route.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
final GoRouter router = GoRouter(
  // observers: [MyNavigatorObserver()],
  initialLocation: AppRoutes.splash,
  navigatorKey: navigatorKey,
  routes: <RouteBase>[
    GoRoute(
      path: AppRoutes.login, // Remove the leading '/'
      builder: (BuildContext context, GoRouterState state) {
        return const LoginScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.splash, // Remove the leading '/'
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.socialLogin, // Remove the leading '/'
      builder: (BuildContext context, GoRouterState state) {
        return const SocialsLoginScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.addDeliveryAddress, // Remove the leading '/'
      builder: (BuildContext context, GoRouterState state) {
        return BlocProvider<UpdateDeliveryAddressCubit>.value(
            value: locator<UpdateDeliveryAddressCubit>(),
            child: const AddDeliveryAddressScreen());
      },
    ),
    GoRoute(
      path: AppRoutes.editDeliveryAddress, // Remove the leading '/'
      builder: (BuildContext context, GoRouterState state) {
        final userData = state.extra as UserRegistrationData;
        return BlocProvider<UpdateDeliveryAddressCubit>.value(
            value: locator<UpdateDeliveryAddressCubit>(),
            child: EditDeliveryAddressScreen(
              data: userData,
            ));
      },
    ),
    GoRoute(
      path: AppRoutes.payments, // Remove the leading '/'
      builder: (BuildContext context, GoRouterState state) {
        return const PaymentMethodsScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.addNewPaymentMethod, // Remove the leading '/'
      builder: (BuildContext context, GoRouterState state) {
        return const AddNewPaymentMethod();
      },
    ),
    GoRoute(
      path: AppRoutes.changeEmail, // Remove the leading '/'
      builder: (BuildContext context, GoRouterState state) {
        final userData = state.extra as UserRegistrationData;
        return ChangeEmailUser(
          user: userData,
        );
      },
    ),
    GoRoute(
      path: AppRoutes.changePassword, // Remove the leading '/'
      builder: (BuildContext context, GoRouterState state) {
        return const ChangePasswordUser();
      },
    ),
    GoRoute(
      path: AppRoutes.addProduct, // Remove the leading '/'
      builder: (BuildContext context, GoRouterState state) {
        return const AddNewGoods();
      },
    ),
    GoRoute(
      path: AppRoutes.termAndConditions, // Remove the leading '/'
      builder: (BuildContext context, GoRouterState state) {
        return const TermsAndCondition();
      },
    ),
    GoRoute(
      path: AppRoutes.myGoods, // Remove the leading '/'
      builder: (BuildContext context, GoRouterState state) {
        return const MyGoodsScreen();
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
        final userData = state.extra as UserRegistrationData;

        return DeliveryAddressScreen(data: userData);
      },
    ),
    GoRoute(
      path: AppRoutes.interests,
      builder: (BuildContext context, GoRouterState state) {
        final userData = state.extra as UserRegistrationData;
        return InterestsScreen(data: userData);
      },
    ),
    GoRoute(
        path: AppRoutes.notificationSettings,
        builder: (context, state) {
          return NotificationSettingsScreen();
        }),
    GoRoute(
        path: AppRoutes.settings,
        builder: (context, state) {
          final userData = state.extra as UserRegistrationData;

          return SettingsScreen(user: userData);
        }),
    GoRoute(
      path: AppRoutes.interestsDetail,
      builder: (context, state) {
        final user = state.extra as UserRegistrationData;
        return InterestsDetailScreen(data: user);
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
      builder: (context, state) => const InitNewAddress(),
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
    GoRoute(
      path: AppRoutes.otp,
      builder: (context, state) {
        final data = state.extra as UserRegistrationData?;

        return OtpScreen(data: data!);
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
