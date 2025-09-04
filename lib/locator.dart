import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/core/datasources/local/app_local.dart';
import 'package:hvatai/core/datasources/local/cache_helper.dart';
import 'package:hvatai/core/shared/utils/network_info.dart';
import 'package:get_it/get_it.dart';
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
import 'package:hvatai/features/auth/presentation/cubit/delivery_address/delivery_address_cubit.dart';
import 'package:hvatai/features/auth/presentation/cubit/interests/interests_cubit.dart';
import 'package:hvatai/features/auth/presentation/cubit/interests_detail/interests_detail_cubit.dart';
import 'package:hvatai/features/auth/presentation/cubit/login/login_cubit.dart';
import 'package:hvatai/features/auth/presentation/cubit/otp_cubit/otp_cubit.dart';
import 'package:hvatai/features/auth/presentation/cubit/registration/registration_cubit.dart';
import 'package:hvatai/features/auth/presentation/cubit/social_login.dart/social_login_cubit.dart';
import 'package:hvatai/features/auth/presentation/cubit/verification/verification_cubit.dart';
import 'package:hvatai/features/change_password/data/datasources/api_service_change_password.dart';
import 'package:hvatai/features/change_password/data/repositories/change_password_impl_repository.dart';
import 'package:hvatai/features/change_password/domain/repositories/change_password_repository.dart';
import 'package:hvatai/features/change_password/presentation/cubit/change_password_cubit.dart';
import 'package:hvatai/features/chat/data/datasources/api_service_chat.dart';
import 'package:hvatai/features/chat/data/repositories/chat_impl_repository.dart';
import 'package:hvatai/features/chat/domain/repositories/chat_repository.dart';
import 'package:hvatai/features/chat/presentation/cubit/chats_cubit.dart';
import 'package:hvatai/features/home/presentation/cubit/awards_club/awards_club_cubit.dart';
import 'package:hvatai/features/home/presentation/cubit/notification_cubit/main_notification_cubit.dart';
import 'package:hvatai/features/profile/data/datasources/api_service_profile.dart';
import 'package:hvatai/features/profile/data/repositories/profile_impl_repository.dart';
import 'package:hvatai/features/profile/domain/repositories/profile_repository.dart';
import 'package:hvatai/features/profile/presentation/cubit/add_stream/add_stream_cubit.dart';
import 'package:hvatai/features/profile/presentation/cubit/analytics_cubit/analytics_cubit.dart';
import 'package:hvatai/features/profile/presentation/cubit/edit_profile/edit_profile_cubit.dart';
import 'package:hvatai/features/profile/presentation/cubit/my_goods_cubit/my_goods_cubit.dart';
import 'package:hvatai/features/profile/presentation/cubit/payment_method/payment_method_cubit.dart';
import 'package:hvatai/features/profile/presentation/cubit/profile_cubit/profile_cubit.dart';
import 'package:hvatai/features/home/data/datasources/api_service_home.dart';
import 'package:hvatai/features/home/data/repositories/home_impl_repository.dart';
import 'package:hvatai/features/home/domain/repositories/home_repository.dart';
import 'package:hvatai/features/home/presentation/cubit/category_tabs/category_tabs_cubit.dart';
import 'package:hvatai/features/profile/presentation/cubit/notification_cubit/notification_cubit.dart';
import 'package:hvatai/features/search/presentation/cubit/auction_search_cubit/auction_search_cubit.dart';
import 'package:hvatai/features/search/presentation/cubit/search_cubit/search_cubit.dart';
import 'package:hvatai/features/stream/data/datasources/api_service_stream.dart';
import 'package:hvatai/features/stream/data/repositories/stream_repository.dart';
import 'package:hvatai/features/stream/domain/repositories/stream_impl_repository.dart';
import 'package:hvatai/features/stream/presentation/cubit/live_stream_cubit.dart';
import 'package:hvatai/locator_use_case.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  //BLOC
  locator.registerFactory(() => LoginCubit(locator(), locator()));
  locator.registerFactory(() => VerificationCubit());
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
  locator.registerFactory(() => AwardsClubCubit());
  locator.registerFactory(() => AuctionSearchCubit());
  locator.registerFactory(
      () => ProductDetailsCubit(locator(), locator(), locator()));
  locator.registerFactory(() => AddStreamCubit(locator(), locator()));
  locator.registerFactory(() => LiveStreamCubit(
      locator(), locator(), locator(), locator(), locator(), locator()));
  locator.registerFactory(() => ChatsCubit(
        locator(),
        locator(),
        locator(),
        locator(),
        locator(),
        locator(),
        locator(),
      ));
  locator.registerFactory(() => BasketCubit(locator(), locator(), locator()));
  locator.registerFactory(() => SearchCubit(
        locator(),
      ));

  locator.registerFactory(() =>
      CategoryTabsCubit(locator(), locator(), locator(), locator(), locator()));

  locator.registerFactory(
      () => PaymentMethodCubit(locator(), locator(), locator()));
  locator
      .registerFactory(() => EditProfileCubit(locator(), locator(), locator()));
  locator.registerFactory(() => MyGoodsCubit(
        locator(),
        locator(),
        locator(),
      ));
  locator.registerFactory(() => AnalyticsCubit());
  locator.registerFactory(() => ProductImageCubit());
  locator.registerFactory(() => MainNotificationCubit(locator(), locator()));

  locator.registerFactory(() => SocialLoginCubit(locator(), locator()));
  locator.registerFactory(() => RegistrationCubit(
        locator(),
      ));
  locator.registerFactory(() => DeliveryAddressCubit(
      locator(), locator(), locator(), locator(), locator()));
  locator.registerFactory(() => OtpCubit(locator()));
  locator.registerFactory(() => RatesActivityCubit());
  locator.registerFactory(() => FeaturedActivityCubit());

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
  locator.registerLazySingleton<ChatRepository>(
      () => ChatImplRepository(locator()));
  locator.registerLazySingleton<StreamRepository>(
      () => StreamImplRepository(locator()));
  locator.registerLazySingleton<ProfileRepository>(
      () => ProfileImplRepository(locator(), locator()));
  locator.registerLazySingleton<ChangePasswordRepository>(
      () => ChangePasswordImplRepository(
            locator(),
          ));
  // //DATASOURSE
  locator.registerLazySingleton(() => ApiServiceAuth());
  locator.registerLazySingleton(() => ApiServiceChangePassword());
  locator.registerLazySingleton(() => ApiServiceApp());
  locator.registerLazySingleton(() => ApiServiceHome());
  locator.registerLazySingleton(() => ApiServiceProfile());
  locator.registerLazySingleton(() => ApiServiceChat());
  locator.registerLazySingleton(() => ApiServiceStream());

  // //EXTRNAL
  locator.registerLazySingleton(() => SharedPreferences.getInstance());
  locator.registerLazySingleton(() => InternetConnectionChecker());

  locator.registerLazySingleton(() => NetworkChecker(locator()));
  locator.registerLazySingleton(() => CacheHelper());
  locator.registerLazySingleton(() => AppLocal());
}
