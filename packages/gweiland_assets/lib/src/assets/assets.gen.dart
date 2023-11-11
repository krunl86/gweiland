/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/eshopIcon.svg
  SvgGenImage get eshopIcon => const SvgGenImage('assets/icons/eshopIcon.svg');

  /// File path: assets/icons/exchangeIcon.svg
  SvgGenImage get exchangeIcon =>
      const SvgGenImage('assets/icons/exchangeIcon.svg');

  /// File path: assets/icons/filterButtonLines.svg
  SvgGenImage get filterButtonLines =>
      const SvgGenImage('assets/icons/filterButtonLines.svg');

  /// File path: assets/icons/globeIcon.svg
  SvgGenImage get globeIcon => const SvgGenImage('assets/icons/globeIcon.svg');

  /// File path: assets/icons/launchPadIcon.svg
  SvgGenImage get launchPadIcon =>
      const SvgGenImage('assets/icons/launchPadIcon.svg');

  /// File path: assets/icons/negativeGraph.svg
  SvgGenImage get negativeGraph =>
      const SvgGenImage('assets/icons/negativeGraph.svg');

  /// File path: assets/icons/notificationBell.svg
  SvgGenImage get notificationBell =>
      const SvgGenImage('assets/icons/notificationBell.svg');

  /// File path: assets/icons/positiveGraph.svg
  SvgGenImage get positiveGraph =>
      const SvgGenImage('assets/icons/positiveGraph.svg');

  /// File path: assets/icons/searchIcon.svg
  SvgGenImage get searchIcon =>
      const SvgGenImage('assets/icons/searchIcon.svg');

  /// File path: assets/icons/settings.svg
  SvgGenImage get settings => const SvgGenImage('assets/icons/settings.svg');

  /// File path: assets/icons/walletIcon.svg
  SvgGenImage get walletIcon =>
      const SvgGenImage('assets/icons/walletIcon.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        eshopIcon,
        exchangeIcon,
        filterButtonLines,
        globeIcon,
        launchPadIcon,
        negativeGraph,
        notificationBell,
        positiveGraph,
        searchIcon,
        settings,
        walletIcon
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/bitcoin.png
  AssetGenImage get bitcoin => const AssetGenImage('assets/images/bitcoin.png');

  /// File path: assets/images/cartBottomWave.png
  AssetGenImage get cartBottomWave =>
      const AssetGenImage('assets/images/cartBottomWave.png');

  /// File path: assets/images/exchange.png
  AssetGenImage get exchange =>
      const AssetGenImage('assets/images/exchange.png');

  /// File path: assets/images/globe.png
  AssetGenImage get globe => const AssetGenImage('assets/images/globe.png');

  /// File path: assets/images/launchPad.png
  AssetGenImage get launchPad =>
      const AssetGenImage('assets/images/launchPad.png');

  /// File path: assets/images/smilePng.png
  AssetGenImage get smilePng =>
      const AssetGenImage('assets/images/smilePng.png');

  /// File path: assets/images/wallet.png
  AssetGenImage get wallet => const AssetGenImage('assets/images/wallet.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [bitcoin, cartBottomWave, exchange, globe, launchPad, smilePng, wallet];
}

class GweilandAssets {
  GweilandAssets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package = 'gweiland_assets',
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package = 'gweiland_assets',
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => 'packages/gweiland_assets/$_assetName';
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package = 'gweiland_assets',
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => 'packages/gweiland_assets/$_assetName';
}
