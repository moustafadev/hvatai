// auction_product.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auction_product_search.freezed.dart';

@freezed
class AuctionProductSearch with _$AuctionProductSearch {
  const factory AuctionProductSearch({
    required String id,
    required String title,
    required String description,
    required String price,
    required List<String> images,
    required Map<String, dynamic> bidders,
    required bool isSold,
    required String ownerId,
  }) = _AuctionProductSearch;
}
