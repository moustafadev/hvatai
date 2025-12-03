import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/features/all_app/presentation/basket.dart';
import 'package:hvatai/features/all_app/presentation/cubit/product_detials/product_details_cubit.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/auth/presentation/auth.dart';
import 'package:hvatai/features/profile/presentation/cubit/delivery_address/delivery_address_cubit.dart';
import 'package:hvatai/features/change_password/presentation/change_password.dart';
import 'package:hvatai/features/chat/data/models/chat/chat_model.dart';
import 'package:hvatai/features/chat/presentation/chat.dart';
import 'package:hvatai/features/home/data/model/join_stream_model/join_stream_model.dart';
import 'package:hvatai/features/awards/presentation/awards.dart';
import 'package:hvatai/features/awards/presentation/cubit/awards_club_cubit.dart';
import 'package:hvatai/features/notifications/presentation/cubit/notifications_cubit/notifications_cubit.dart';
import 'package:hvatai/features/notifications/presentation/notifications.dart';
import 'package:hvatai/features/orders/presentation/screens/my_orders_screen.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';
import 'package:hvatai/features/profile/data/model/stream_response_model/stream_response_model.dart';
import 'package:hvatai/features/profile/presentation/cubit/edit_profile/edit_profile_cubit.dart';
import 'package:hvatai/features/profile/presentation/cubit/my_goods_cubit/my_goods_cubit.dart';
import 'package:hvatai/features/profile/presentation/cubit/payment_method/payment_method_cubit.dart';
import 'package:hvatai/features/profile/presentation/profile.dart';
import 'package:hvatai/features/search/data/model/user_data_model.dart';
import 'package:hvatai/features/company/presentation/company.dart';
import 'package:hvatai/features/company/presentation/cubit/company/company_cubit.dart';
import 'package:hvatai/features/splash/presentation/pages/splash_screen.dart';
import 'package:hvatai/features/stream/presentation/stream.dart';
import 'package:hvatai/features/wallet/presentation/wallet.dart';
import 'package:hvatai/routes/app_routes.dart';
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
        return const SplashScreen(); //const TestStream();
      },
    ),
    GoRoute(
      path: AppRoutes.addStream, // Remove the leading '/'
      builder: (BuildContext context, GoRouterState state) {
        return const AddStreamScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.socialLogin, // Remove the leading '/'
      builder: (BuildContext context, GoRouterState state) {
        return const SocialsLoginScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.analytics, // Remove the leading '/'
      builder: (BuildContext context, GoRouterState state) {
        return const AnalyticsScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.liveStreamViewer,
      builder: (BuildContext context, GoRouterState state) {
        final extra = state.extra as Map<String, dynamic>?; // change to dynamic

        final streamDataModel = extra?['streamDataModel'] as StreamDataModel;
        final joinData = (extra?['joinData'] as JoinStreamData?);

        return ViewerStreamScreen(
          stream: streamDataModel,
          joinData: joinData,
        );
      },
    ),
    GoRoute(
      path: AppRoutes.liveStreamBroadcaster,
      builder: (BuildContext context, GoRouterState state) {
        final extra = state.extra as Map<String, dynamic>?; // change to dynamic

        final streamDataModel = extra?['streamDataModel'] as StreamDataModel;

        return BroadcasterStreamScreen(
          stream: streamDataModel,
        );
      },
    ),
    GoRoute(
      path: AppRoutes.inviteFriends, // Remove the leading '/'
      builder: (BuildContext context, GoRouterState state) {
        return const InviteFriendScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.chatRoot,
      builder: (context, state) => const ChatScreen(),
      routes: [
        GoRoute(
          path: AppRoutes.chat, // /chat under /chatRoot
          builder: (context, state) => const ChatScreen(),
        ),
        GoRoute(
          path: AppRoutes.chatDetails, // just the last part
          builder: (context, state) {
            final args = state.extra as Map<String, dynamic>?;

            final int chatId = args?['chatId'] as int;
            final UserChatModel user = args?['user'] as UserChatModel;

            return ChatDetailsScreen(
              chatId: chatId,
              user: user,
            );
          },
        ),
        GoRoute(
          path: AppRoutes.chatSupportDetails, // just the last part
          builder: (context, state) {
            final args = state.extra as Map<String, dynamic>?;

            final int chatId = args?['chatId'] as int;

            return ChatSupportDetailsScreen(
              chatId: chatId,
            );
          },
        ),
      ],
    ),
    GoRoute(
      path: AppRoutes.addDeliveryAddress, // Remove the leading '/'
      builder: (BuildContext context, GoRouterState state) {
        final cubit = state.extra as DeliveryAddressCubit..clearAddress();
        return BlocProvider.value(
            value: cubit, child: const AddDeliveryAddressScreen());
      },
    ),
    GoRoute(
      path: AppRoutes.payments, // Remove the leading '/'
      builder: (BuildContext context, GoRouterState state) {
        return const PaymentMethodsScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.awardsGift, // Remove the leading '/'
      builder: (BuildContext context, GoRouterState state) {
        final extras = state.extra as Map<String, dynamic>?;
        final user = extras?['user'] as UserDataModel?;
        final isSubscribed = extras?['isSubscribed'] as bool? ?? false;
        final companyCubit = extras?['companyCubit'] as CompanyCubit?;

        return AwardsClubScreen(
          initialUser: user,
          initialIsSubscribed: isSubscribed,
          companyCubit: companyCubit,
        );
      },
    ),
    GoRoute(
      path: AppRoutes.sendReward, // Remove the leading '/'
      builder: (BuildContext context, GoRouterState state) {
        final cubit = state.extra as AwardsClubCubit;

        return BlocProvider.value(value: cubit, child: SendRewardScreen());
      },
    ),
    GoRoute(
      path: AppRoutes.selectAwaySend, // Remove the leading '/'
      builder: (BuildContext context, GoRouterState state) {
        final cubit = state.extra as AwardsClubCubit;

        return BlocProvider.value(
            value: cubit, child: SelectAwayRewardsScreen());
      },
    ),
    GoRoute(
      path: AppRoutes.addNewPaymentMethod,
      builder: (context, state) {
        final cubit = state.extra as PaymentMethodCubit;

        return BlocProvider.value(
          value: cubit,
          child: AddNewPaymentMethodScreen(),
        );
      },
    ),
    GoRoute(
      path: AppRoutes.editDeliveryAddress,
      builder: (BuildContext context, GoRouterState state) {
        final extra = state.extra as Map<String, Object>;

        final model = extra['model'] as UserRegistrationData;
        // final cubit = extra['cubit'] as DeliveryAddressCubit
        //   ..initRegistrationModel(model)
        //   ..prefill(model.country);

        return EditDeliveryAddressScreen(
          address: model,
        );
      },
    ),
    GoRoute(
      path: AppRoutes.changeEmail, // Remove the leading '/'
      builder: (BuildContext context, GoRouterState state) {
        final extra = state.extra as Map<String, Object>;

        final model = extra['model'] as UserRegistrationData;
        final cubit = extra['cubit'] as EditProfileCubit
          ..initProfileModel(model);
        return BlocProvider.value(
          value: cubit,
          child: ChangeEmailUserScreen(),
        );
      },
    ),
    GoRoute(
      path: AppRoutes.changePassword, // Remove the leading '/'
      builder: (BuildContext context, GoRouterState state) {
        return ChangePasswordUserScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.deliveryAddress,
      builder: (context, state) {
        return DeliveryAddressScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.addProduct, // Remove the leading '/'
      builder: (BuildContext context, GoRouterState state) {
        MyGoodsCubit? extraCubit;
        List<int>? allowedIds;
        bool isEdit = false;

        final extra = state.extra;
        if (extra is Map<String, dynamic>) {
          extraCubit = extra['cubit'] as MyGoodsCubit?;
          allowedIds =
              (extra['allowedCategoryIds'] as List<int>?) ?? allowedIds;
          final mode = extra['mode'];
          if (mode is String && mode == 'edit') {
            isEdit = true;
          }
        } else if (extra is MyGoodsCubit) {
          extraCubit = extra;
        }

        return AddNewProductsScreen(
          cubit: extraCubit,
          allowedCategoryIds: allowedIds,
          isEdit: isEdit,
        );
      },
    ),
    GoRoute(
      path: AppRoutes.termAndConditions, // Remove the leading '/'
      builder: (BuildContext context, GoRouterState state) {
        return const TermsAndCondition();
      },
    ),
    GoRoute(
      path: AppRoutes.tradeProfile,
      builder: (BuildContext context, GoRouterState state) {
        final extra = state.extra as Map<String, Object>;
        final model = extra['model'] as UserRegistrationData;
        final cubit = extra['cubit'] as EditProfileCubit
          ..initProfileModel(model);
        return BlocProvider.value(value: cubit, child: TradeProfileScreen());
      },
    ),
    GoRoute(
      path: AppRoutes.myProductDetails,
      builder: (BuildContext context, GoRouterState state) {
        final extra = state.extra as Map<String, Object>;
        final model = extra['model'] as ProductModel;
        final cubit = extra['cubit'] as MyGoodsCubit..initProductModel(model);

        return BlocProvider.value(
            value: cubit, child: const MyProductDetailsScreen());
      },
    ),
    GoRoute(
      path: AppRoutes.productDetails,
      builder: (BuildContext context, GoRouterState state) {
        final extra = state.extra as Map<String, Object>;
        final model = extra['model'] as ProductModel;
        final products = extra['products'] as List<ProductModel>;
        final cubit = extra['cubit'] as ProductDetailsCubit
          ..initProductModel(model);

        return BlocProvider.value(
          value: cubit,
          child: ProductDetailsScreen(
            product: model,
            products: products,
            // cart: cart,
          ),
        );
      },
    ),
    GoRoute(
      path: AppRoutes.allProductCart,
      builder: (BuildContext context, GoRouterState state) {
        return AllProductsCartScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.myGoods, // Remove the leading '/'
      builder: (BuildContext context, GoRouterState state) {
        return const MyGoodsScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.wallet,
      builder: (BuildContext context, GoRouterState state) {
        return const WalletScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.myOrders,
      builder: (BuildContext context, GoRouterState state) {
        return const MyOrdersScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.myStreams,
      builder: (BuildContext context, GoRouterState state) {
        return const MyStreamsScreen();
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
      path: AppRoutes.interests,
      builder: (BuildContext context, GoRouterState state) {
        return InterestsScreen();
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
        return InterestsDetailScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.notification,
      builder: (BuildContext context, GoRouterState state) {
        return const NotificationScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.mainNotification,
      builder: (BuildContext context, GoRouterState state) {
        final cubit = state.extra as NotificationsCubit..getNotifications();

        return BlocProvider.value(
            value: cubit, child: const NotificationsScreen());
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
      builder: (context, state) => const InitNewAddressScreen(),
    ),
    GoRoute(
      path: AppRoutes.reviewCompany,
      builder: (context, state) => const ReviewsCompanyScreen(),
    ),
    GoRoute(
      path: AppRoutes.clipsCompany,
      builder: (context, state) {
        final extra = state.extra as Map<String, dynamic>?;
        final userId = extra?['userId'] as int?;
        return ClipsCompanyScreen(userId: userId);
      },
    ),
    GoRoute(
      path: AppRoutes.productsCompany,
      builder: (context, state) {
        final extra = state.extra as Map<String, dynamic>?;
        final userId = extra?['userId'] as int? ?? 0;
        final userName = extra?['userName'] as String?;
        return ProductsCompanyScreen(
          userId: userId,
          userName: userName,
        );
      },
    ),
    GoRoute(
      path: AppRoutes.companyName,
      builder: (context, state) {
        final userId = (state.extra as int?) ?? 0;
        return CompanyScreen(userId: userId);
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
        final email = state.extra as String? ?? '';

        return OtpScreen(email: email);
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
