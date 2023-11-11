part of 'theme.dart';

final _lightElevatedButton = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    backgroundColor: _GweilandColorsLight.primary,
    foregroundColor: _GweilandColorsLight.onPrimary,
    disabledBackgroundColor: _GweilandColorsLight.primaryContainer,
    disabledForegroundColor: _GweilandColorsLight.onPrimaryContainer,
    minimumSize: const Size(120, 35),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(30)),
    ),
    textStyle: const TextStyle(fontSize: 16),
    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
  ),
);

final _lightOutlinedButton = OutlinedButtonThemeData(
  style: OutlinedButton.styleFrom(
    backgroundColor: _GweilandColorsLight.primary,
    foregroundColor: _GweilandColorsLight.onPrimary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    disabledBackgroundColor: _GweilandColorsLight.primaryContainer,
    disabledForegroundColor: _GweilandColorsLight.onPrimaryContainer,
    textStyle: const TextStyle(fontSize: 16),
    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
  ).copyWith(
    side: MaterialStateProperty.resolveWith((states) {
      // If the button is disabled, return border side purple, otherwise grey
      if (states.contains(MaterialState.disabled)) {
        return const BorderSide(color: _GweilandColorsLight.outline);
      }
      return const BorderSide(color: _GweilandColorsLight.primary);
    }),
  ),
);

final _lightTextButton = TextButtonThemeData(
  style: TextButton.styleFrom(
    backgroundColor: _GweilandColorsLight.onPrimaryContainer,
    foregroundColor: _GweilandColorsLight.primary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    disabledBackgroundColor: _GweilandColorsLight.outline,
    disabledForegroundColor: _GweilandColorsLight.outline,
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
    ),
    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
  ),
);

final _darkElevatedButton = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    backgroundColor: _GweilandColorsLight.primary,
    foregroundColor: _GweilandColorsLight.onPrimary,
    disabledBackgroundColor: _GweilandColorsLight.primaryContainer,
    disabledForegroundColor: _GweilandColorsLight.onPrimaryContainer,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    textStyle: const TextStyle(fontSize: 16),
    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
  ),
);

final _darkOutlinedButton = OutlinedButtonThemeData(
  style: OutlinedButton.styleFrom(
    backgroundColor: _GweilandColorsDark.primary,
    foregroundColor: _GweilandColorsDark.primary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    disabledBackgroundColor: _GweilandColorsDark.primaryContainer,
    disabledForegroundColor: _GweilandColorsDark.onPrimaryContainer,
    textStyle: const TextStyle(fontSize: 16),
    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
  ).copyWith(
    side: MaterialStateProperty.resolveWith((states) {
      // If the button is disabled, return border side purple, otherwise grey
      if (states.contains(MaterialState.disabled)) {
        return const BorderSide(color: _GweilandColorsDark.outline);
      }
      return const BorderSide(color: _GweilandColorsDark.primary);
    }),
  ),
);

final _darkTextButton = TextButtonThemeData(
  style: TextButton.styleFrom(
    backgroundColor: _GweilandColorsDark.onPrimaryContainer,
    foregroundColor: _GweilandColorsDark.primary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    disabledBackgroundColor: _GweilandColorsDark.outline,
    disabledForegroundColor: _GweilandColorsDark.outline,
    textStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
    ),
    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
  ),
);
