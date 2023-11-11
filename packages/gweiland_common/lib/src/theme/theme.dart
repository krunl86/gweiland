import 'package:dimensions_theme/dimensions_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

part '_app_bar_theme.dart';
part '_buttons_theme.dart';
part '_colors_theme.dart';
part '_dimension_themes.dart';
part '_divider_theme.dart';
part '_text_theme.dart';
part '_colors_theme_extension.dart';
part '_input_decoration.dart';

final lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: _lightColorScheme,
  textTheme: _lightTextTheme,
  //fontFamily: 'Ubuntu',
  extensions: [
    Dimensions(
      spaces: _spaceDimensions,
      insets: _insetsDimensions,
      borderWidths: _borderWidthDimensions,
      radii: _radiiDimensions,
    ),
    gweilandColorsExtension,
  ],
  appBarTheme: _lightAppBar,
  //inputDecorationTheme: inputDecorationLight,
  elevatedButtonTheme: _lightElevatedButton,
  textButtonTheme: _lightTextButton,
  outlinedButtonTheme: _lightOutlinedButton,
  dividerTheme: _divider,
  scaffoldBackgroundColor: _lightColorScheme.background,
);

final darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: _darkColorScheme,

  //fontFamily: 'Ubuntu',
  extensions: [
    Dimensions(
      spaces: _spaceDimensions,
      insets: _insetsDimensions,
      borderWidths: _borderWidthDimensions,
      radii: _radiiDimensions,
    ),
    gweilandColorsExtension,
  ],
  textTheme: _darkTextTheme,
  appBarTheme: _darkAppBar,
  inputDecorationTheme: inputDecorationDark,
  elevatedButtonTheme: _darkElevatedButton,
  textButtonTheme: _darkTextButton,
  outlinedButtonTheme: _darkOutlinedButton,
  dividerTheme: _divider,
  scaffoldBackgroundColor: _darkColorScheme.background,
);
