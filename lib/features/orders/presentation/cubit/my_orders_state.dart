part of 'my_orders_cubit.dart';

@freezed
class MyOrdersState with _$MyOrdersState {
  const factory MyOrdersState({
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
    @Default(<OrderModel>[]) List<OrderModel> orders,
    @Default(MyOrdersCubit.filterAll) String selectedFilter,
  }) = _MyOrdersState;
}

