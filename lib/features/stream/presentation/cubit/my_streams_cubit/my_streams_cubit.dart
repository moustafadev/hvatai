import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/profile/data/model/stream_response_model/stream_response_model.dart';
import 'package:hvatai/features/stream/data/models/my_streams/my_streams_response.dart';
import 'package:hvatai/features/stream/domain/usecases/get_my_streams_usecase.dart';

part 'my_streams_cubit.freezed.dart';
part 'my_streams_state.dart';

class MyStreamsCubit extends Cubit<MyStreamsState> {
  MyStreamsCubit(this._getMyStreamsUsecase) : super(const MyStreamsState());

  final GetMyStreamsUsecase _getMyStreamsUsecase;

  Future<void> loadMyStreams() async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));
    final result = await _getMyStreamsUsecase(const NoParams());
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

