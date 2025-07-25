class LiveStreamModel {
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

  LiveStreamModel({
    required this.channelId,
    required this.price,
    required this.adminName,
    required this.adminPhoto,
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

  factory LiveStreamModel.fromJson(Map<String, dynamic> json) {
    return LiveStreamModel(
      channelId: json['channelId'] ?? '',
      price: json['price'] ?? '',
      adminName: json['adminName'] ?? '',
      adminPhoto: json['adminPhoto'] ?? '',
      viewsCount: json['viewsCount'] ?? 0,
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
