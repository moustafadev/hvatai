import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/core/extensions/size_extension.dart';
import 'package:hvatai/core/theme/app_colors.dart';
import 'package:hvatai/core/theme/assets.dart';
import 'package:hvatai/features/profile/data/model/card_model/card_model.dart';
import 'package:hvatai/features/profile/presentation/cubit/payment_method/payment_method_cubit.dart';
import 'package:hvatai/features/profile/presentation/cubit/profile_cubit/profile_cubit.dart';
import 'package:hvatai/features/wallet/presentation/cubit/wallet_cubit/wallet_cubit.dart';
import 'package:hvatai/locator.dart';
import 'package:hvatai/routes/app_routes.dart';

part 'screens/wallet_screen.dart';
part 'widgets/withdraw_bottom_sheet.dart';
part 'widgets/wallet_loading_screen.dart';
part 'widgets/wallet_success_screen.dart';

