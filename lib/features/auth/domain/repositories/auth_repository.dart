import 'package:hvatai/features/auth/data/models/category_model/category_model.dart';
import 'package:hvatai/features/auth/data/models/otp_request/otp_request.dart';
import 'package:hvatai/features/auth/data/models/auth_verify/auth_verify_response.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/auth/domain/usecases/add_fav_category_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:hvatai/features/auth/domain/usecases/send_otp_usecase.dart';
import 'package:hvatai/features/auth/domain/usecases/check_otp_usecase.dart';
import 'package:hvatai/features/auth/domain/usecases/update_name_usecase.dart';

abstract class AuthRepository {
  Future<Either<String, OtpRequestResponse>> requestOtp(SendOtpParams params);

  Future<Either<String, AuthVerifyResponse>> checkOtp(CheckOtpParams params);

  Future<Either<String, UserRegistrationData>> updateName(
      UpdateNameParams params);

  Future<Either<String, Unit>> addFavCategory(AddFavCategoryParams params);

  Future<Either<String, CategoryModel>> getCategories();
  Future<Either<String, CategoryModel>> getFavCategories();
}
