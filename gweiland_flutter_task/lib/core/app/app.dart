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
    // lisning theme provider change to update UI
    final theme = ref.watch(themeProvider);
    // lisning  localization provider to update UI
    final locale = ref.watch(localizationProvider);
    // screen util is used to manage consistant spacing and marging padding using diamentions
    return ScreenUtilInit(
      builder: (context, child) => AppRouter(
          // material router to manage navigations in app
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
