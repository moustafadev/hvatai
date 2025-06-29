// auction_product.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auction_product.freezed.dart';

@freezed
class AuctionProduct with _$AuctionProduct {
  const factory AuctionProduct({
    required String id,
    required String title,
    required String description,
    required String price,
    required List<String> images,
    required Map<String, dynamic> bidders,
    required bool isSold,
    required String ownerId,
  }) = _AuctionProduct;
}
