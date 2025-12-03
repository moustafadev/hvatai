import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';

class FavoriteUpdatedEvent {
  final int productId;
  final bool isFavorite;
  final int favoritesCount;
  final ProductModel? product;

  FavoriteUpdatedEvent({
    required this.productId,
    required this.isFavorite,
    required this.favoritesCount,
    this.product,
  });
}

class ProductAddedEvent {
  final ProductModel product;

  ProductAddedEvent(this.product);
}
