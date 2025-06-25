import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hvatai/core/theme/themes.dart';
import 'package:hvatai/routes/go_router.dart';
import 'package:easy_localization/easy_localization.dart';

class Hvatai extends StatelessWidget {
  const Hvatai({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
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
    );
  }
}
