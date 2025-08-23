import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/features/profile/data/model/create_stream/create_stream_model.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';
import 'package:hvatai/features/profile/domain/usecases/create_stream_uscecase.dart';
import 'package:hvatai/features/profile/domain/usecases/get_my_products_usecase.dart';
import 'package:hvatai/features/stream/presentation/stream.dart';
import 'package:hvatai/routes/app_routes.dart';

part 'add_stream_cubit.freezed.dart';
part 'add_stream_state.dart';

class AddStreamCubit extends Cubit<AddStreamState> {
  final GetMyProductsUsecase _getMyProductsUsecase;
  final CreateStreamUsecase _createStreamUsecase;

  AddStreamCubit(this._getMyProductsUsecase, this._createStreamUsecase)
      : super(
          AddStreamState(
            createStreamModel: CreateStreamModel(
              title: '',
              description: '',
              isRecordingEnabled: false,
              isPublic: false,
              enableComments: false,
              enableBidding: false,
              minimumBidIncrement: 1,
              autoDeleteAfterEnd: false,
              autoDeleteHours: 24,
              saveRecording: false,
              productIds: [],
            ),
          ),
        );

  // ----------------------------
  // Product Loading Logic
  // ----------------------------
  Future<void> loadProducts() async {
    emit(state.copyWith(isProductsLoading: true, error: null));
    final result = await _getMyProductsUsecase(unit);

    result.fold(
      (failure) =>
          emit(state.copyWith(isProductsLoading: false, error: failure)),
      (products) =>
          emit(state.copyWith(isProductsLoading: false, products: products)),
    );
  }

  // ----------------------------
  // CreateStreamModel Updaters
  // ----------------------------

  void updateTitle(String value) {
    emit(state.copyWith(
      createStreamModel: state.createStreamModel.copyWith(title: value),
    ));
  }

  void updateDescription(String value) {
    emit(state.copyWith(
      createStreamModel: state.createStreamModel.copyWith(description: value),
    ));
  }

  void updateScheduledAt(DateTime value) {
    emit(state.copyWith(
      createStreamModel: state.createStreamModel.copyWith(scheduledAt: value),
    ));
  }

  void toggleIsRecordingEnabled() {
    emit(state.copyWith(
      createStreamModel: state.createStreamModel.copyWith(
        isRecordingEnabled: !state.createStreamModel.isRecordingEnabled,
      ),
    ));
  }

  void toggleIsPublic() {
    emit(state.copyWith(
      createStreamModel: state.createStreamModel.copyWith(
        isPublic: !state.createStreamModel.isPublic,
      ),
    ));
  }

  void toggleEnableComments() {
    emit(state.copyWith(
      createStreamModel: state.createStreamModel.copyWith(
        enableComments: !state.createStreamModel.enableComments,
      ),
    ));
  }

  void toggleEnableBidding() {
    emit(state.copyWith(
      createStreamModel: state.createStreamModel.copyWith(
        enableBidding: !state.createStreamModel.enableBidding,
      ),
    ));
  }

  void updateMinimumBidIncrement(double value) {
    emit(state.copyWith(
      createStreamModel: state.createStreamModel.copyWith(
        minimumBidIncrement: value,
      ),
    ));
  }

  void toggleAutoDeleteAfterEnd() {
    emit(state.copyWith(
      createStreamModel: state.createStreamModel.copyWith(
        autoDeleteAfterEnd: !state.createStreamModel.autoDeleteAfterEnd,
      ),
    ));
  }

  void updateAutoDeleteHours(int hours) {
    emit(state.copyWith(
      createStreamModel: state.createStreamModel.copyWith(
        autoDeleteHours: hours,
      ),
    ));
  }

  void toggleSaveRecording() {
    emit(state.copyWith(
      createStreamModel: state.createStreamModel.copyWith(
        saveRecording: !state.createStreamModel.saveRecording,
      ),
    ));
  }

  void updateProductIds(List<int> ids) {
    emit(state.copyWith(
      createStreamModel: state.createStreamModel.copyWith(productIds: ids),
    ));
  }

  void addProductId(int id) {
    final ids = List<int>.from(state.createStreamModel.productIds);
    if (!ids.contains(id)) {
      ids.add(id);
      updateProductIds(ids);
    }
  }

  void removeProductId(int id) {
    final ids = List<int>.from(state.createStreamModel.productIds)..remove(id);
    updateProductIds(ids);
  }

  Future<void> createStream(BuildContext context) async {
    emit(state.copyWith(isLoading: true, error: null));

    final result = await _createStreamUsecase(state.createStreamModel);

    result.fold(
      (failure) {
        showFloatingMessageError(failure);
        emit(state.copyWith(isLoading: false, error: failure));
      },
      (streamResponse) {
        showFloatingMessageSuccess('Stream created successfully');
        context.push(
          AppRoutes.liveStream,
          extra: {
            'appId': streamResponse.data?.agoraAppId ?? '',
            'channelName': streamResponse.data?.channelName ?? '',
            'agoraToken': streamResponse.data?.agoraToken ?? '',
            'agoraUid': streamResponse.data?.agoraUid ?? 0, // <-- add this
            'userRole' : UserRole.broadcaster
        
          },
        );
        emit(state.copyWith(isLoading: false));
      },
    );
  }
}
