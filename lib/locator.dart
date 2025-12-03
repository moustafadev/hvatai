import 'package:get_it/get_it.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/core/datasources/local/app_local.dart';
import 'package:hvatai/core/datasources/local/cache_helper.dart';
import 'package:hvatai/core/shared/utils/network_info.dart';
import 'package:hvatai/features/activity/presentation/cubit/activity/activity_cubit.dart';
import 'package:hvatai/features/activity/presentation/cubit/featured_activity/featured_activity_cubit.dart';
import 'package:hvatai/features/activity/presentation/cubit/rates_activity/rates_activity_cubit.dart';
import 'package:hvatai/features/all_app/data/datasources/api_service_app.dart';
import 'package:hvatai/features/all_app/data/repositories/app_impl_repository.dart';
import 'package:hvatai/features/all_app/domain/repositories/app_repository.dart';
import 'package:hvatai/features/all_app/presentation/cubit/basket_cubit/basket_cubit.dart';
import 'package:hvatai/features/all_app/presentation/cubit/edit_address/edit_address_cubit.dart';
import 'package:hvatai/features/all_app/presentation/cubit/product_detials/product_details_cubit.dart';
import 'package:hvatai/features/auth/data/datasources/api_service_auth.dart';
import 'package:hvatai/features/auth/data/repositories/auth_impl_repository.dart';
import 'package:hvatai/features/auth/domain/repositories/auth_repository.dart';
import 'package:hvatai/features/auth/presentation/cubit/add_address/add_address_cubit.dart';
import 'package:hvatai/features/profile/presentation/cubit/delivery_address/delivery_address_cubit.dart';
import 'package:hvatai/features/auth/presentation/cubit/interests/interests_cubit.dart';
import 'package:hvatai/features/auth/presentation/cubit/interests_detail/interests_detail_cubit.dart';
import 'package:hvatai/features/auth/presentation/cubit/login/login_cubit.dart';
import 'package:hvatai/features/auth/presentation/cubit/otp_cubit/otp_cubit.dart';
import 'package:hvatai/features/auth/presentation/cubit/registration/registration_cubit.dart';
import 'package:hvatai/features/auth/presentation/cubit/social_login.dart/social_login_cubit.dart';
import 'package:hvatai/features/change_password/data/datasources/api_service_change_password.dart';
import 'package:hvatai/features/change_password/data/repositories/change_password_impl_repository.dart';
import 'package:hvatai/features/change_password/domain/repositories/change_password_repository.dart';
import 'package:hvatai/features/change_password/presentation/cubit/change_password_cubit.dart';
import 'package:hvatai/features/chat/data/datasources/api_service_chat.dart';
import 'package:hvatai/features/chat/data/repositories/chat_impl_repository.dart';
import 'package:hvatai/features/chat/domain/repositories/chat_repository.dart';
import 'package:hvatai/features/chat/presentation/cubit/chats_cubit.dart';
import 'package:hvatai/features/awards/data/datasources/api_service_awards.dart';
import 'package:hvatai/features/awards/data/repositories/awards_impl_repository.dart';
import 'package:hvatai/features/awards/domain/repositories/awards_repository.dart';
import 'package:hvatai/features/home/data/datasources/api_service_home.dart';
import 'package:hvatai/features/home/data/repositories/home_impl_repository.dart';
import 'package:hvatai/features/home/domain/repositories/home_repository.dart';
import 'package:hvatai/features/notifications/data/datasources/api_service_notifications.dart';
import 'package:hvatai/features/notifications/data/repositories/notifications_impl_repository.dart';
import 'package:hvatai/features/notifications/domain/repositories/notifications_repository.dart';
import 'package:hvatai/features/awards/presentation/cubit/awards_club_cubit.dart';
import 'package:hvatai/features/home/presentation/cubit/categories/categories_cubit.dart';
import 'package:hvatai/features/home/presentation/cubit/live_streams/live_streams_cubit.dart';
import 'package:hvatai/features/notifications/presentation/cubit/notifications_cubit/notifications_cubit.dart';
import 'package:hvatai/features/orders/data/datasources/api_service_orders.dart';
import 'package:hvatai/features/orders/data/repositories/orders_impl_repository.dart';
import 'package:hvatai/features/orders/domain/repositories/orders_repository.dart';
import 'package:hvatai/features/orders/presentation/cubit/my_orders_cubit.dart';
import 'package:hvatai/features/profile/data/datasources/api_service_profile.dart';
import 'package:hvatai/features/profile/data/repositories/profile_impl_repository.dart';
import 'package:hvatai/features/profile/domain/repositories/profile_repository.dart';
import 'package:hvatai/features/profile/presentation/cubit/add_stream/add_stream_cubit.dart';
import 'package:hvatai/features/profile/presentation/cubit/analytics_cubit/analytics_cubit.dart';
import 'package:hvatai/features/profile/presentation/cubit/edit_profile/edit_profile_cubit.dart';
import 'package:hvatai/features/profile/presentation/cubit/my_goods_cubit/my_goods_cubit.dart';
import 'package:hvatai/features/profile/presentation/cubit/notification_cubit/notification_cubit.dart';
import 'package:hvatai/features/profile/presentation/cubit/payment_method/payment_method_cubit.dart';
import 'package:hvatai/features/profile/presentation/cubit/profile_cubit/profile_cubit.dart';
import 'package:hvatai/features/search/data/datasources/api_service_search.dart';
import 'package:hvatai/features/search/data/repositories/search_repository_impl.dart';
import 'package:hvatai/features/search/domain/repositories/search_repository.dart';
import 'package:hvatai/features/company/data/datasources/api_service_company.dart';
import 'package:hvatai/features/company/data/repositories/company_repository_impl.dart';
import 'package:hvatai/features/company/domain/repositories/company_repository.dart';
import 'package:hvatai/features/company/presentation/cubit/company/company_cubit.dart';
import 'package:hvatai/features/company/presentation/cubit/company_products/company_products_cubit.dart';
import 'package:hvatai/features/company/presentation/cubit/company_streams/company_streams_cubit.dart';
import 'package:hvatai/features/search/presentation/cubit/search_cubit/search_cubit.dart';
import 'package:hvatai/features/stream/data/datasources/api_service_stream.dart';
import 'package:hvatai/features/stream/data/repositories/stream_repository.dart';
import 'package:hvatai/features/stream/domain/repositories/stream_impl_repository.dart';
import 'package:hvatai/features/stream/presentation/cubit/live_listings_shop/live_listings_shop_cubit.dart';
import 'package:hvatai/features/stream/presentation/cubit/my_streams_cubit/my_streams_cubit.dart';
import 'package:hvatai/features/wallet/data/datasources/api_service_wallet.dart';
import 'package:hvatai/features/wallet/data/repositories/wallet_impl_repository.dart';
import 'package:hvatai/features/wallet/domain/repositories/wallet_repository.dart';
import 'package:hvatai/features/wallet/presentation/cubit/wallet_cubit/wallet_cubit.dart';
import 'package:hvatai/locator_use_case.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  //BLOC
  locator.registerFactory(() => LoginCubit(
        locator(),
      ));
  locator.registerFactory(() => InterestsCubit(
        locator(),
        locator(),
      ));
  locator.registerFactory(() => EditAddressCubit(
        locator(),
      ));
  locator.registerFactory(
      () => InterestsDetailCubit(locator(), locator(), locator()));
  locator.registerFactory(() => ProfileCubit(locator(), locator()));
  locator.registerFactory(() => ActivityCubit(
        locator(),
      ));
  locator.registerFactory(() => NotificationCubit());
  locator.registerFactory(() => ChangePasswordCubit(
        locator(),
      ));
  locator.registerFactory(() => AwardsClubCubit(locator(), locator()));
  locator.registerFactory(() => CompanyProductsCubit(locator()));
  locator.registerFactory(() => CompanyStreamsCubit(locator()));
  locator.registerFactory(
    () => CompanyCubit(
      locator(),
      locator(),
      locator(),
    ),
  );
  locator.registerFactory(
      () => ProductDetailsCubit(locator(), locator(), locator()));
  locator.registerFactory(() => AddStreamCubit(
        locator(),
        locator(),
      ));
  locator.registerFactory(() => ChatsCubit(
        locator(),
        locator(),
        locator(),
        locator(),
        locator(),
        locator(),
        locator(),
      ));
  locator.registerFactory(
      () => BasketCubit(locator(), locator(), locator(), locator()));
  locator.registerFactory(() => SearchCubit(
        locator(),
      ));

  locator.registerFactory(() => CategoriesCubit(
        locator(),
        locator(),
        locator(),
      ));
  locator.registerFactory(() => LiveStreamsCubit(
        locator(),
        locator(),
        locator(),
      ));

  locator.registerFactory(
      () => PaymentMethodCubit(locator(), locator(), locator()));
  locator
      .registerFactory(() => EditProfileCubit(locator(), locator(), locator()));
  locator.registerFactory(() => MyGoodsCubit(
        locator(),
        locator(),
        locator(),
        locator(),
      ));
  locator.registerFactory(() => AnalyticsCubit());
  locator.registerFactory(() => ProductImageCubit());
  locator.registerFactory(() => NotificationsCubit(locator(), locator()));

  locator.registerFactory(() => SocialLoginCubit(locator(), locator()));
  locator.registerFactory(() => RegistrationCubit(
        locator(),
      ));
  locator.registerFactory(() => AddAddressCubit(locator()));
  locator.registerFactory(
      () => DeliveryAddressCubit(locator(), locator(), locator(), locator()));
  locator.registerFactory(() => OtpCubit(locator()));
  locator.registerFactory(() => RatesActivityCubit());
  locator.registerFactory(() => FeaturedActivityCubit());
  locator.registerFactory(() => LiveListingsShopCubit(
      locator(), locator(), locator(), locator(), locator(), locator()));
  locator.registerFactory(() => WalletCubit(locator(), locator(), locator()));
  locator.registerFactory(() => MyOrdersCubit(locator()));
  locator.registerFactory(() => MyStreamsCubit(locator()));

  // //CORE
  // //UseCase
  locatorUseCase();

  // //REPOSITORISE
  locator.registerLazySingleton<AuthRepository>(
      () => AuthImplRepository(locator(), locator()));
  locator
      .registerLazySingleton<AppRepository>(() => AppImplRepository(locator()));
  locator.registerLazySingleton<HomeRepository>(
      () => HomeImplRepository(locator()));
  locator.registerLazySingleton<AwardsRepository>(
      () => AwardsImplRepository(locator()));
  locator.registerLazySingleton<NotificationsRepository>(
      () => NotificationsImplRepository(locator()));
  locator.registerLazySingleton<ChatRepository>(
      () => ChatImplRepository(locator()));
  locator.registerLazySingleton<StreamRepository>(
      () => StreamImplRepository(locator()));
  locator.registerLazySingleton<ProfileRepository>(
      () => ProfileImplRepository(locator(), locator()));
  locator.registerLazySingleton<OrdersRepository>(
      () => OrdersImplRepository(locator()));
  locator.registerLazySingleton<SearchRepository>(
      () => SearchRepositoryImpl(locator()));
  locator.registerLazySingleton<CompanyRepository>(
      () => CompanyRepositoryImpl(locator()));
  locator.registerLazySingleton<WalletRepository>(
      () => WalletImplRepository(locator()));
  locator.registerLazySingleton<ChangePasswordRepository>(
      () => ChangePasswordImplRepository(
            locator(),
          ));
  // //DATASOURSE
  locator.registerLazySingleton(() => ApiServiceAuth());
  locator.registerLazySingleton(() => ApiServiceChangePassword());
  locator.registerLazySingleton(() => ApiServiceApp());
  locator.registerLazySingleton(() => ApiServiceHome());
  locator.registerLazySingleton(() => ApiServiceAwards());
  locator.registerLazySingleton(() => ApiServiceNotifications());
  locator.registerLazySingleton(() => ApiServiceProfile());
  locator.registerLazySingleton(() => ApiServiceSearch());
  locator.registerLazySingleton(() => ApiServiceCompany());
  locator.registerLazySingleton(() => ApiServiceChat());
  locator.registerLazySingleton(() => ApiServiceStream());
  locator.registerLazySingleton(() => ApiServiceWallet());
  locator.registerLazySingleton(() => ApiServiceOrders());

  // //EXTRNAL
  locator.registerLazySingleton(() => SharedPreferences.getInstance());
  locator.registerLazySingleton(() => InternetConnectionChecker());

  locator.registerLazySingleton(() => NetworkChecker(locator()));
  locator.registerLazySingleton(() => CacheHelper());
  locator.registerLazySingleton(() => AppLocal());
}
