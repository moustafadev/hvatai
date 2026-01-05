import 'package:hvatai/core/datasources/local/app_local.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/profile/data/datasources/api_service_profile.dart';
import 'package:hvatai/features/profile/data/model/create_stream/create_stream_model.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';
import 'package:hvatai/features/profile/data/model/stream_response_model/stream_response_model.dart';
import 'package:hvatai/features/profile/domain/repositories/profile_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:hvatai/features/profile/domain/usecases/add_new_product_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/update_product_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/update_profile_data_usecase.dart';

class ProfileImplRepository implements ProfileRepository {
  final ApiServiceProfile _apiServiceProfile;
  final AppLocal _appLocal;

  ProfileImplRepository(this._apiServiceProfile, this._appLocal);

  @override
  Future<Either<String, UserRegistrationData>> getProfileData() async {
    return executeAndHandleError<UserRegistrationData>(() async {
      final res = await _apiServiceProfile.getProfileData();
      return res;
    });
  }

  @override
  Future<Either<String, UserRegistrationData>> updateProfileType() async {
    return executeAndHandleError<UserRegistrationData>(() async {
      final res = await _apiServiceProfile.updateProfileType();
      return res;
    });
  }

  @override
  Future<Either<String, UserRegistrationData>> updateProfileData(
      UpdateProfileParams params) async {
    return executeAndHandleError<UserRegistrationData>(() async {
      final res = await _apiServiceProfile.updateProfileData(params.formData);
      return res;
    });
  }

  @override
  Future<Either<String, ProductModel>> addNewProduct(
      AddNewProductParams params) {
    return executeAndHandleError<ProductModel>(() async {
      final res = await _apiServiceProfile.addNewProduct(params.formData);
      return res;
    });
  }

  @override
  Future<Either<String, Unit>> deleteAccount() {
    return executeAndHandleError<Unit>(() async {
      final res = await _apiServiceProfile.deleteAccount();
      _appLocal.removeToken();
      return res;
    });
  }

  @override
  Future<Either<String, Unit>> signOut() {
    return executeAndHandleError<Unit>(() async {
      final res = await _apiServiceProfile.signOut();
      _appLocal.removeToken();
      return res;
    });
  }

  @override
  Future<Either<String, List<ProductModel>>> getMyProducts({
    required List<int> categoryIds,
  }) {
    return executeAndHandleError<List<ProductModel>>(() async {
      final res =
          await _apiServiceProfile.getMyProducts(categoryIds: categoryIds);
      return res;
    });
  }

  @override
  Future<Either<String, StreamResponseModel>> createStream(
      CreateStreamModel model) {
    return executeAndHandleError<StreamResponseModel>(() async {
      final res = await _apiServiceProfile.createStream(model);
      return res;
    });
  }

  @override
  Future<Either<String, List<MainCategoryModel>>> getProductCategory() {
    return executeAndHandleError<List<MainCategoryModel>>(() async {
      final res = await _apiServiceProfile.getProductCategory();

      return res;
    });
  }

  @override
  Future<Either<String, List<MainCategoryModel>>> getLastUsedCategories() {
    return executeAndHandleError<List<MainCategoryModel>>(() async {
      final res = await _apiServiceProfile.getLastUsedCategories();
      return res;
    });
  }

  @override
  Future<Either<String, ProductModel>> updateProduct(
      UpdateProductParams params) {
    return executeAndHandleError<ProductModel>(() async {
      final res = await _apiServiceProfile.updateProduct(
        productId: params.productId,
        formData: params.formData,
      );
      return res;
    });
  }
}
