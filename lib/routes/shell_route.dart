import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/core/theme/app_colors.dart';
import 'package:hvatai/core/theme/assets.dart';
import 'package:go_router/go_router.dart';
import 'package:hvatai/features/activity/presentation/activity.dart';
import 'package:hvatai/features/home/presentation/home.dart';
import 'package:hvatai/features/profile/presentation/profile.dart';
import 'package:hvatai/features/search/presentation/search.dart';
import 'package:hvatai/routes/app_routes.dart';
import 'package:hvatai/routes/go_router.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

StatefulShellRoute get statefulShellRoute => StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) => PersistentTabView.router(
        tabs: [
          PersistentRouterTabConfig(
            item: ItemConfig(
                icon: Image.asset(
                  Assets.assetsIconsHome,
                  color: AppColors.blackColorIcon,
                ),
                inactiveIcon: Image.asset(
                  Assets.assetsIconsHome,
                  color: AppColors.white,
                ),
                title: "home".tr()),
          ),
          PersistentRouterTabConfig(
            item: ItemConfig(
                icon: Image.asset(
                  Assets.assetsIconsSearch,
                  color: AppColors.blackColorIcon,
                ),
                inactiveIcon: Image.asset(
                  Assets.assetsIconsSearch,
                  color: AppColors.white,
                ),
                title: "categories".tr()),
          ),
          PersistentRouterTabConfig(
            item: ItemConfig(
                icon: Image.asset(
                  Assets.assetsIconsMenu,
                  color: AppColors.blackColorIcon,
                ),
                inactiveIcon: Image.asset(
                  Assets.assetsIconsMenu,
                  color: AppColors.white,
                ),
                title: "menu".tr()),
          ),
          PersistentRouterTabConfig(
            item: ItemConfig(
                icon: Image.asset(
                  Assets.assetsIconsFav,
                  color: AppColors.blackColorIcon,
                ),
                inactiveIcon: Image.asset(
                  Assets.assetsIconsFav,
                  color: AppColors.white,
                ),
                title: "activity".tr()),
          ),
          PersistentRouterTabConfig(
            item: ItemConfig(
                icon: Image.asset(
                  Assets.assetsIconsProfile,
                  color: AppColors.blackColorIcon,
                ),
                inactiveIcon: Image.asset(
                  Assets.assetsIconsProfile,
                  color: AppColors.white,
                ),
                title: "profile".tr()),
          ),
        ],
        onWillPop: (p0) => Future.value(false),

        // Use a custom bottom navigation bar style (Style1BottomNavBar)
        navBarBuilder: (navBarConfig) => CustomNavBar(
          navBarConfig: navBarConfig.copyWith(navBarHeight: 61),
        ),
        backgroundColor:
            Colors.transparent, // prevents white background showing
        avoidBottomPadding: true, // ensures nav bar not pushed by insets
        navigationShell: navigationShell,
      ),
      branches: [
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: AppRoutes.home,
              pageBuilder: (context, state) => buildCupertinoTransitionPage(
                context: context,
                state: state,
                child: HomeScreen(),
              ),
            ),
          ],
        ),
        StatefulShellBranch(routes: <RouteBase>[
          GoRoute(
            path: AppRoutes.search,
            pageBuilder: (context, state) => buildCupertinoTransitionPage(
              context: context,
              state: state,
              child: const SearchScreen(),
            ),
          ),
        ]),
        StatefulShellBranch(routes: <RouteBase>[
          GoRoute(
            path: AppRoutes.menu,
            pageBuilder: (context, state) => buildCupertinoTransitionPage(
              context: context,
              state: state,
              child: const SizedBox(),
            ),
          ),
        ]),
        StatefulShellBranch(routes: <RouteBase>[
          GoRoute(
            path: AppRoutes.activity,
            pageBuilder: (context, state) => buildCupertinoTransitionPage(
              context: context,
              state: state,
              child: const ActivityScreen(),
            ),
          ),
        ]),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: AppRoutes.profile,
              pageBuilder: (context, state) => buildCupertinoTransitionPage(
                context: context,
                state: state,
                child: const ProfileScreen(),
              ),
            ),
          ],
        ),
      ],
    );
