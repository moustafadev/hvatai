import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/profile/data/model/stream_response_model/stream_response_model.dart';
import 'package:hvatai/features/search/domain/usecases/get_company_streams_usecase.dart';
import 'package:hvatai/features/stream/data/models/my_streams/my_streams_response.dart';

part 'company_streams_cubit.freezed.dart';
part 'company_streams_state.dart';

class CompanyStreamsCubit extends Cubit<CompanyStreamsState> {
  CompanyStreamsCubit(this._getCompanyStreamsUsecase)
      : super(const CompanyStreamsState());

  final GetCompanyStreamsUsecase _getCompanyStreamsUsecase;

  Future<void> loadCompanyStreams(int userId) async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));

    final result = await _getCompanyStreamsUsecase(
      GetCompanyStreamsParams(userId: userId),
    );

    result.fold(
      (failure) => emit(state.copyWith(
        isLoading: false,
        errorMessage: failure,
      )),
      (response) => emit(state.copyWith(
        isLoading: false,
        streams: response.data ?? [],
        pagination: response.pagination,
        stats: response.stats,
        errorMessage: '',
      )),
    );
  }
}

