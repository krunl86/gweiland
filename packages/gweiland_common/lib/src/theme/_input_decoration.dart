part of 'theme.dart';

const _cornerRadius = 16.0;
final inputDecorationLight = InputDecorationTheme(
  fillColor: _GweilandColorsLight.background,
  contentPadding: const EdgeInsets.all(8),
  isDense: true,
  prefixIconColor: MaterialStateColor.resolveWith(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return _GweilandColorsLight.grey;
      } else if (states.contains(MaterialState.error)) {
        return Colors.red;
      } else if (states.contains(MaterialState.focused)) {
        return _GweilandColorsLight.primaryContainer;
      }

      return _GweilandColorsLight.primary;
    },
  ),
  disabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(_cornerRadius),
    borderSide: const BorderSide(
      width: 1,
      color: _GweilandColorsLight.grey,
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(_cornerRadius),
    borderSide: const BorderSide(
      width: 2,
      color: _GweilandColorsLight.primary,
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(_cornerRadius),
    borderSide: const BorderSide(
      width: 4,
      color: _GweilandColorsLight.primaryContainer,
    ),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(_cornerRadius),
    borderSide: const BorderSide(
      color: _GweilandColorsLight.error,
    ),
  ),
  errorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(_cornerRadius),
    borderSide: const BorderSide(
      width: 1,
      color: _GweilandColorsLight.error,
    ),
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(_cornerRadius),
    borderSide: const BorderSide(
      width: 7,
      color: _GweilandColorsLight.outlineVariant,
    ),
  ),
);
final inputDecorationDark = InputDecorationTheme(
  fillColor: _GweilandColorsLight.onBackground,
  contentPadding: const EdgeInsets.all(8),
  isDense: true,
  disabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(_cornerRadius),
    borderSide: const BorderSide(
      width: 1,
      color: _GweilandColorsLight.grey,
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(_cornerRadius),
    borderSide: const BorderSide(
      width: 2,
      color: _GweilandColorsLight.primary,
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(_cornerRadius),
    borderSide: const BorderSide(
      width: 4,
      color: _GweilandColorsLight.primaryContainer,
    ),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(_cornerRadius),
    borderSide: const BorderSide(
      color: _GweilandColorsLight.error,
    ),
  ),
  errorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(_cornerRadius),
    borderSide: const BorderSide(
      width: 1,
      color: _GweilandColorsLight.error,
    ),
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(_cornerRadius),
    borderSide: const BorderSide(
      width: 7,
      color: _GweilandColorsLight.outlineVariant,
    ),
  ),
);

final searchInputDecoration = InputDecorationTheme(
  fillColor: const Color(0xff0B0B0B).withOpacity(0.05),
  contentPadding: const EdgeInsets.all(10),
  filled: true,
  isDense: true,
  enabledBorder: null,
  errorBorder: null,
  disabledBorder: null,
  border: null,
);
