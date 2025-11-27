import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';
import 'package:hvatai/features/search/domain/usecases/get_company_products_usecase.dart';

part 'company_products_cubit.freezed.dart';
part 'company_products_state.dart';

class CompanyProductsCubit extends Cubit<CompanyProductsState> {
  CompanyProductsCubit(this._getCompanyProductsUsecase)
      : super(const CompanyProductsState());

  final GetCompanyProductsUsecase _getCompanyProductsUsecase;

  Future<void> fetchProducts(int userId) async {
    if (userId == 0) {
      emit(
        state.copyWith(
          isLoading: false,
          errorMessage: 'User id is missing',
        ),
      );
      return;
    }

    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final result = await _getCompanyProductsUsecase(
        GetCompanyProductsParams(userId: userId));

    result.fold(
      (failure) => emit(
        state.copyWith(
          isLoading: false,
          errorMessage: failure,
        ),
      ),
      (products) => emit(
        state.copyWith(
          isLoading: false,
          products: products,
        ),
      ),
    );
  }
}
