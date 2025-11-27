part of 'company_streams_cubit.dart';

@freezed
class CompanyStreamsState with _$CompanyStreamsState {
  const factory CompanyStreamsState({
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
    @Default([]) List<StreamDataModel> streams,
    MyStreamsPagination? pagination,
    MyStreamsStats? stats,
  }) = _CompanyStreamsState;
}

