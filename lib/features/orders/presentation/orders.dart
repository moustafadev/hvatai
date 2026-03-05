import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/core/extensions/size_extension.dart';
import 'package:hvatai/core/theme/app_colors.dart';
import 'package:hvatai/core/theme/assets.dart';
import 'package:hvatai/features/orders/data/model/order_model/order_model.dart';
import 'package:hvatai/features/orders/presentation/cubit/my_orders_cubit.dart';

/// Order card widget displaying order information
/// Shows product image, status, name, address, and price
import 'dart:async';

import 'package:hvatai/locator.dart';




part 'screens/my_orders_screen.dart';
part 'widgets/order_card.dart';
part 'widgets/orders_content.dart';
part 'widgets/orders_empty_state.dart';
part 'widgets/orders_filter_bar.dart';
part 'widgets/orders_list.dart';