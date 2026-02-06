import 'package:freezed_annotation/freezed_annotation.dart';

part 'clips_state.freezed.dart';

@freezed
class ClipsState with _$ClipsState {
  const factory ClipsState({
    @Default(false) bool isLoading,
    @Default(false) bool isTrimming,
    @Default(false) bool isVideoLoaded,
    @Default(false) bool isPlaying,
    @Default(false) bool hasReachedEnd,
    String? videoPath,
    String? trimmedVideoPath,
    @Default('') String errorMessage,
    @Default(0.0) double startValue,
    @Default(0.0) double endValue,
    @Default('') String clipName,
  }) = _ClipsState;
}
