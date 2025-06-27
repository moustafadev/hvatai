import 'package:hvatai/core/shared/datasources/local/app_local.dart';
import 'package:hvatai/core/shared/datasources/local/cache_helper.dart';
import 'package:hvatai/core/shared/utils/network_info.dart';
import 'package:get_it/get_it.dart';
import 'package:hvatai/features/auth/data/datasources/api_service_auth.dart';
import 'package:hvatai/features/auth/data/repositories/auth_impl_repository.dart';
import 'package:hvatai/features/auth/domain/repositories/auth_repository.dart';
import 'package:hvatai/features/auth/presentation/cubit/delivery_address/delivery_address_cubit.dart';
import 'package:hvatai/features/auth/presentation/cubit/interests/interests_cubit.dart';
import 'package:hvatai/features/auth/presentation/cubit/interests_detail/interests_detail_cubit.dart';
import 'package:hvatai/features/auth/presentation/cubit/login/login_cubit.dart';
import 'package:hvatai/features/auth/presentation/cubit/registration/registration_cubit.dart';
import 'package:hvatai/features/auth/presentation/cubit/social_login.dart/social_login_cubit.dart';
import 'package:hvatai/features/auth/presentation/cubit/verification/verification_cubit.dart';
import 'package:hvatai/features/bottom_nav_bar/presentation/cubit/bottom_nav_cubit.dart';
import 'package:hvatai/features/profile/presentation/cubit/profile_cubit.dart';
import 'package:hvatai/locator_use_case.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  //BLOC
  locator.registerFactory(() => LoginCubit());
  locator.registerFactory(() => VerificationCubit());
  locator.registerFactory(() => InterestsCubit());
  locator.registerFactory(() => InterestsDetailCubit());
  locator.registerFactory(() => BottomNavCubit());
  locator.registerFactory(() => ProfileCubit());

  locator.registerFactory(() => SocialLoginCubit(locator()));
  locator.registerFactory(() => RegistrationCubit());
  locator.registerFactory(() => DeliveryAddressCubit());

  // //CORE
  // //UseCase
  locatorUseCase();

  // //REPOSITORISE
  locator.registerLazySingleton<AuthRepository>(
      () => AuthImplRepository(locator()));

  // //DATASOURSE
  locator.registerLazySingleton(() => ApiServiceAuth());

  // //EXTRNAL
  locator.registerLazySingleton(() => SharedPreferences.getInstance());
  locator.registerLazySingleton(() => InternetConnectionChecker());

  locator.registerLazySingleton(() => NetworkChecker(locator()));
  locator.registerLazySingleton(() => CacheHelper());
  locator.registerLazySingleton(() => AppLocal());
}
