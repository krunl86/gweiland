part of 'theme.dart';

const _lightAppBar = AppBarTheme(
  toolbarHeight: 50,
  backgroundColor: _GweilandColorsLight.onPrimary,
  titleTextStyle: TextStyle(color: _GweilandColorsLight.onPrimary),
  shadowColor: Colors.transparent,
  titleSpacing: 1,
  actionsIconTheme: IconThemeData(color: _GweilandColorsLight.secondary),
);

const _darkAppBar = AppBarTheme(
  toolbarHeight: 50,
  backgroundColor: _GweilandColorsDark.onPrimary,
  titleTextStyle: TextStyle(color: _GweilandColorsDark.onPrimary),
  shadowColor: Colors.transparent,
  titleSpacing: 1,
  actionsIconTheme: IconThemeData(color: _GweilandColorsDark.secondary),
);
