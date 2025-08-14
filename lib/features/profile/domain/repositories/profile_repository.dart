import 'package:dartz/dartz.dart';
import 'package:hvatai/features/auth/data/models/category_model/category_model.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/profile/data/model/card_model/card_model.dart';
import 'package:hvatai/features/profile/data/model/create_stream/create_stream_model.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';
import 'package:hvatai/features/profile/domain/usecases/add_new_address_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/add_new_card_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/add_new_product_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/delete_address_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/delete_card_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/edit_delivery_address_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/update_profile_data_usecase.dart';

abstract class ProfileRepository {
  Future<Either<String, UserRegistrationData>> getProfileData();
  Future<Either<String, UserRegistrationData>> updateProfileData(
      UpdateProfileParams params);

  Future<Either<String, Unit>> deleteAccount();

  Future<Either<String, UserRegistrationData>> updateProfileType();
  Future<Either<String, Unit>> deleteAddress(DeleteAddressParams params);

  Future<Either<String, Unit>> deleteCard(DeleteCardParams params);

  Future<Either<String, Unit>> signOut();

  Future<Either<String, List<UserRegistrationData>>> getDeliveryAddress();
  Future<Either<String, List<CardModel>>> getAllCards();

  Future<Either<String, List<ProductModel>>> getMyProducts();
  Future<Either<String, CategoryModel>> getProductCategory();

  Future<Either<String, UserRegistrationData>> addNewAddress(
      AddNewAddressParams params);

  Future<Either<String, CardModel>> addNewCard(AddNewCardParams params);

  Future<Either<String, ProductModel>> addNewProduct(
      AddNewProductParams params);

  Future<Either<String, UserRegistrationData>> editDeliveryAddress(
      EditDeliveryAddressParams params);

  Future<Either<String, Unit>> createStream(CreateStreamModel model);

}
