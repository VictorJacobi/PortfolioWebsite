/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsPngsGen {
  const $AssetsPngsGen();

  /// File path: assets/pngs/badge-removebg-preview.png
  AssetGenImage get badgeRemovebgPreview =>
      const AssetGenImage('assets/pngs/badge-removebg-preview.png');

  /// File path: assets/pngs/badge.jpg
  AssetGenImage get badge => const AssetGenImage('assets/pngs/badge.jpg');

  /// File path: assets/pngs/github.png
  AssetGenImage get github => const AssetGenImage('assets/pngs/github.png');

  /// File path: assets/pngs/google.png
  AssetGenImage get google => const AssetGenImage('assets/pngs/google.png');

  /// File path: assets/pngs/images-removebg-preview.png
  AssetGenImage get imagesRemovebgPreview =>
      const AssetGenImage('assets/pngs/images-removebg-preview.png');

  /// File path: assets/pngs/images.png
  AssetGenImage get images => const AssetGenImage('assets/pngs/images.png');

  /// File path: assets/pngs/linkedIn.png
  AssetGenImage get linkedIn => const AssetGenImage('assets/pngs/linkedIn.png');

  /// File path: assets/pngs/profile_image_1.jpeg
  AssetGenImage get profileImage1 =>
      const AssetGenImage('assets/pngs/profile_image_1.jpeg');

  /// File path: assets/pngs/profile_image_2.jpeg
  AssetGenImage get profileImage2 =>
      const AssetGenImage('assets/pngs/profile_image_2.jpeg');

  /// File path: assets/pngs/x.png
  AssetGenImage get x => const AssetGenImage('assets/pngs/x.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        badgeRemovebgPreview,
        badge,
        github,
        google,
        imagesRemovebgPreview,
        images,
        linkedIn,
        profileImage1,
        profileImage2,
        x
      ];
}

class Assets {
  Assets._();

  static const $AssetsPngsGen pngs = $AssetsPngsGen();
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
