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
  });

  factory SearchLiveStreamModel.fromJson(Map<String, dynamic> json) {
    return SearchLiveStreamModel(
      channelId: json['channelId'] ?? '',
      adminName: json['adminName'] ?? '',
      adminPhoto: json['adminPhoto'] ?? '',
      viewsCount: json['viewsCount'] ?? 0,
      price: json['price'] ?? '',
      title: json['title'] ?? '',
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
}
