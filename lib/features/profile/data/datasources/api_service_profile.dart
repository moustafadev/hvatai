import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hvatai/core/datasources/remote/api_base.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/profile/data/model/create_stream/create_stream_model.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';
import 'package:hvatai/features/profile/data/model/ratings_model/ratings_model.dart';
import 'package:hvatai/features/profile/data/model/stream_response_model/stream_response_model.dart';

class ApiServiceProfile extends ApiBase {
  Future<ProductModel> addNewProduct(FormData formData) async {
    return executeAndHandleErrorServer<ProductModel>(() async {
      // print the form data

      final response = await post(
        ServerConfig.products,
        body: formData,
        contentType: 'multipart/form-data',
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        print('==============================');
        print('response.json: ${response.json}');
        print('==============================');
        return ProductModel.fromJson(response.json['data']);
      }
      throw Exception;
    });
  }

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

  Future<List<ProductModel>> getMyProducts({
    required List<int> categoryIds,
  }) async {
    return executeAndHandleErrorServer<List<ProductModel>>(() async {
      final queryParameters = categoryIds.isNotEmpty
          ? {
              'category_ids[]': categoryIds,
            }
          : null;
      final response =
          await get(ServerConfig.products, queryParameters: queryParameters);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<dynamic> data = response.json['data'];
        return data.map((e) => ProductModel.fromJson(e)).toList();
      } else {
        throw Exception;
      }
    });
  }

  Future<List<MainCategoryModel>> getProductCategory() async {
    return executeAndHandleErrorServer<List<MainCategoryModel>>(() async {
      final response = await get(ServerConfig.categories);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<dynamic> data = response.json['data'];
        return data.map((e) => MainCategoryModel.fromJson(e)).toList();
      } else {
        throw Exception;
      }
    });
  }

  Future<List<MainCategoryModel>> getLastUsedCategories() async {
    return executeAndHandleErrorServer<List<MainCategoryModel>>(() async {
      final response = await get(ServerConfig.lastUsedCategories);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<dynamic> data = response.json['data'];
        return data.map((e) => MainCategoryModel.fromJson(e)).toList();
      } else {
        throw Exception;
      }
    });
  }

  Future<UserRegistrationData> updateProfileType() async {
    return executeAndHandleErrorServer<UserRegistrationData>(() async {
      final response = await post(ServerConfig.upgrade);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return UserRegistrationData.fromJson(response.json['data']);
      } else {
        throw Exception;
      }
    });
  }

  Future<UserRegistrationData> updateProfileData(FormData formData) async {
    return executeAndHandleErrorServer<UserRegistrationData>(() async {
      final response = await post(
        ServerConfig.profile,
        body: formData,
        contentType: 'multipart/form-data',
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        return UserRegistrationData.fromJson(response.json['data']);
      }
      throw Exception;
    });
  }

  Future<StreamResponseModel> createStream(CreateStreamModel model) async {
    return executeAndHandleErrorServer<StreamResponseModel>(() async {
      final response = await post(ServerConfig.streams, body: model.toJson());
      if (response.statusCode == 200 || response.statusCode == 201) {
        return StreamResponseModel.fromJson(response.json);
      } else {
        throw Exception('Failed to create stream: ${response.statusCode}');
      }
    });
  }

  Future<ProductModel> updateProduct({
    required int productId,
    required FormData formData,
  }) async {
    return executeAndHandleErrorServer<ProductModel>(() async {
      final response = await post(
        ServerConfig.updateProduct(productId),
        body: formData,
        contentType: 'multipart/form-data',
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return ProductModel.fromJson(response.json);
      }
      throw Exception;
    });
  }

  Future<UserRatingsResponse> getUserRatings(
    int userId, {
    String? sortBy,
    String? sortOrder,
  }) async {
    return executeAndHandleErrorServer<UserRatingsResponse>(() async {
      final queryParams = <String, dynamic>{};
      if (sortBy != null) {
        queryParams['sort_by'] = sortBy;
      }
      if (sortOrder != null) {
        queryParams['sort_order'] = sortOrder;
      }
      final response = await get(
        ServerConfig.userRatings(userId),
        queryParameters: queryParams.isNotEmpty ? queryParams : null,
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        return UserRatingsResponse.fromJson(response.json['data']);
      }
      throw Exception;
    });
  }

  Future<MyRatingsResponse> getMyRatings() async {
    return executeAndHandleErrorServer<MyRatingsResponse>(() async {
      final response = await get(ServerConfig.myRatings);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return MyRatingsResponse.fromJson(response.json);
      }
      throw Exception;
    });
  }

  Future<void> deleteRating(int ratingId) async {
    return executeAndHandleErrorServer<void>(() async {
      final response = await delete(ServerConfig.deleteRating(ratingId));
      if (response.statusCode == 200 || response.statusCode == 201) {
        return;
      }
      throw Exception('Failed to delete rating');
    });
  }

  Future<void> replyToRating(int ratingId, String comment) async {
    return executeAndHandleErrorServer<void>(() async {
      final response = await post(
        ServerConfig.replyToRating(ratingId),
        body: {'reply': comment},
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        return;
      }
      throw Exception('Failed to reply to rating');
    });
  }
}
