part of 'add_stream_cubit.dart';

@freezed
class AddStreamState with _$AddStreamState {
  const factory AddStreamState({
    required CreateStreamModel createStreamModel,
    @Default([]) List<ProductModel> products,
    @Default(false) bool isLoading,
    @Default(false) bool isProductsLoading,
    CategoryModel? categories,
    @Default(false) bool isCategoriesLoading,
    String? error,
  }) = _AddStreamState;
}
