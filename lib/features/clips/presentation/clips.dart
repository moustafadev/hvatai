import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/core/extensions/size_extension.dart';
import 'package:hvatai/core/theme/app_colors.dart';
import 'package:hvatai/core/theme/assets.dart';
import 'package:hvatai/features/clips/presentation/cubit/clips_cubit/clips_cubit.dart';
import 'package:hvatai/features/clips/presentation/cubit/clips_cubit/clips_state.dart';
import 'package:video_player/video_player.dart';
import 'package:video_thumbnail/video_thumbnail.dart';
import 'dart:typed_data';

part 'screens/edit_video_screen.dart';
part 'screens/preview_video_screen.dart';
part 'widgets/custom_trim_slider.dart';