import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/activity/data/models/user_bids_response/user_bids_response.dart';
import 'package:hvatai/features/activity/domain/usecases/get_favorites_usecase.dart';
import 'package:hvatai/features/activity/domain/usecases/get_user_bids_usecase.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';
import 'package:hvatai/features/profile/data/model/stream_response_model/stream_response_model.dart';
import 'package:hvatai/features/stream/domain/usecases/get_my_streams_usecase.dart';

part 'activity_cubit.freezed.dart';
part 'activity_state.dart';

class ActivityCubit extends Cubit<ActivityState> {
  ActivityCubit(
    this.getFavoritesUsecase,
    this.getMyStreamsUsecase,
    this.getUserBidsUsecase,
  ) : super(const ActivityState());

  final GetFavoritesUsecase getFavoritesUsecase;
  final GetMyStreamsUsecase getMyStreamsUsecase;
  final GetUserBidsUsecase getUserBidsUsecase;
  
  TabController? _tabController;
  TabController? _bidTabController;
  
  TabController? get tabController => _tabController;
  TabController? get bidTabController => _bidTabController;
  
  void initializeControllers(TickerProvider vsync) {
    _tabController?.dispose();
    _bidTabController?.dispose();
    
    _tabController = TabController(length: 3, vsync: vsync);
    _bidTabController = TabController(length: 2, vsync: vsync);
    
    _tabController!.addListener(() {
      if (!_tabController!.indexIsChanging) {
        changeTab(_tabController!.index);
      }
    });
    
    _bidTabController!.addListener(() {
      if (!_bidTabController!.indexIsChanging) {
        changeBidSubTab(_bidTabController!.index);
      }
    });
  }

  void changeTab(int index) {
    if (state.selectedTabIndex != index) {
      emit(state.copyWith(selectedTabIndex: index));
      _loadTabData(index);
    }
  }

  void changeBidSubTab(int index) {
    if (state.selectedBidSubTabIndex != index) {
      emit(state.copyWith(selectedBidSubTabIndex: index));
    }
  }
  
  void syncTabController() {
    if (_tabController != null) {
      if (_tabController!.index != state.selectedTabIndex &&
          !_tabController!.indexIsChanging) {
        _tabController!.animateTo(state.selectedTabIndex);
      }
    }
  }
  
  void syncBidTabController() {
    if (_bidTabController != null &&
        _bidTabController!.index != state.selectedBidSubTabIndex &&
        !_bidTabController!.indexIsChanging) {
      _bidTabController!.animateTo(state.selectedBidSubTabIndex);
    }
  }

  void _loadTabData(int tabIndex) {
    switch (tabIndex) {
      case 0: // Favorites
        getFavorites();
        break;
      case 1: // Streams
        getMyStreams();
        break;
      case 2: // Bids
        getUserBids();
        break;
    }
  }

  Future<void> getFavorites() async {
    emit(state.copyWith(isLoadingFavorites: true, favoritesError: ''));
    final result = await getFavoritesUsecase.call(unit);
    result.fold(
      (failure) => emit(state.copyWith(
        isLoadingFavorites: false,
        favoritesError: failure,
      )),
      (response) => emit(state.copyWith(
        isLoadingFavorites: false,
        favorites: response.data?.products ?? [],
      )),
    );
  }

  Future<void> getMyStreams() async {
    emit(state.copyWith(isLoadingStreams: true, streamsError: ''));
    final result = await getMyStreamsUsecase.call(const NoParams());
    result.fold(
      (failure) => emit(state.copyWith(
        isLoadingStreams: false,
        streamsError: failure,
      )),
      (response) => emit(state.copyWith(
        isLoadingStreams: false,
        streams: response.data ?? [],
      )),
    );
  }

  Future<void> getUserBids() async {
    emit(state.copyWith(isLoadingBids: true, bidsError: ''));
    final result = await getUserBidsUsecase.call(unit);
    result.fold(
      (failure) => emit(state.copyWith(
        isLoadingBids: false,
        bidsError: failure,
      )),
      (response) {
        final allBids = response.data;
        final activeBids = allBids.where((bid) {
          return bid.status == 'AUCTIONLIVE' || bid.status == 'ENDED';
        }).toList();
        final historyBids = allBids.where((bid) {
          return bid.status == 'WON' ||
              bid.status == 'PAID' ||
              bid.status == 'LOST';
        }).toList();

        emit(state.copyWith(
          isLoadingBids: false,
          allBids: allBids,
          activeBids: activeBids,
          historyBids: historyBids,
        ));
      },
    );
  }

  void init() {
    _loadTabData(state.selectedTabIndex);
  }
  
  @override
  Future<void> close() {
    _tabController?.dispose();
    _bidTabController?.dispose();
    return super.close();
  }
}
