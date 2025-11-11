// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/profile/data/model/stream_response_model/stream_response_model.dart';

part 'stream_comment_model.freezed.dart';
part 'stream_comment_model.g.dart';

/// ========= Comment List Response =========
@freezed
class StreamCommentResponse with _$StreamCommentResponse {
  const factory StreamCommentResponse({
    bool? success,
    StreamCommentPageData? data,
  }) = _StreamCommentResponse;

  factory StreamCommentResponse.fromJson(Map<String, dynamic> json) =>
      _$StreamCommentResponseFromJson(json);
}

/// ========= Paginated Comments =========
@freezed
class StreamCommentPageData with _$StreamCommentPageData {
  const factory StreamCommentPageData({
    @JsonKey(name: 'current_page') int? currentPage,
    List<StreamCommentModel>? data,
    @JsonKey(name: 'first_page_url') String? firstPageUrl,
    int? from,
    @JsonKey(name: 'last_page') int? lastPage,
    @JsonKey(name: 'last_page_url') String? lastPageUrl,
    List<PageLink>? links,
    @JsonKey(name: 'next_page_url') String? nextPageUrl,
    String? path,
    @JsonKey(name: 'per_page') int? perPage,
    @JsonKey(name: 'prev_page_url') String? prevPageUrl,
    int? to,
    int? total,
  }) = _StreamCommentPageData;

  factory StreamCommentPageData.fromJson(Map<String, dynamic> json) =>
      _$StreamCommentPageDataFromJson(json);
}

/// ========= Single Comment =========
@freezed
class StreamCommentModel with _$StreamCommentModel {
  const factory StreamCommentModel({
    int? id,
    @JsonKey(name: 'stream_id') int? streamId,
    @JsonKey(name: 'user_id') int? userId,
    String? message,
    String? type,
    dynamic metadata,
    @JsonKey(name: 'is_visible') bool? isVisible,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    StreamUserModel? user,
  }) = _StreamCommentModel;

  factory StreamCommentModel.fromJson(Map<String, dynamic> json) =>
      _$StreamCommentModelFromJson(json);
}

/// ========= Pagination Link =========
@freezed
class PageLink with _$PageLink {
  const factory PageLink({
    String? url,
    String? label,
    bool? active,
  }) = _PageLink;

  factory PageLink.fromJson(Map<String, dynamic> json) =>
      _$PageLinkFromJson(json);
}
