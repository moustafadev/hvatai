import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_nav_cubit.freezed.dart';
part 'bottom_nav_state.dart';

class BottomNavCubit extends Cubit<BottomNavState> {
  BottomNavCubit() : super(BottomNavState.initial()) {
    _init();
  }

  void _init() {
    // Mock block checks
    emit(state.copyWith(
      isBlocked: false, // Simulate no blocks
      uid: 10000 + Random().nextInt(90000),
      channelId: _generateChannelId(),
    ));
  }

  String _generateChannelId() {
    const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    return List.generate(5, (i) => chars[Random().nextInt(chars.length)]).join();
  }

  void selectTab(int index) => emit(state.copyWith(selectedIndex: index));
}
