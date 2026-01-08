import 'package:dartz/dartz.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/profile/data/model/create_stream/create_stream_model.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';
import 'package:hvatai/features/profile/data/model/stream_response_model/stream_response_model.dart';
import 'package:hvatai/features/profile/domain/usecases/update_profile_data_usecase.dart';

abstract class ProfileRepository {
  Future<Either<String, UserRegistrationData>> getProfileData();
  Future<Either<String, UserRegistrationData>> updateProfileData(
      UpdateProfileParams params);

  Future<Either<String, Unit>> deleteAccount();

  Future<Either<String, UserRegistrationData>> updateProfileType();

  Future<Either<String, Unit>> signOut();

  Future<Either<String, List<ProductModel>>> getMyProducts({
    required List<int> categoryIds,
  });
  Future<Either<String, List<MainCategoryModel>>> getProductCategory();
  Future<Either<String, List<MainCategoryModel>>> getLastUsedCategories();
  Future<Either<String, StreamResponseModel>> createStream(
      CreateStreamModel model);
}
