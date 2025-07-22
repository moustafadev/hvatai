import 'package:hvatai/features/auth/domain/usecases/check_otp_usecase.dart';
import 'package:hvatai/features/auth/domain/usecases/delivery_address_usecase.dart';
import 'package:hvatai/features/auth/domain/usecases/login_usecase.dart';
import 'package:hvatai/features/auth/domain/usecases/login_with_google_usecase.dart';
import 'package:hvatai/features/auth/domain/usecases/register_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/get_profile_data_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/update_profile_data_usecase.dart';
import 'package:hvatai/locator.dart';

void locatorUseCase() {
  // //UseCase
  locator.registerLazySingleton(() => LoginUseCase(locator()));
  locator.registerLazySingleton(() => RegisterUseCase(locator()));
  locator.registerLazySingleton(() => CheckOtpUseCase(locator()));
  locator.registerLazySingleton(() => DeliveryAddressUseCase(locator()));
  locator.registerLazySingleton(() => LoginWithGoogleUseCase(locator()));
  locator.registerLazySingleton(() => GetProfileDataUsecase(locator()));
  locator.registerLazySingleton(() => UpdateProfileDataUsecase(locator()));
}
