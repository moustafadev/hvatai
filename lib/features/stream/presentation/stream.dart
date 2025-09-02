import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'dart:async';

import 'package:flutter_svg/svg.dart';
import 'package:hvatai/core/extensions/size_extension.dart';
import 'package:hvatai/core/theme/app_colors.dart';
import 'package:hvatai/core/theme/assets.dart';
import 'package:hvatai/features/chat/presentation/pages/chat_service.dart';
import 'package:hvatai/features/profile/data/model/stream_response_model/stream_response_model.dart';
import 'package:hvatai/features/stream/data/models/stream_comment_model.dart';
import 'package:hvatai/features/stream/data/models/viewer_joined_event.dart';
import 'package:hvatai/features/stream/presentation/cubit/live_stream_cubit.dart';
import 'package:hvatai/locator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:pusher_client_socket/channels/channel.dart';
import 'package:pusher_client_socket/pusher_client_socket.dart';

part 'screens/live_stream_screen.dart';
part 'widgets/company_details_widget.dart';
part 'widgets/company_info.dart';
part 'widgets/viewer_count_widget.dart';
part 'widgets/right_icon.dart';
part 'widgets/right_side_icons.dart';
part 'widgets/comments_compact_list.dart';
part 'widgets/live_bottom_panel.dart';
