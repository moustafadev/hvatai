import 'package:hvatai/features/profile/data/model/stream_response_model/stream_response_model.dart';

class SearchLiveStreamModel {
  final String channelId;
  final String adminName;
  final String adminPhoto;
  final int viewsCount;
  final String title;
  final String description;
  final String liveImage;
  final String selectedProductImage;
  final String category;
  final bool isBlocked;
  final String adminId;
  final bool unblockRequested;
  final String unblockRequestReason;
  final String price;
  final String latestThumbnailUrl;
  final String latestGifUrl;

  SearchLiveStreamModel({
    required this.channelId,
    required this.adminName,
    required this.adminPhoto,
    required this.price,
    required this.viewsCount,
    required this.title,
    required this.description,
    required this.liveImage,
    required this.selectedProductImage,
    required this.category,
    required this.isBlocked,
    required this.adminId,
    required this.unblockRequested,
    required this.unblockRequestReason,
    required this.latestThumbnailUrl,
    required this.latestGifUrl,
  });

  factory SearchLiveStreamModel.fromJson(Map<String, dynamic> json) {
    return SearchLiveStreamModel(
      channelId: json['channelId'] ?? '',
      adminName: json['adminName'] ?? '',
      adminPhoto: json['adminPhoto'] ?? '',
      viewsCount: json['viewsCount'] ?? 0,
      price: json['price'] ?? '',
      title: json['title'] ?? '',
      latestThumbnailUrl: json['latestThumbnailUrl'] ?? '',
      latestGifUrl: json['latestGifUrl'] ?? '',
      description: json['description'] ?? '',
      liveImage: json['liveImage'] ?? '',
      selectedProductImage: json['selectedProductImage'] ?? '',
      category: json['category'] ?? '',
      isBlocked: json['isBlocked'] ?? false,
      adminId: json['adminId'] ?? '',
      unblockRequested: json['unblockRequested'] ?? false,
      unblockRequestReason: json['unblockRequestReason'] ?? '',
    );
  }

  StreamDataModel toStreamDataModel() {
    return StreamDataModel(
      id: int.tryParse(channelId),
      channelName: channelId,
      title: title.isNotEmpty ? title : null,
      description: description.isNotEmpty ? description : null,
      viewerCount: viewsCount,
      latestThumbnailUrl:
          latestThumbnailUrl.isNotEmpty ? latestThumbnailUrl : null,
      latestGifUrl: latestGifUrl.isNotEmpty ? latestGifUrl : null,
      thumbnailUrl: liveImage.isNotEmpty ? liveImage : null,
      status: 'live',
      user: StreamUserModel(
        id: int.tryParse(adminId),
        name: adminName.isNotEmpty ? adminName : null,
        image: adminPhoto.isNotEmpty ? adminPhoto : null,
      ),
      streamProducts: price.isNotEmpty && price != '0'
          ? [
              StreamProductModel(
                startingPrice: price,
                product: StreamEmbeddedProductModel(
                  name: title.isNotEmpty ? title : null,
                  description: description.isNotEmpty ? description : null,
                ),
              )
            ]
          : null,
      categories: category.isNotEmpty
          ? [
              StreamCategoryModel(
                name: category,
              )
            ]
          : null,
    );
  }
}
