import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_stream_media_model.freezed.dart';
part 'update_stream_media_model.g.dart';

@freezed
class UpdateStreamMediaModel with _$UpdateStreamMediaModel {
  const factory UpdateStreamMediaModel({
    required String title,
    required String description,
    String? thumbnailUrl,
    @Default(true) bool isPublic,
  }) = _UpdateStreamMediaModel;

  factory UpdateStreamMediaModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateStreamMediaModelFromJson(json);
}
