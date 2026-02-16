import 'package:freezed_annotation/freezed_annotation.dart';

part 'clip_model.freezed.dart';
part 'clip_model.g.dart';

@freezed
class ClipModel with _$ClipModel {
  const factory ClipModel({
    @Default(0) int id,
    @Default('') String name,
    @Default(false) bool status,
    @Default('') @JsonKey(name: 'video_path') String videoPath,
    @Default('') @JsonKey(name: 'video_url') String videoUrl,
    ClipStreamModel? stream,
    ClipUserModel? user,
    @JsonKey(name: 'is_favorite') bool? isFavorited,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _ClipModel;

  factory ClipModel.fromJson(Map<String, dynamic> json) =>
      _$ClipModelFromJson(json);
}

@freezed
class ClipStreamModel with _$ClipStreamModel {
  const factory ClipStreamModel({
    @Default(0) int id,
    @Default('') String title,
    @Default('') String status,
    @Default(false) @JsonKey(name: 'is_public') bool isPublic,
  }) = _ClipStreamModel;

  factory ClipStreamModel.fromJson(Map<String, dynamic> json) =>
      _$ClipStreamModelFromJson(json);
}

@freezed
class ClipUserModel with _$ClipUserModel {
  const factory ClipUserModel({
    @Default(0) int id,
    @Default('') String name,
    String? image,
  }) = _ClipUserModel;

  factory ClipUserModel.fromJson(Map<String, dynamic> json) =>
      _$ClipUserModelFromJson(json);
}

@freezed
class ClipsResponseModel with _$ClipsResponseModel {
  const factory ClipsResponseModel({
    @Default(false) bool success,
    @Default('') String message,
    @Default([]) List<ClipModel> data,
    ClipsPaginationModel? pagination,
  }) = _ClipsResponseModel;

  factory ClipsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ClipsResponseModelFromJson(json);
}

@freezed
class ClipsPaginationModel with _$ClipsPaginationModel {
  const factory ClipsPaginationModel({
    @Default(1) @JsonKey(name: 'current_page') int currentPage,
    @Default(15) @JsonKey(name: 'per_page') int perPage,
    @Default(0) int total,
    @Default(1) @JsonKey(name: 'last_page') int lastPage,
  }) = _ClipsPaginationModel;

  factory ClipsPaginationModel.fromJson(Map<String, dynamic> json) =>
      _$ClipsPaginationModelFromJson(json);
}
