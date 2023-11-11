part of 'theme.dart';

@immutable
class GweilandColors extends ThemeExtension<GweilandColors> {
  const GweilandColors({
    required this.primary,
    required this.orange,
    required this.black,
    required this.white,
    required this.yellow,
  });
  final Color primary;
  final Color orange;
  final Color black;
  final Color white;
  final Color yellow;
  @override
  GweilandColors copyWith({
    Color? primary,
    Color? orange,
    Color? black,
    Color? white,
    Color? yellow,
  }) {
    return GweilandColors(
      primary: primary ?? this.primary,
      orange: orange ?? this.orange,
      black: black ?? this.black,
      white: white ?? this.white,
      yellow: yellow ?? this.yellow,
    );
  }

  @override
  ThemeExtension<GweilandColors> lerp(ThemeExtension<GweilandColors>? other, double t) {
    if (other is! GweilandColors) {
      return this;
    }
    return GweilandColors(
      primary: Color.lerp(primary, other.primary, t)!,
      orange: Color.lerp(orange, other.orange, t)!,
      black: Color.lerp(black, other.black, t)!,
      white: Color.lerp(white, other.white, t)!,
      yellow: Color.lerp(yellow, other.yellow, t)!,
    );
  }

  @override
  String toString() => 'MyUnboxColors(primary: $primary,),';
}

GweilandColors gweilandColorsExtension = const GweilandColors(
    primary: _GweilandColorsLight.primary,
    orange: _GweilandColorsLight.orange,
    black: _GweilandColorsLight.black,
    white: _GweilandColorsLight.white,
    yellow: _GweilandColorsLight.yellow);

extension AgrovikasColorsExtensions on ThemeData {
  GweilandColors get gweilandColors => extension<GweilandColors>()!;
}
