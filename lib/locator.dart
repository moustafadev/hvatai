import 'package:get_it/get_it.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/core/datasources/local/app_local.dart';
import 'package:hvatai/core/datasources/local/cache_helper.dart';
import 'package:hvatai/core/shared/utils/network_info.dart';
import 'package:hvatai/features/activity/data/datasources/api_service_activity.dart';
import 'package:hvatai/features/activity/data/repositories/activity_impl_repository.dart';
import 'package:hvatai/features/activity/domain/repositories/activity_repository.dart';
import 'package:hvatai/features/activity/presentation/cubit/activity/activity_cubit.dart';
import 'package:hvatai/features/clips/presentation/cubit/clips_cubit/clips_cubit.dart';
import 'package:hvatai/features/review/data/datasources/api_service_review.dart';
import 'package:hvatai/features/review/data/repositories/review_repository_impl.dart';
import 'package:hvatai/features/review/domain/repositories/review_repository.dart';
import 'package:hvatai/features/review/presentation/cubit/review_cubit/review_cubit.dart';
import 'package:hvatai/features/stream/domain/usecases/get_my_streams_usecase.dart';
import 'package:hvatai/features/favorites/presentation/cubit/favorite/favorite_cubit.dart';
import 'package:hvatai/features/cart/data/datasources/api_service_cart.dart';
import 'package:hvatai/features/cart/data/repositories/cart_repository_impl.dart';
import 'package:hvatai/features/cart/domain/repositories/cart_repository.dart';
import 'package:hvatai/features/cart/presentation/cubit/cart_cubit/cart_cubit.dart';
import 'package:hvatai/features/address/presentation/cubit/edit_address/edit_address_cubit.dart';
import 'package:hvatai/features/cart/presentation/cubit/cart_product_details/cart_product_details_cubit.dart';
import 'package:hvatai/features/auth/data/datasources/api_service_auth.dart';
import 'package:hvatai/features/auth/data/repositories/auth_impl_repository.dart';
import 'package:hvatai/features/auth/domain/repositories/auth_repository.dart';
import 'package:hvatai/features/address/presentation/cubit/delivery_address/delivery_address_cubit.dart';
import 'package:hvatai/features/auth/presentation/cubit/interests/interests_cubit.dart';
import 'package:hvatai/features/auth/presentation/cubit/interests_detail/interests_detail_cubit.dart';
import 'package:hvatai/features/auth/presentation/cubit/login/login_cubit.dart';
import 'package:hvatai/features/auth/presentation/cubit/otp_cubit/otp_cubit.dart';
import 'package:hvatai/features/auth/presentation/cubit/name_cubit/name_cubit.dart';
import 'package:hvatai/features/address/data/datasources/api_service_address.dart';
import 'package:hvatai/features/address/data/repositories/address_impl_repository.dart';
import 'package:hvatai/features/address/domain/repositories/address_repository.dart';
import 'package:hvatai/features/payment_method/data/datasources/api_service_payment_method.dart';
import 'package:hvatai/features/payment_method/data/repositories/payment_method_impl_repository.dart';
import 'package:hvatai/features/payment_method/domain/repositories/payment_method_repository.dart';
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
import 'package:hvatai/features/awards/presentation/cubit/send_reward_flow/send_reward_flow_cubit.dart';
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
import 'package:hvatai/features/add_new_product/data/repositories/add_new_product_impl_repository.dart';
import 'package:hvatai/features/add_new_product/domain/repositories/add_new_product_repository.dart';
import 'package:hvatai/features/add_new_product/data/datasources/api_service_add_new_product.dart';
import 'package:hvatai/features/profile/presentation/cubit/add_stream/add_stream_cubit.dart';
import 'package:hvatai/features/profile/presentation/cubit/edit_profile/edit_profile_cubit.dart';
import 'package:hvatai/features/analytics/presentation/cubit/analytics/analytics_cubit.dart';
import 'package:hvatai/features/analytics/data/datasources/api_service_analytics.dart';
import 'package:hvatai/features/analytics/data/repositories/analytics_repository_impl.dart';
import 'package:hvatai/features/analytics/domain/repositories/analytics_repository.dart';
import 'package:hvatai/features/add_new_product/presentation/add_new_product.dart';
import 'package:hvatai/features/profile/presentation/cubit/my_products_cubit/my_products_cubit.dart';
import 'package:hvatai/features/profile/presentation/cubit/my_product_details_cubit/my_product_details_cubit.dart';
import 'package:hvatai/features/profile/presentation/cubit/notification_cubit/notification_cubit.dart';
import 'package:hvatai/features/payment_method/presentation/cubit/payment_method/payment_method_cubit.dart';
import 'package:hvatai/features/profile/presentation/cubit/profile_cubit/profile_cubit.dart';
import 'package:hvatai/features/profile/presentation/cubit/report_violation_cubit/report_violation_cubit.dart';
import 'package:hvatai/features/search/data/datasources/api_service_search.dart';
import 'package:hvatai/features/search/data/repositories/search_repository_impl.dart';
import 'package:hvatai/features/search/domain/repositories/search_repository.dart';
import 'package:hvatai/features/company/data/datasources/api_service_company.dart';
import 'package:hvatai/features/company/data/repositories/company_repository_impl.dart';
import 'package:hvatai/features/company/domain/repositories/company_repository.dart';
import 'package:hvatai/features/company/presentation/cubit/company/company_cubit.dart';
import 'package:hvatai/features/company/presentation/cubit/company_products/company_products_cubit.dart';
import 'package:hvatai/features/company/presentation/cubit/company_streams/company_streams_cubit.dart';
import 'package:hvatai/features/favorites/data/datasources/api_service_favorites.dart';
import 'package:hvatai/features/favorites/data/repositories/favorites_repository_impl.dart';
import 'package:hvatai/features/favorites/domain/repositories/favorites_repository.dart';
import 'package:hvatai/features/search/presentation/cubit/search_cubit/search_cubit.dart';
import 'package:hvatai/features/schedule_stream/presentation/cubit/schedule_stream_cubit/schedule_stream_cubit.dart';
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
  locator.registerFactory(() => NameCubit(locator()));
  locator.registerFactory(
      () => InterestsDetailCubit(locator(), locator(), locator()));
  locator.registerFactory(() => ProfileCubit(locator(), locator(), locator()));
  locator.registerFactory(
    () => ActivityCubit(
      locator(),
      locator<GetMyStreamsUsecase>(),
      locator(),
    ),
  );
  locator.registerFactory(() => FavoriteCubit(locator()));
  locator.registerFactory(() => NotificationCubit());
  locator.registerFactory(() => ChangePasswordCubit(
        locator(),
      ));
  locator.registerFactory(() => AwardsClubCubit(locator(), locator()));
  locator.registerFactory(() => SendRewardFlowCubit(locator()));
  locator.registerFactory(() => CompanyProductsCubit(locator()));
  locator.registerFactory(() => CompanyStreamsCubit(locator()));
  locator.registerFactory(
    () => CompanyCubit(
      locator(),
      locator(),
      locator(),
    ),
  );
  locator.registerFactory(() => ReviewCubit(locator()));
  locator.registerFactory(() => CartProductDetailsCubit(
      locator(), locator(), locator(), locator(), locator()));
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
      () => CartCubit(locator(), locator(), locator(), locator()));
  locator.registerFactory(() => SearchCubit(
        locator(),
        locator(),
      ));
  locator.registerFactory(() => ScheduleStreamCubit(locator()));

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
  locator.registerFactory(() => ProductFormCubit(
        locator(),
        locator(),
        locator(),
        locator(),
      ));
  locator.registerFactory(() => MyProductsCubit(locator()));
  locator.registerFactory(() => MyProductDetailsCubit());
  locator.registerFactory(() => ProductImageCubit());
  locator.registerFactory(() => ClipsCubit());
  // Analytics
  locator.registerFactory(() => AnalyticsCubit(locator()));
  locator.registerFactory(() => NotificationsCubit(locator(), locator()));
  locator.registerFactory(() => ReportViolationCubit());

  locator.registerFactory(
      () => DeliveryAddressCubit(locator(), locator(), locator(), locator()));
  locator.registerFactory(() => OtpCubit(locator()));
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
  locator.registerLazySingleton<CartRepository>(
      () => CartRepositoryImpl(locator()));
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
  locator.registerLazySingleton<AddNewProductRepository>(
      () => AddNewProductImplRepository(locator()));
  locator.registerLazySingleton<OrdersRepository>(
      () => OrdersImplRepository(locator()));
  locator.registerLazySingleton<SearchRepository>(
      () => SearchRepositoryImpl(locator()));
  locator.registerLazySingleton<CompanyRepository>(
      () => CompanyRepositoryImpl(locator()));
  locator.registerLazySingleton<FavoritesRepository>(
      () => FavoritesRepositoryImpl(locator()));
  locator.registerLazySingleton<WalletRepository>(
      () => WalletImplRepository(locator()));
  locator.registerLazySingleton<ChangePasswordRepository>(
      () => ChangePasswordImplRepository(
            locator(),
          ));
  locator.registerLazySingleton<AddressRepository>(
      () => AddressImplRepository(locator()));
  locator.registerLazySingleton<PaymentMethodRepository>(
      () => PaymentMethodImplRepository(locator()));
  locator.registerLazySingleton<AnalyticsRepository>(
      () => AnalyticsRepositoryImpl(locator()));
  locator.registerLazySingleton<ActivityRepository>(
      () => ActivityImplRepository(locator()));
  locator.registerLazySingleton<ReviewRepository>(
      () => ReviewRepositoryImpl(locator()));
  // //DATASOURSE
  locator.registerLazySingleton(() => ApiServiceAuth());
  locator.registerLazySingleton(() => ApiServiceAddress());
  locator.registerLazySingleton(() => ApiServicePaymentMethod());
  locator.registerLazySingleton(() => ApiServiceChangePassword());
  locator.registerLazySingleton(() => ApiServiceCart());
  locator.registerLazySingleton(() => ApiServiceHome());
  locator.registerLazySingleton(() => ApiServiceAwards());
  locator.registerLazySingleton(() => ApiServiceNotifications());
  locator.registerLazySingleton(() => ApiServiceProfile());
  locator.registerLazySingleton(() => ApiServiceSearch());
  locator.registerLazySingleton(() => ApiServiceCompany());
  locator.registerLazySingleton(() => ApiServiceFavorites());
  locator.registerLazySingleton(() => ApiServiceChat());
  locator.registerLazySingleton(() => ApiServiceStream());
  locator.registerLazySingleton(() => ApiServiceWallet());
  locator.registerLazySingleton(() => ApiServiceOrders());
  locator.registerLazySingleton(() => ApiServiceAnalytics());
  locator.registerLazySingleton(() => ApiServiceAddNewProduct());
  locator.registerLazySingleton(() => ApiServiceActivity());
  locator.registerLazySingleton(() => ApiServiceReview());
  // //EXTRNAL
  locator.registerLazySingleton(() => SharedPreferences.getInstance());
  locator.registerLazySingleton(() => InternetConnectionChecker());

  locator.registerLazySingleton(() => NetworkChecker(locator()));
  locator.registerLazySingleton(() => CacheHelper());
  locator.registerLazySingleton(() => AppLocal());
}
