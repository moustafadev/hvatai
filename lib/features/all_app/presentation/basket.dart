import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/core/extensions/size_extension.dart';
import 'package:hvatai/core/theme/app_colors.dart';
import 'package:hvatai/core/theme/assets.dart';
import 'package:hvatai/features/all_app/data/model/cart_model.dart';
import 'package:hvatai/features/all_app/presentation/cubit/basket_cubit/basket_cubit.dart';
import 'package:hvatai/features/all_app/presentation/cubit/product_detials/product_details_cubit.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';
import 'package:hvatai/features/profile/presentation/profile.dart';
import 'package:hvatai/locator.dart';
import 'package:hvatai/routes/app_routes.dart';

part 'widgets/quantity_buttons.dart';

part 'screens/all_products_cart_screen.dart';
part 'screens/product_details_screen.dart';
part 'widgets/custom_product_card.dart';
