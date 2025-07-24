import 'package:hvatai/core/datasources/local/app_local.dart';
import 'package:hvatai/core/datasources/local/cache_helper.dart';
import 'package:hvatai/core/shared/utils/network_info.dart';
import 'package:get_it/get_it.dart';
import 'package:hvatai/features/activity/presentation/cubit/activity/activity_cubit.dart';
import 'package:hvatai/features/activity/presentation/cubit/featured_activity/featured_activity_cubit.dart';
import 'package:hvatai/features/activity/presentation/cubit/rates_activity/rates_activity_cubit.dart';
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
import 'package:hvatai/features/profile/data/datasources/api_service_profile.dart';
import 'package:hvatai/features/profile/data/repositories/profile_impl_repository.dart';
import 'package:hvatai/features/profile/domain/repositories/profile_repository.dart';
import 'package:hvatai/features/profile/presentation/cubit/delivery_address/update_delivery_address_cubit.dart';
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
import 'package:hvatai/features/search/presentation/cubit/search_tabs_cubit/search_tabs_cubit.dart';
import 'package:hvatai/locator_use_case.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  //BLOC
  locator.registerFactory(() => LoginCubit(locator()));
  locator.registerFactory(() => VerificationCubit());
  locator.registerFactory(() => InterestsCubit());
  locator.registerFactory(() => InterestsDetailCubit());
  locator.registerFactory(() => ProfileCubit(locator()));
  locator.registerFactory(() => ActivityCubit());
  locator.registerLazySingleton(() => NotificationCubit());
  locator.registerLazySingleton(() => AuctionSearchCubit());

  locator.registerFactory(() => CategoryTabsCubit());
  locator.registerFactory(() => SearchTabsCubit());
  locator.registerFactory(
      () => UpdateDeliveryAddressCubit(locator(), locator(), locator()));
  locator.registerFactory(() => PaymentMethodCubit());
  locator.registerFactory(() => EditProfileCubit(locator(), locator()));
  locator.registerFactory(() => MyGoodsCubit());

  locator.registerFactory(() => SocialLoginCubit(locator()));
  locator.registerFactory(() => RegistrationCubit(
        locator(),
      ));
  locator.registerFactory(() => DeliveryAddressCubit(locator()));
  locator.registerFactory(() => OtpCubit(locator()));
  locator.registerFactory(() => RatesActivityCubit());
  locator.registerFactory(() => FeaturedActivityCubit());

  // //CORE
  // //UseCase
  locatorUseCase();

  // //REPOSITORISE
  locator.registerLazySingleton<AuthRepository>(
      () => AuthImplRepository(locator()));
  locator.registerLazySingleton<HomeRepository>(
      () => HomeImplRepository(locator()));
  locator.registerLazySingleton<ProfileRepository>(
      () => ProfileImplRepository(locator()));
  // //DATASOURSE
  locator.registerLazySingleton(() => ApiServiceAuth());
  locator.registerLazySingleton(() => ApiServiceHome());
  locator.registerLazySingleton(() => ApiServiceProfile());

  // //EXTRNAL
  locator.registerLazySingleton(() => SharedPreferences.getInstance());
  locator.registerLazySingleton(() => InternetConnectionChecker());

  locator.registerLazySingleton(() => NetworkChecker(locator()));
  locator.registerLazySingleton(() => CacheHelper());
  locator.registerLazySingleton(() => AppLocal());
}
