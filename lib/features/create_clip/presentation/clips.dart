import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/core/extensions/size_extension.dart';
import 'package:hvatai/core/theme/app_colors.dart';
import 'package:hvatai/core/theme/assets.dart';
import 'package:hvatai/features/create_clip/presentation/cubit/create_clip_cubit/create_clip_cubit.dart';
import 'package:hvatai/features/create_clip/presentation/cubit/create_clip_cubit/create_clip_state.dart';
import 'package:hvatai/features/create_clip/presentation/cubit/preview_clip_cubit/preview_clip_cubit.dart';
import 'package:hvatai/features/create_clip/presentation/cubit/preview_clip_cubit/preview_clip_state.dart';
import 'package:video_player/video_player.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

part 'screens/create_clip_screen.dart';
part 'screens/preview_clip_screen.dart';
part 'widgets/custom_trim_slider.dart';
part 'widgets/edit_video_body.dart';
part 'widgets/edit_video_editor.dart';
part 'widgets/save_button.dart';
