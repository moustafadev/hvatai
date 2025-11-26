// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_model.freezed.dart';
part 'wallet_model.g.dart';

@freezed
class WalletResponse with _$WalletResponse {
  const factory WalletResponse({
    bool? success,
    String? message,
    WalletModel? data,
  }) = _WalletResponse;

  factory WalletResponse.fromJson(Map<String, dynamic> json) =>
      _$WalletResponseFromJson(json);
}

@freezed
class WalletModel with _$WalletModel {
  const factory WalletModel({
    int? id,
    @JsonKey(name: 'user_id') int? userId,
    String? balance,
    @JsonKey(name: 'currency_id') int? currencyId,
    String? status,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    CurrencyModel? currency,
  }) = _WalletModel;

  factory WalletModel.fromJson(Map<String, dynamic> json) =>
      _$WalletModelFromJson(json);
}

@freezed
class CurrencyModel with _$CurrencyModel {
  const factory CurrencyModel({
    int? id,
    String? name,
    @JsonKey(name: 'country_name') String? countryName,
    String? code,
    double? rate,
    String? symbol,
    String? position,
    bool? status,
    @JsonKey(name: 'is_default') bool? isDefault,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _CurrencyModel;

  factory CurrencyModel.fromJson(Map<String, dynamic> json) =>
      _$CurrencyModelFromJson(json);
}

