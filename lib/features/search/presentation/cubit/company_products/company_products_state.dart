part of 'company_products_cubit.dart';

@freezed
class CompanyProductsState with _$CompanyProductsState {
  const factory CompanyProductsState({
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
    @Default(<ProductModel>[]) List<ProductModel> products,
  }) = _CompanyProductsState;
}
