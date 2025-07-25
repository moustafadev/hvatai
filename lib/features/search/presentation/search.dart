import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/core/extensions/size_extension.dart';
import 'package:hvatai/core/theme/app_colors.dart';
import 'package:hvatai/core/theme/assets.dart';
import 'package:hvatai/features/auth/data/models/registration_model/user_registration_data.dart';
import 'package:hvatai/features/search/data/model/auction_product_search.dart';
import 'package:hvatai/features/search/data/model/search_live_stream_model.dart';
import 'package:hvatai/features/search/presentation/cubit/auction_search_cubit/auction_search_cubit.dart';
import 'package:hvatai/features/search/presentation/cubit/search_tabs_cubit/search_tabs_cubit.dart';
import 'package:hvatai/features/search/presentation/cubit/search_tabs_cubit/search_tabs_state.dart';
import 'package:hvatai/locator.dart';

part 'widgets/top_search_bar_widget.dart';
part 'widgets/search_recently.dart';
part 'screens/search_screen.dart';
part 'widgets/categories_tabs_search_widget.dart';
part 'widgets/subscribe_electronics.dart';
part 'widgets/search_live_video_widget.dart';
part 'widgets/button_tab_bar_search.dart';
part 'widgets/top_electronics_container.dart';
part 'widgets/reusable_custom_container.dart';
part 'widgets/my_category_search.dart';
part 'widgets/auction_card_search.dart';
part 'widgets/auction_search_widget.dart';
part 'widgets/users_search_widget.dart';
