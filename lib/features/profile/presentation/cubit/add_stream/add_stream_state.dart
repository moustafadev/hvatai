part of 'add_stream_cubit.dart';

@freezed
class AddStreamState with _$AddStreamState {
  const factory AddStreamState({
    @Default(0) int selectedCategoryIndex,
    @Default([]) List<AuctionProduct> products,
    @Default([]) List<File> selectedImages,
    @Default(0) int selectedButtonIndex,
    @Default(false) bool selfDestruction,
    @Default(false) bool bookParticipation,
    @Default(false) bool pickupFree,
    @Default(1) int quantity,
  }) = _AddStreamState;
}
