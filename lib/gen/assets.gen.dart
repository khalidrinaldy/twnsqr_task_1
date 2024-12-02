/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/SFPRODISPLAYBOLD.OTF
  String get sfprodisplaybold => 'assets/fonts/SFPRODISPLAYBOLD.OTF';

  /// File path: assets/fonts/SFPRODISPLAYMEDIUM.OTF
  String get sfprodisplaymedium => 'assets/fonts/SFPRODISPLAYMEDIUM.OTF';

  /// File path: assets/fonts/SFPRODISPLAYREGULAR.OTF
  String get sfprodisplayregular => 'assets/fonts/SFPRODISPLAYREGULAR.OTF';

  /// List of all assets
  List<String> get values =>
      [sfprodisplaybold, sfprodisplaymedium, sfprodisplayregular];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/ic_filter.svg
  String get icFilter => 'assets/icons/ic_filter.svg';

  /// File path: assets/icons/ic_group.svg
  String get icGroup => 'assets/icons/ic_group.svg';

  /// File path: assets/icons/ic_group_active.svg
  String get icGroupActive => 'assets/icons/ic_group_active.svg';

  /// File path: assets/icons/ic_logo.png
  AssetGenImage get icLogo => const AssetGenImage('assets/icons/ic_logo.png');

  /// File path: assets/icons/ic_marker.svg
  String get icMarker => 'assets/icons/ic_marker.svg';

  /// File path: assets/icons/ic_notification.svg
  String get icNotification => 'assets/icons/ic_notification.svg';

  /// File path: assets/icons/ic_search.svg
  String get icSearch => 'assets/icons/ic_search.svg';

  /// File path: assets/icons/ic_user.svg
  String get icUser => 'assets/icons/ic_user.svg';

  /// List of all assets
  List<dynamic> get values => [
        icFilter,
        icGroup,
        icGroupActive,
        icLogo,
        icMarker,
        icNotification,
        icSearch,
        icUser
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/img_event.png
  AssetGenImage get imgEvent =>
      const AssetGenImage('assets/images/img_event.png');

  /// List of all assets
  List<AssetGenImage> get values => [imgEvent];
}

class $AssetsJsonGen {
  const $AssetsJsonGen();

  /// File path: assets/json/day_activity.json
  String get dayActivity => 'assets/json/day_activity.json';

  /// List of all assets
  List<String> get values => [dayActivity];
}

class Assets {
  Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsJsonGen json = $AssetsJsonGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
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
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
