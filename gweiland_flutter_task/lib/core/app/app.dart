import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gweiland_common/gweiland_common.dart';
import 'package:gweiland_flutter_task/common/provider/theme_service.dart';
import 'package:gweiland_flutter_task/core/router/router.dart';
import 'package:gweiland_localization/gweiland_localization.dart';

import '../../common/provider/localization_service.dart';

class GweilandApp extends ConsumerWidget {
  const GweilandApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final locale = ref.watch(localizationProvider);

    return ScreenUtilInit(
      // designSize: ,
      builder: (context, child) => AppRouter(
          builder: (context, router) => MaterialApp.router(
                title: 'Agrovikas',
                localizationsDelegates: AppLocalizations.localizationsDelegates,
                supportedLocales: AppLocalizations.supportedLocales,
                locale: locale.appLocal,
                routerConfig: router,
                theme: lightTheme,
                darkTheme: darkTheme,
                themeMode:
                    theme.isLightTheme ? ThemeMode.light : ThemeMode.dark, // ThemeMode.system,
              )),
    );
  }
}
