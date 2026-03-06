import 'package:freezed_annotation/freezed_annotation.dart';

part 'preview_images_model.freezed.dart';
part 'preview_images_model.g.dart';

@freezed
class PreviewImagesResponse with _$PreviewImagesResponse {
  const factory PreviewImagesResponse({
    bool? success,
    String? message,
    PreviewImagesData? data,
  }) = _PreviewImagesResponse;

  factory PreviewImagesResponse.fromJson(Map<String, dynamic> json) =>
      _$PreviewImagesResponseFromJson(json);
}

@freezed
class PreviewImagesData with _$PreviewImagesData {
  const factory PreviewImagesData({
    int? duration,
    int? interval,
    int? count,
    List<PreviewImage>? images,
  }) = _PreviewImagesData;

  factory PreviewImagesData.fromJson(Map<String, dynamic> json) =>
      _$PreviewImagesDataFromJson(json);
}

@freezed
class PreviewImage with _$PreviewImage {
  const factory PreviewImage({
    String? timestamp,
    @JsonKey(name: 'timestamp_seconds') int? timestampSeconds,
    String? path,
    String? url,
  }) = _PreviewImage;

  factory PreviewImage.fromJson(Map<String, dynamic> json) =>
      _$PreviewImageFromJson(json);
}