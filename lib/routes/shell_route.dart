import 'package:hvatai/core/customs/customs.dart';
import 'package:hvatai/core/theme/assets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

StatefulShellRoute get statefulShellRoute => StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) => PersistentTabView.router(
        tabs: [
          PersistentRouterTabConfig(
            item: ItemConfig(icon: SvgPicture.asset(Assets.assetsIconsHome)),
          ),
          PersistentRouterTabConfig(
            item: ItemConfig(icon: SvgPicture.asset(Assets.assetsIconsHome)),
          ),
          PersistentRouterTabConfig(
            item: ItemConfig(icon: SvgPicture.asset(Assets.assetsIconsHome)),
          ),
          PersistentRouterTabConfig(
            item: ItemConfig(icon: SvgPicture.asset(Assets.assetsIconsHome)),
          ),
        ],
        onWillPop: (p0) => Future.value(false),

        // Use a custom bottom navigation bar style (Style1BottomNavBar)
        navBarBuilder: (navBarConfig) => CustomNavBar(
          navBarConfig: navBarConfig.copyWith(navBarHeight: 80),
        ),
        navigationShell: navigationShell,
      ),
      branches: [],
    );
