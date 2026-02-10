import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/core/extensions/size_extension.dart';
import 'package:hvatai/core/theme/app_colors.dart';
import 'package:hvatai/features/add_new_product/presentation/cubit/product_form_cubit/product_form_cubit.dart';

import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';
import 'package:hvatai/locator.dart';

// Cubit
export 'cubit/product_form_cubit/product_form_cubit.dart';

// Screens
part 'screens/add_new_products_screen.dart';

// Widgets
part 'widgets/category_dropdown.dart';
