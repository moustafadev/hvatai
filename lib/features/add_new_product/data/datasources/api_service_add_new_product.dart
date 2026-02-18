import 'package:dio/dio.dart';
import 'package:hvatai/core/datasources/remote/api_base.dart';
import 'package:hvatai/core/error/execute_and_handle_error.dart';
import 'package:hvatai/core/shared/utils/server_config.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';

class ApiServiceAddNewProduct extends ApiBase {
  Future<ProductModel> addNewProduct(ProductModel product) async {
    return executeAndHandleErrorServer<ProductModel>(() async {
      final formData = await _buildProductFormData(product);

      final response = await post(
        ServerConfig.products,
        body: formData,
        contentType: 'multipart/form-data',
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return ProductModel.fromJson(response.json['data']);
      }
      throw Exception();
    });
  }

  Future<List<MainCategoryModel>> getProductCategory() async {
    return executeAndHandleErrorServer<List<MainCategoryModel>>(() async {
      final response = await get(ServerConfig.categories);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<dynamic> data = response.json['data'];
        return data.map((e) => MainCategoryModel.fromJson(e)).toList();
      }
      throw Exception();
    });
  }

  Future<List<MainCategoryModel>> getLastUsedCategories() async {
    return executeAndHandleErrorServer<List<MainCategoryModel>>(() async {
      final response = await get(ServerConfig.lastUsedCategories);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<dynamic> data = response.json['data'];
        return data.map((e) => MainCategoryModel.fromJson(e)).toList();
      }
      throw Exception();
    });
  }

  Future<ProductModel> updateProduct({
    required int productId,
    required ProductModel product,
  }) async {
    return executeAndHandleErrorServer<ProductModel>(() async {
      final formData = await _buildProductFormData(product);
      final response = await post(
        ServerConfig.updateProduct(productId),
        body: formData,
        contentType: 'multipart/form-data',
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        // NOTE: keep as you had it. If your backend returns {data:{...}} then change this line.
        return ProductModel.fromJson(response.json);
      }
      throw Exception();
    });
  }

  // ---------------- Helpers ----------------

  Future<FormData> _buildProductFormData(ProductModel product) async {
    final Map<String, dynamic> dataMap = {
      ...product.toJson()..remove('images'),
    };

    // Remove nested objects that backend usually doesn't accept in multipart
    dataMap.remove('category');
    dataMap.remove('user');
    dataMap.remove('owner');
    dataMap.remove('live_auction');

    if (product.deliveryAvailable == false) {
      dataMap.remove('delivery_time');
      dataMap.remove('delivery_discount');
    }

    // if the product_description is empty, pass it as empty string
    if (product.productDescription == null) {
      dataMap['product_description'] = 'stream product';
    }

    // ✅ Make booleans Laravel-friendly (0/1) if these keys exist
    // (Adjust key names if your API expects different ones.)
    if (dataMap.containsKey('delivery_available')) {
      dataMap['delivery_available'] =
          _boolTo01(dataMap['delivery_available']) ?? 0;
    }
    if (dataMap.containsKey('self_pickup')) {
      dataMap['self_pickup'] = _boolTo01(dataMap['self_pickup']) ?? 0;
    }

    // ✅ Variants must be array, not VariantModel instance
    // Convert to Laravel-friendly multipart keys:
    _normalizeVariantsIntoMap(product, dataMap);

    // ✅ Attach images as MultipartFile (only local files)
    await _attachPictures(product.images, dataMap);

    final formData = FormData.fromMap(dataMap);
    // Debug (optional)
    // print('formData.fields: ${formData.fields}');
    // print('formData.files: ${formData.files}');
    return formData;
  }

  void _normalizeVariantsIntoMap(
      ProductModel product, Map<String, dynamic> map) {
    // Remove whatever toJson put there (often a VariantModel object)
    map.remove('variants');

    // If you have no variants, send empty array-ish (or skip entirely based on backend)
    if (product.variants.isEmpty) {
      return;
    }

    for (int i = 0; i < product.variants.length; i++) {
      final v = product.variants[i];

      // IMPORTANT: backend expects strings in multipart most of the time
      if (v.id != null) map['variants[$i][id]'] = v.id.toString();

      if (v.price != null) {
        map['variants[$i][price]'] = v.price.toString();
      } else if (product.variants.first.price != null) {
        // fallback if needed
        map['variants[$i][price]'] = product.variants.first.price.toString();
      } else {
        map['variants[$i][price]'] = '';
      }

      map['variants[$i][stock]'] = v.stock.toString();

      if (v.discount != null) {
        map['variants[$i][discount]'] = v.discount.toString();
      }
      if (v.discountType != null) {
        map['variants[$i][discount_type]'] = v.discountType;
      }
    }
  }

  Future<void> _attachPictures(
    List<String> pictures,
    Map<String, dynamic> map,
  ) async {
    if (pictures.isEmpty) return;

    for (var i = 0; i < pictures.length; i++) {
      final path = pictures[i];
      if (_isUrl(path)) continue;

      map['product_pictures[$i]'] = await MultipartFile.fromFile(
        path,
        filename: path.split('/').last,
      );
    }
  }

  int? _boolTo01(dynamic v) {
    if (v == null) return null;
    if (v is bool) return v ? 1 : 0;
    if (v is int) return (v == 1) ? 1 : 0;
    if (v is String) {
      final s = v.trim().toLowerCase();
      if (s == 'true' || s == '1') return 1;
      if (s == 'false' || s == '0') return 0;
    }
    return null;
  }
}

bool _isUrl(String path) {
  return path.startsWith('http://') || path.startsWith('https://');
}
