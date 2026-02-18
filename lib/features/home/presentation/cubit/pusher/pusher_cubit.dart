import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hvatai/core/datasources/local/app_local.dart';
import 'package:hvatai/features/chat/data/models/socket_message/socket_message_model.dart';
import 'package:hvatai/features/chat/presentation/cubit/chats_cubit.dart';
import 'package:hvatai/features/chat/presentation/pages/chat_service.dart';
import 'package:hvatai/locator.dart';
import 'package:pusher_client_socket/pusher_client_socket.dart';

import 'pusher_state.dart';

class PusherCubit extends Cubit<PusherState> {
  final PusherManager _pusherManager;

  PusherClient? _pusher;
  Channel? _channel;
  String? _subscribedChannelName;

  bool _inChat = false;

  PusherCubit(this._pusherManager) : super(const PusherState());

  void setInChat(bool value) => _inChat = value;

  Future<void> connect(BuildContext context) async {
    if (state.isConnecting || state.isConnected) return;

    final token = locator<AppLocal>().getToken();
    if (token?.isEmpty ?? true) return;

    emit(state.copyWith(isConnecting: true, errorMessage: null));

    try {
      await _disconnectInternal();

      _pusher = _pusherManager.initializePusher();
      if (context.mounted) {
        await _subscribeToUserChannel(context);
      }

      emit(state.copyWith(isConnecting: false, isConnected: true));
    } catch (e) {
      emit(state.copyWith(
        isConnecting: false,
        isConnected: false,
        isSubscribed: false,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> _subscribeToUserChannel(BuildContext context) async {
    final userId = locator<AppLocal>().getUserId();
    final channelName = 'private-user.$userId';
    _subscribedChannelName = channelName;
    final chatsCubit = context.read<ChatsCubit>();

    _channel = _pusher!.subscribe(channelName);

    _channel!.bind('MessageSent', (data) {
      try {
        final message =
            SocketMessageModel.fromJson(data).message.toMessageModel();
        chatsCubit.updateChatWithNewMessage(message);

        final currentChatId = chatsCubit.state.currentChatId;
        if (message.chatId == currentChatId && message.sender?.id != userId) {
          chatsCubit.addMessage(message);
        }
      } catch (e) {
        debugPrint('[Pusher] MessageSent parse error: $e');
      }
    });

    _channel!.bind('MessagesRead', (data) {
      try {
        final chatId = (data is Map) ? data['chat_id'] : null;
        if (_inChat) {
          chatsCubit.markLastMessageAsReadInChat(chatId);
        }

        if (chatId == chatsCubit.state.currentChatId) {
          chatsCubit.markAllMessagesAsReadLocally();
        }
      } catch (e) {
        debugPrint('[Pusher] MessagesRead parse error: $e');
      }
    });

    emit(state.copyWith(isSubscribed: true));
  }

  Future<void> disconnect() async {
    await _disconnectInternal();
    emit(const PusherState());
  }

  Future<void> _disconnectInternal() async {
    try {
      _channel?.unbind('MessageSent');
      _channel?.unbind('MessagesRead');

      if (_pusher != null && _subscribedChannelName != null) {
        _pusher!.unsubscribe(_subscribedChannelName!);
      }

      _subscribedChannelName = null;
      _channel = null;

      _pusherManager.dispose();
      _pusher = null;
    } catch (_) {}
  }

  @override
  Future<void> close() async {
    await _disconnectInternal();
    return super.close();
  }
}
