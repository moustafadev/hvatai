import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/core/extensions/size_extension.dart';
import 'package:hvatai/core/theme/app_colors.dart';
import 'package:hvatai/core/theme/assets.dart';
import 'package:hvatai/features/product/data/model/cart_model.dart';
import 'package:hvatai/features/product/presentation/cubit/basket_cubit/basket_cubit.dart';
import 'package:hvatai/features/product/presentation/cubit/product_detials/product_details_cubit.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/profile/data/model/product_model/product_model.dart';
import 'package:hvatai/features/profile/presentation/cubit/payment_method/payment_method_cubit.dart';
import 'package:hvatai/features/profile/presentation/cubit/profile_cubit/profile_cubit.dart';
import 'package:hvatai/features/profile/presentation/profile.dart';
import 'package:hvatai/core/customs/payment_methods_section.dart';
import 'package:hvatai/locator.dart';
import 'package:hvatai/routes/app_routes.dart';

part 'widgets/quantity_buttons.dart';
part 'screens/all_products_cart_screen.dart';
part 'screens/product_details_screen.dart';
part 'widgets/order_loading_screen.dart';
part 'widgets/order_success_screen.dart';
part 'widgets/order_error_screen.dart';

// Product Details Widgets
part 'widgets/product_details/product_details_image_carousel.dart';
part 'widgets/product_details/product_details_header.dart';
part 'widgets/product_details/product_details_badges.dart';
part 'widgets/product_details/product_details_actions.dart';
part 'widgets/product_details/product_details_delivery_info.dart';
part 'widgets/product_details/product_details_seller.dart';
part 'widgets/product_details/product_details_other_products.dart';
part 'widgets/product_details/product_details_content.dart';
part 'widgets/product_details/product_details_floating_button.dart';

// All Products Cart Widgets
part 'widgets/all_products_cart/cart_product_list.dart';
part 'widgets/all_products_cart/cart_pay_button.dart';
part 'widgets/all_products_cart/cart_content.dart';
part 'widgets/all_products_cart/cart_empty_state.dart';
part 'widgets/all_products_cart/cart_loading_state.dart';
part 'widgets/all_products_cart/cart_error_state.dart';
part 'widgets/all_products_cart/cart_screen_body.dart';
part 'widgets/all_products_cart/cart_main_content.dart';

// Custom Product Card Widgets
part 'widgets/custom_product_card/custom_product_card.dart';
part 'widgets/custom_product_card/product_card_image_section.dart';
part 'widgets/custom_product_card/product_card_info_section.dart';
part 'widgets/custom_product_card/product_card_price_section.dart';
