import 'package:hvatai/features/auth/domain/usecases/check_otp_usecase.dart';
import 'package:hvatai/features/auth/domain/usecases/delivery_address_usecase.dart';
import 'package:hvatai/features/auth/domain/usecases/login_usecase.dart';
import 'package:hvatai/features/auth/domain/usecases/login_with_google_usecase.dart';
import 'package:hvatai/features/auth/domain/usecases/register_usecase.dart';
import 'package:hvatai/features/home/domain/usecases/get_notification_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/add_new_address_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/add_new_card_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/edit_delivery_address_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/get_card_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/get_delivery_address_usecase.dart';
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
  locator.registerLazySingleton(() => GetDeliveryAddressUsecase(locator()));
  locator.registerLazySingleton(() => AddNewAddressUsecase(locator()));
  locator.registerLazySingleton(() => EditDeliveryAddressUsecase(locator()));
  locator.registerLazySingleton(() => GetCardUsecase(locator()));
  locator.registerLazySingleton(() => GetNotificationUsecase(locator()));
  locator.registerLazySingleton(() => AddNewCardUsecase(locator()));
}
