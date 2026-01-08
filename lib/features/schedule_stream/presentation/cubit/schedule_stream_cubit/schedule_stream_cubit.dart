import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/home/domain/usecases/get_streams_usecases.dart';
import 'package:hvatai/features/profile/data/model/stream_response_model/stream_response_model.dart';

part 'schedule_stream_cubit.freezed.dart';
part 'schedule_stream_state.dart';

class ScheduleStreamCubit extends Cubit<ScheduleStreamState> {
  final GetStreamsUsecase _getStreamsUsecase;

  ScheduleStreamCubit(this._getStreamsUsecase) : super(const ScheduleStreamState());

  Future<void> loadScheduledStreams({bool refresh = false}) async {
    if (refresh) {
      emit(state.copyWith(
        isLoading: true,
        errorMessage: '',
        page: 1,
        hasMore: true,
        scheduledStreams: [],
      ));
    } else if (state.isLoading || !state.hasMore) {
      return;
    } else {
      emit(state.copyWith(isLoading: true, errorMessage: ''));
    }

    final result = await _getStreamsUsecase(
      GetStreamsParams(
        status: 'scheduled',
        page: state.page,
        perPage: 15,
      ),
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          isLoading: false,
          errorMessage: failure,
        ),
      ),
      (response) {
        final streams = response.data ?? [];
        final pagination = response.pagination;
        final lastPage = pagination?.lastPage ?? 1;
        final currentPageStr = pagination?.currentPage ?? '1';
        final currentPageInt = int.tryParse(currentPageStr) ?? 1;

        emit(
          state.copyWith(
            isLoading: false,
            scheduledStreams: refresh
                ? streams
                : [...state.scheduledStreams, ...streams],
            page: currentPageInt + 1,
            lastPage: lastPage,
            hasMore: currentPageInt < lastPage,
            errorMessage: '',
          ),
        );
      },
    );
  }

  void refresh() {
    loadScheduledStreams(refresh: true);
  }
}

