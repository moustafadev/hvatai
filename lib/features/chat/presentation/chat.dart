import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/core/datasources/local/app_local.dart';
import 'package:hvatai/core/shared/utils/date_utils_format.dart';
import 'package:hvatai/core/theme/app_colors.dart';
import 'package:hvatai/routes/app_routes.dart';
import 'package:image_picker/image_picker.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:flutter_html/flutter_html.dart';

import 'package:hvatai/core/theme/assets.dart';
import 'package:hvatai/features/chat/data/models/chat/chat_model.dart';
import 'package:hvatai/features/chat/data/models/message/message_model.dart';
import 'package:hvatai/features/chat/data/models/support_chat/support_chat_model.dart';
import 'package:hvatai/features/chat/presentation/cubit/chats_cubit.dart';
import 'package:hvatai/features/home/presentation/home.dart';
import 'package:hvatai/features/search/data/model/user_data_model.dart';
import 'package:hvatai/locator.dart';

part 'pages/chat_screen.dart';
part 'pages/chat_details_screen.dart';
part 'pages/chat_support_details_screen.dart';
part 'widgets/chat_details_header.dart';
part 'widgets/chat_details_support_header.dart';
part 'widgets/chat_bubble.dart';
part 'widgets/chat_message_list.dart';
part 'widgets/chat_input_field.dart';
part 'widgets/chat_tile.dart';
part 'widgets/support_chat_tile.dart';

/// Convert UserDataModel to UserChatModel
UserChatModel _userDataModelToUserChatModel(UserDataModel user) {
  final fullName = [
    user.name,
    user.lastName,
  ].where((element) => (element ?? '').isNotEmpty).join(' ').trim();

  return UserChatModel(
    id: user.id,
    name: fullName.isNotEmpty ? fullName : user.name,
    email: user.email,
    phone: user.phone,
    image: user.image,
    personalRating: user.personalRating,
    personalRatingCount: user.personalRatingCount,
  );
}

/// Navigate to chat details, handling both existing and new chats
void navigateToChatDetails(BuildContext context, UserDataModel user) {
  final cubit = ChatsCubit.get(context);
  final userId = user.id;

  if (userId == null || userId == 0) {
    return;
  }

  // Convert UserDataModel to UserChatModel
  final userChatModel = _userDataModelToUserChatModel(user);

  // Try to find existing chat
  final existingChat = cubit.findChatByParticipantId(userId);

  // Navigate to chat details with or without chatId
  // Use full path since chatDetails is nested under chatRoot
  context.push(
    '${AppRoutes.chatRoot}/${AppRoutes.chatDetails}',
    extra: {
      'user': userChatModel,
      'chatId': existingChat?.id,
    },
  );
}
