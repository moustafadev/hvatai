import 'dart:io';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hvatai/core/datasources/remote/api_base.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/profile/data/model/card_model/card_model.dart';
import 'package:hvatai/features/profile/domain/usecases/add_new_address_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/add_new_card_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/delete_address_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/delete_card_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/edit_delivery_address_usecase.dart';
import 'package:hvatai/features/profile/domain/usecases/update_profile_data_usecase.dart';

class ApiServiceProfile extends ApiBase {
  Future<UserRegistrationData> getProfileData() async {
    return executeAndHandleErrorServer<UserRegistrationData>(() async {
      final response = await get(ServerConfig.profile);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = Map<String, dynamic>.from(response.json['data']);

        data['terms_agreement'] = (data['terms_agreement'] == 1);
        data['age_confirmation'] = (data['age_confirmation'] == 1);

        return UserRegistrationData.fromJson(data);
      } else {
        throw Exception;
      }
    });
  }

  Future<Unit> deleteAccount() async {
    return executeAndHandleErrorServer<Unit>(() async {
      final response = await delete(ServerConfig.deleteAccount);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return unit;
      } else {
        throw Exception;
      }
    });
  }

  Future<Unit> signOut() async {
    return executeAndHandleErrorServer<Unit>(() async {
      final response = await get(ServerConfig.signOut);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return unit;
      } else {
        throw Exception;
      }
    });
  }

  Future<List<UserRegistrationData>> getDeliveryAddress() async {
    return executeAndHandleErrorServer<List<UserRegistrationData>>(() async {
      final response = await get(ServerConfig.deliveryAddress);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<dynamic> data = response.json;

        return data
            .map(
                (e) => UserRegistrationData.fromJson(e as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception;
      }
    });
  }

  Future<List<CardModel>> getAllCards() async {
    return executeAndHandleErrorServer<List<CardModel>>(() async {
      final response = await get(ServerConfig.cards);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<dynamic> data = response.json;

        return data
            .map((e) => CardModel.fromJson(e as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception;
      }
    });
  }

  Future<File> compressImage(File file) async {
    final compressedFile = await FlutterImageCompress.compressAndGetFile(
      file.absolute.path,
      file.absolute.path.replaceAll('.jpg', '_compressed.jpg'),
      quality: 70,
    );
    return compressedFile ?? file;
  }

  Future<MultipartFile?> _prepareImageFile(String? imagePath) async {
    if (imagePath == null || imagePath.isEmpty) return null;

    File file = File(imagePath);

    if (!await file.exists()) {
      return null;
    }

    if (await file.length() > 2 * 1024 * 1024) {
      file = await compressImage(file);
      if (await file.length() > 2 * 1024 * 1024) {
        throw Exception;
      }
    }

    return MultipartFile.fromFile(file.path,
        filename: file.path.split('/').last);
  }

  Future<UserRegistrationData> updateProfileData(
      UpdateProfileParams params) async {
    return executeAndHandleErrorServer<UserRegistrationData>(() async {
      final dataMap = Map<String, dynamic>.from(params.toJson());
      dataMap['terms_agreement'] =
          params.userRegistrationData.agreedToTerms ?? false ? 1 : 0;
      dataMap['age_confirmation'] =
          params.userRegistrationData.isAbove18 ?? false ? 1 : 0;
      dataMap['phone'] = "243535345";

      MultipartFile? imageFile;
      if (params.userRegistrationData.image != null &&
          File(params.userRegistrationData.image!).existsSync()) {
        imageFile = await _prepareImageFile(params.userRegistrationData.image);
      }

      if (imageFile != null) {
        dataMap['image'] = imageFile;
      } else {
        dataMap.remove('image');
      }

      final formData = FormData.fromMap(dataMap);
      final response = await post(
        ServerConfig.profile,
        body: formData,
        contentType: 'multipart/form-data',
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return UserRegistrationData.fromJson(response.json);
      }
      throw Exception;
    });
  }

  Future<UserRegistrationData> addNewAddress(AddNewAddressParams params) async {
    return executeAndHandleErrorServer<UserRegistrationData>(() async {
      final response =
          await post(ServerConfig.deliveryAddress, body: params.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return UserRegistrationData.fromJson(response.json);
      } else {
        throw Exception;
      }
    });
  }

  Future<Unit> deleteAddress(DeleteAddressParams params) async {
    return executeAndHandleErrorServer<Unit>(() async {
      final addressId = params.addressId;
      final endpoint = ServerConfig.deliveryAddressId(addressId);
      final response = await delete(endpoint);
      if (response.statusCode == 200 ||
          response.statusCode == 201 ||
          response.statusCode == 204) {
        return unit;
      } else {
        throw Exception;
      }
    });
  }

  Future<Unit> deleteCard(DeleteCardParams params) async {
    return executeAndHandleErrorServer<Unit>(() async {
      final cardId = params.cardId;
      final endpoint = ServerConfig.cardId(cardId);
      final response = await delete(endpoint);
      if (response.statusCode == 200 ||
          response.statusCode == 201 ||
          response.statusCode == 204) {
        return unit;
      } else {
        throw Exception;
      }
    });
  }

  Future<CardModel> addNewCard(AddNewCardParams params) async {
    return executeAndHandleErrorServer<CardModel>(() async {
      final response = await post(ServerConfig.cards, body: params.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return CardModel.fromJson(response.json);
      } else {
        throw Exception;
      }
    });
  }

  Future<UserRegistrationData> editDeliveryAddress(
      EditDeliveryAddressParams params) async {
    return executeAndHandleErrorServer<UserRegistrationData>(() async {
      final addressId = params.userRegistrationData.id;
      if (addressId == null) {
        throw Exception("Address ID is null, cannot update");
      }
      final endpoint = ServerConfig.deliveryAddressId(addressId);
      final response = await put(endpoint, body: params.toJson());

      if (response.statusCode == 200 || response.statusCode == 201) {
        return UserRegistrationData.fromJson(response.json);
      } else {
        throw Exception;
      }
    });
  }
}
