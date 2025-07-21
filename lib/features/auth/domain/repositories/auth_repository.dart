import 'package:hvatai/features/auth/data/models/login_model.dart';
import 'package:hvatai/features/auth/data/models/user_registration_data.dart';
import 'package:hvatai/features/auth/domain/usecases/delivery_address_usecase.dart';
import 'package:hvatai/features/auth/domain/usecases/login_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:hvatai/features/auth/domain/usecases/check_otp_usecase.dart';
import 'package:hvatai/features/auth/domain/usecases/register_usecase.dart';

abstract class AuthRepository {
  Future<Either<String, LoginModel>> login(LoginParams params);

  Future<Either<String, LoginModel>> checkOtp(CheckOtpParams params);

  Future<Either<String, UserRegistrationData>> register(RegisterParams params);

  Future<Either<String, UserRegistrationData>> loginWithGoogle();

  Future<Either<String, UserRegistrationData>> deliveryAddress(
      DeliveryAddressParams params);
}
