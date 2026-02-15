import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hvatai/core/datasources/local/app_local.dart';
import 'package:hvatai/core/theme/themes.dart';
import 'package:hvatai/features/cart/presentation/cubit/cart_cubit/cart_cubit.dart';
import 'package:hvatai/features/chat/presentation/cubit/chats_cubit.dart';
import 'package:hvatai/features/stream/presentation/cubit/toggle_favorite_cubit/toggle_favorite_cubit.dart';
import 'package:hvatai/locator.dart';
import 'package:hvatai/routes/go_router.dart';
import 'package:easy_localization/easy_localization.dart';

class Hvatai extends StatelessWidget {
  const Hvatai({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            final cartCubit = locator<CartCubit>();
            // Fetch cart if user is logged in
            final appLocal = locator<AppLocal>();
            final token = appLocal.getToken();
            if (token != null && token.isNotEmpty) {
              cartCubit.getCartProducts();
              cartCubit.getDeliveryAddress();
            }
            return cartCubit;
          },
        ),
        BlocProvider(
          create: (context) => locator<ChatsCubit>(),
        ),
        BlocProvider(
          create: (context) => locator<ToggleFavoriteCubit>(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        child: GestureDetector(
          onTap: () {
            FocusScopeNode currentFocus = FocusScope.of(context);
            if (!currentFocus.hasPrimaryFocus &&
                currentFocus.focusedChild != null) {
              SystemChannels.textInput.invokeMethod('TextInput.hide');
            }
          },
          child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerConfig: router,
            title: 'Hvatai',
            themeMode: ThemeMode.light,
            theme: Themes.light.data,
            locale: context.locale,
            supportedLocales: context.supportedLocales,
            localizationsDelegates: context.localizationDelegates,
          ),
        ),
      ),
    );
  }
}
