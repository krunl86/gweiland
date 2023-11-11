part of 'theme.dart';

abstract class _GweilandColorsLight {
  static const Color primary = Color(0xff00CE08);
  static const Color onPrimary = Color(0xffffffff);
  static const Color primaryContainer = Color(0xffccef85);
  static const Color onPrimaryContainer = Color(0xff141f00);

  static const Color secondary = Color(0xff5a6148);
  static const Color onSecondary = Color(0xffffffff);
  static const Color secondaryContainer = Color(0xffdee6c5);
  static const Color onSecondaryContainer = Color(0xff171e0a);

  static const Color tertiary = Color(0xff396660);
  static const Color onTertiary = Color(0xffffffff);
  static const Color tertiaryContainer = Color(0xffbcece4);
  static const Color onTertiaryContainer = Color(0xff00201d);

  static const Color error = Color(0xffba1a1a);
  static const Color onError = Color(0xffffffff);
  static const Color errorContainer = Color(0xffffdad6);
  static const Color onErrorContainer = Color(0xff410002);

  static const Color background = Color(0xfffefcf4);
  static const Color onBackground = Color(0xff1b1c17);

  static const Color surface = Color(0xfffefcf4);
  static const Color onSurface = Color(0xff1b1c17);
  static const Color surfaceVariant = Color(0xffe2e4d4);
  static const Color onSurfaceVariant = Color(0xff45483c);

  static const Color outline = Color(0x0076786b);
  static const Color outlineVariant = Color(0x0076786b);
  //Extra colors
  static const Color black = Color(0xff000000);
  static const Color white = Color(0xffffffff);
  static const Color grey = Color(0xff808080);
  static const Color orange = Color(0xffD29853);
  static const Color yellow = Color(0xffFAE24C);
}

abstract class _GweilandColorsDark {
  static const Color primary = Color(0xffb0d26c);
  static const Color onPrimary = Color(0xff253600);
  static const Color primaryContainer = Color(0xff374e00);
  static const Color onPrimaryContainer = Color(0xff1ccef85);

  static const Color secondary = Color(0xffc2caab);
  static const Color onSecondary = Color(0xff2c331d);
  static const Color secondaryContainer = Color(0xff424a32);
  static const Color onSecondaryContainer = Color(0xffdee6c5);

  static const Color tertiary = Color(0xffa0d0c8);
  static const Color onTertiary = Color(0xff013732);
  static const Color tertiaryContainer = Color(0xff204e49);
  static const Color onTertiaryContainer = Color(0xffbcece4);

  static const Color error = Color(0xffffb4ab);
  static const Color onError = Color(0xff690005);
  static const Color errorContainer = Color(0xff93000a);
  static const Color onErrorContainer = Color(0xffffdad6);

  static const Color background = Color(0xff1b1c17);
  static const Color onBackground = Color(0xffe4e3db);

  static const Color surface = Color(0xff1b1c17);
  static const Color onSurface = Color(0xffe4e3db);
  static const Color surfaceVariant = Color(0xff45483c);
  static const Color onSurfaceVariant = Color(0xffc6c8b9);

  static const Color outline = Color(0x0076786b);
  static const Color outlineVariant = Color(0x0076786b);
  //Extra colors
  static const Color black = Color(0xff000000);
  static const Color white = Color(0xffffffff);
  static const Color orange = Color(0xffD29853);
}

const _lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  /* primary */
  primary: _GweilandColorsLight.primary,
  onPrimary: _GweilandColorsLight.onPrimary,
  primaryContainer: _GweilandColorsLight.primaryContainer,
  onPrimaryContainer: _GweilandColorsLight.onPrimaryContainer,
  /* secondary */
  secondary: _GweilandColorsLight.secondary,
  onSecondary: _GweilandColorsLight.onSecondary,
  secondaryContainer: _GweilandColorsLight.secondaryContainer,
  onSecondaryContainer: _GweilandColorsLight.onSecondaryContainer,
  /* tertiary */
  tertiary: _GweilandColorsLight.tertiary,
  onTertiary: _GweilandColorsLight.onTertiary,
  tertiaryContainer: _GweilandColorsLight.tertiaryContainer,
  onTertiaryContainer: _GweilandColorsLight.onTertiaryContainer,
  /* error */
  error: _GweilandColorsLight.error,
  onError: _GweilandColorsLight.onError,
  errorContainer: _GweilandColorsLight.errorContainer,
  onErrorContainer: _GweilandColorsLight.onErrorContainer,
  /* background  */
  background: _GweilandColorsLight.background,
  onBackground: _GweilandColorsLight.onBackground,
  /* surface */
  surface: _GweilandColorsLight.surface,
  onSurface: _GweilandColorsLight.onSurface,
  surfaceVariant: _GweilandColorsLight.surfaceVariant,
  onSurfaceVariant: _GweilandColorsLight.onSurfaceVariant,
  /* outline */
  outline: _GweilandColorsLight.outline,
  outlineVariant: _GweilandColorsLight.outlineVariant,
  /* secondary */
  shadow: _GweilandColorsLight.primary,
  scrim: _GweilandColorsLight.primary,
  inverseSurface: _GweilandColorsLight.primary,
  onInverseSurface: _GweilandColorsLight.primary,
  inversePrimary: _GweilandColorsLight.primary,
  surfaceTint: _GweilandColorsLight.primary,
);

const _darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  /* primary */
  primary: _GweilandColorsDark.primary,
  onPrimary: _GweilandColorsDark.onPrimary,
  primaryContainer: _GweilandColorsDark.primaryContainer,
  onPrimaryContainer: _GweilandColorsDark.onPrimaryContainer,
  /* secondary */
  secondary: _GweilandColorsDark.secondary,
  onSecondary: _GweilandColorsDark.onSecondary,
  secondaryContainer: _GweilandColorsDark.secondaryContainer,
  onSecondaryContainer: _GweilandColorsDark.onSecondaryContainer,
  /* tertiary */
  tertiary: _GweilandColorsDark.tertiary,
  onTertiary: _GweilandColorsDark.onTertiary,
  tertiaryContainer: _GweilandColorsDark.tertiaryContainer,
  onTertiaryContainer: _GweilandColorsDark.onTertiaryContainer,
  /* error */
  error: _GweilandColorsDark.error,
  onError: _GweilandColorsDark.onError,
  errorContainer: _GweilandColorsDark.errorContainer,
  onErrorContainer: _GweilandColorsDark.onErrorContainer,
  /* background  */
  background: _GweilandColorsDark.background,
  onBackground: _GweilandColorsDark.onBackground,
  /* surface */
  surface: _GweilandColorsDark.surface,
  onSurface: _GweilandColorsDark.onSurface,
  surfaceVariant: _GweilandColorsDark.surfaceVariant,
  onSurfaceVariant: _GweilandColorsDark.onSurfaceVariant,
  /* outline */
  outline: _GweilandColorsDark.outline,
  outlineVariant: _GweilandColorsDark.outlineVariant,
  /* secondary */
  shadow: _GweilandColorsDark.primary,
  scrim: _GweilandColorsDark.primary,
  inverseSurface: _GweilandColorsDark.primary,
  onInverseSurface: _GweilandColorsDark.primary,
  inversePrimary: _GweilandColorsDark.primary,
  surfaceTint: _GweilandColorsDark.primary,
);
