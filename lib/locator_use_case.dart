import 'package:hvatai/features/auth/domain/usecases/login_usecase.dart';
import 'package:hvatai/locator.dart';

void locatorUseCase() {
  // //UseCase
  locator.registerLazySingleton(() => LoginUseCase(locator()));
}
