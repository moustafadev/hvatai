import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/features/auth/data/models/category_model/category_model.dart';
import 'package:hvatai/features/cart/presentation/cart.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/auth/presentation/auth.dart';
import 'package:hvatai/features/cart/presentation/cubit/cart_product_details/cart_product_details_cubit.dart';
import 'package:hvatai/features/address/presentation/address.dart';
import 'package:hvatai/features/address/presentation/cubit/delivery_address/delivery_address_cubit.dart';
import 'package:hvatai/features/change_password/presentation/change_password.dart';
import 'package:hvatai/features/chat/data/models/chat/chat_model.dart';
import 'package:hvatai/features/chat/presentation/chat.dart';
import 'package:hvatai/features/home/data/model/join_stream_model/join_stream_model.dart';
import 'package:hvatai/features/awards/presentation/awards.dart';
import 'package:hvatai/features/awards/presentation/cubit/awards_club_cubit.dart';
import 'package:hvatai/features/home/presentation/cubit/live_streams/live_streams_cubit.dart';
import 'package:hvatai/features/home/presentation/cubit/categories/categories_cubit.dart';
import 'package:hvatai/features/home/presentation/home.dart';
import 'package:hvatai/features/notifications/presentation/cubit/notifications_cubit/notifications_cubit.dart';
import 'package:hvatai/features/notifications/presentation/notifications.dart';
import 'package:hvatai/features/orders/presentation/screens/my_orders_screen.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';
import 'package:hvatai/features/profile/data/model/stream_response_model/stream_response_model.dart';
import 'package:hvatai/features/profile/presentation/cubit/edit_profile/edit_profile_cubit.dart';
import 'package:hvatai/features/profile/presentation/cubit/product_form_cubit/product_form_cubit.dart';
import 'package:hvatai/features/profile/presentation/cubit/my_product_details_cubit/my_product_details_cubit.dart';
import 'package:hvatai/features/payment_method/presentation/payment_method.dart';
import 'package:hvatai/features/payment_method/presentation/cubit/payment_method/payment_method_cubit.dart';
import 'package:hvatai/features/profile/presentation/cubit/profile_cubit/profile_cubit.dart';
import 'package:hvatai/features/profile/presentation/profile.dart';
import 'package:hvatai/features/analytics/presentation/analytics.dart';
import 'package:hvatai/features/search/data/model/user_data_model.dart';
import 'package:hvatai/features/company/presentation/company.dart';
import 'package:hvatai/features/company/presentation/cubit/company/company_cubit.dart';
import 'package:hvatai/features/schedule_stream/presentation/schedule_stream.dart';
import 'package:hvatai/features/splash/presentation/pages/splash_screen.dart';
import 'package:hvatai/features/stream/presentation/stream.dart';
import 'package:hvatai/features/wallet/presentation/wallet.dart';
import 'package:hvatai/locator.dart';
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
      path: AppRoutes.scheduledStreamsList,
      builder: (BuildContext context, GoRouterState state) {
        final extra = state.extra as Map<String, dynamic>?;
        final streams = extra?['streams'] as List<StreamDataModel>? ?? [];
        return ScheduledStreamsListScreen(
          streams: streams,
        );
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

            final int? chatId = args?['chatId'] as int?;
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
      path: AppRoutes.addProduct, // Remove the leading '/'
      builder: (BuildContext context, GoRouterState state) {
        ProductModel? product;
        bool isEdit = false;

        final extra = state.extra;
        if (extra is Map<String, dynamic>) {
          product = extra['product'] as ProductModel?;
          final mode = extra['mode'];
          if (mode is String && mode == 'edit') {
            isEdit = true;
          }
        }

        return AddNewProductsScreen(
          product: product,
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
      path: AppRoutes.categoriesForYou,
      builder: (context, state) {
        final extra = state.extra as Map<String, Object>;
        final liveStreamsCubit = extra['liveStreamsCubit'] as LiveStreamsCubit;
        final categoriesCubit = extra['categoriesCubit'] as CategoriesCubit;
        final categories = extra['categories'] as List<CategoryData>;
        return CategoriesForYouScreen(
          liveStreamsCubit: liveStreamsCubit,
          categoriesCubit: categoriesCubit,
          categories: categories,
        );
      },
    ),
    GoRoute(
      path: AppRoutes.tradeProfile,
      builder: (BuildContext context, GoRouterState state) {
        return const ProfileScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.myProductDetails,
      builder: (BuildContext context, GoRouterState state) {
        final extra = state.extra as Map<String, Object>;
        final model = extra['model'] as ProductModel;
        final cubit = locator<MyProductDetailsCubit>()..initProduct(model);

        return BlocProvider.value(
          value: cubit,
          child: const MyProductDetailsScreen(),
        );
      },
    ),
    GoRoute(
      path: AppRoutes.cartProductDetails,
      builder: (BuildContext context, GoRouterState state) {
        final extra = state.extra as Map<String, Object>;
        final model = extra['model'] as ProductModel;
        final products = extra['products'] as List<ProductModel>;
        final cubit = extra['cubit'] as CartProductDetailsCubit
          ..initProductModel(model);

        return BlocProvider.value(
          value: cubit,
          child: CartProductDetailsScreen(
            product: model,
            products: products,
            // cart: cart,
          ),
        );
      },
    ),
    GoRoute(
      path: AppRoutes.cart,
      builder: (BuildContext context, GoRouterState state) {
        return const CartScreen();
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
      path: AppRoutes.reportViolation,
      builder: (BuildContext context, GoRouterState state) {
        return const ReportViolationScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.myStreams,
      builder: (BuildContext context, GoRouterState state) {
        return const MyStreamsScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.termsAndConditions,
      builder: (BuildContext context, GoRouterState state) {
        return const TermsAndConditionsScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.privacyPolicyProfile,
      builder: (BuildContext context, GoRouterState state) {
        return const PrivacyPolicyProfileScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.privacyPolicy, // Remove the leading '/'
      builder: (BuildContext context, GoRouterState state) {
        return const PrivacyPolicy();
      },
    ),
    GoRoute(
      path: AppRoutes.interests,
      builder: (BuildContext context, GoRouterState state) {
        return InterestsScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.profileSettings,
      builder: (context, state) {
        final profileCubit = state.extra as ProfileCubit;
        return BlocProvider.value(
          value: profileCubit,
          child: ProfileSettingsScreen(),
        );
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
        late NotificationsCubit cubit;
        if (state.extra != null && state.extra is NotificationsCubit) {
          cubit = state.extra as NotificationsCubit;
          cubit.getNotifications();
        } else {
          cubit = locator<NotificationsCubit>();
          cubit.getNotifications();
        }

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
        final phone = state.extra as String? ?? '';

        return OtpScreen(phone: phone);
      },
    ),
    GoRoute(
      path: AppRoutes.name,
      builder: (context, state) {
        return const NameScreen();
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
