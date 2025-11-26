// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_model.freezed.dart';
part 'transaction_model.g.dart';

@freezed
class TransactionResponse with _$TransactionResponse {
  const factory TransactionResponse({
    bool? success,
    String? message,
    TransactionData? data,
  }) = _TransactionResponse;

  factory TransactionResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionResponseFromJson(json);
}

@freezed
class TransactionData with _$TransactionData {
  const factory TransactionData({
    List<TransactionModel>? transactions,
    PaginationModel? pagination,
  }) = _TransactionData;

  factory TransactionData.fromJson(Map<String, dynamic> json) =>
      _$TransactionDataFromJson(json);
}

@freezed
class TransactionModel with _$TransactionModel {
  const factory TransactionModel({
    int? id,
    @JsonKey(name: 'wallet_id') int? walletId,
    String? type,
    String? amount,
    @JsonKey(name: 'balance_after') String? balanceAfter,
    String? description,
    @JsonKey(name: 'reference_id') int? referenceId,
    @JsonKey(name: 'reference_type') String? referenceType,
    String? status,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _TransactionModel;

  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionModelFromJson(json);
}

@freezed
class PaginationModel with _$PaginationModel {
  const factory PaginationModel({
    int? total,
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'total_pages') int? totalPages,
    @JsonKey(name: 'per_page') int? perPage,
  }) = _PaginationModel;

  factory PaginationModel.fromJson(Map<String, dynamic> json) =>
      _$PaginationModelFromJson(json);
}

@freezed
class WithdrawResponse with _$WithdrawResponse {
  const factory WithdrawResponse({
    bool? success,
    String? message,
    Map<String, dynamic>? data,
  }) = _WithdrawResponse;

  factory WithdrawResponse.fromJson(Map<String, dynamic> json) =>
      _$WithdrawResponseFromJson(json);
}

