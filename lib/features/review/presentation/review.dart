import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:image_picker/image_picker.dart';
import 'package:hvatai/core/theme/assets.dart';
import 'package:hvatai/core/extensions/size_extension.dart';
import 'package:hvatai/core/theme/app_colors.dart';
import 'package:hvatai/features/review/presentation/cubit/review_cubit/review_cubit.dart';
import 'package:hvatai/locator.dart';

part 'screens/leave_review_screen.dart';
part 'widgets/star_rating_widget.dart';
part 'widgets/photo_upload_widget.dart';
part 'widgets/review_photo_widget.dart';