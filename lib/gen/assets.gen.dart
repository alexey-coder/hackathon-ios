/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class Assets {
  Assets._();

  static const AssetGenImage artSchools =
      AssetGenImage('assets/art_schools.png');
  static const AssetGenImage bookmark = AssetGenImage('assets/bookmark.png');
  static const AssetGenImage chat = AssetGenImage('assets/chat.png');
  static const AssetGenImage childrenArtSchools =
      AssetGenImage('assets/children_art_schools.png');
  static const AssetGenImage courses = AssetGenImage('assets/courses.png');
  static const AssetGenImage danceSchools =
      AssetGenImage('assets/dance_schools.png');
  static const AssetGenImage education = AssetGenImage('assets/education.png');
  static const AssetGenImage exhibitions =
      AssetGenImage('assets/exhibitions.png');
  static const AssetGenImage heart = AssetGenImage('assets/heart.png');
  static const AssetGenImage main = AssetGenImage('assets/main.png');
  static const AssetGenImage map = AssetGenImage('assets/map.png');
  static const AssetGenImage museums = AssetGenImage('assets/museums.png');
  static const AssetGenImage musicalSchools =
      AssetGenImage('assets/musical_schools.png');
  static const AssetGenImage pin = AssetGenImage('assets/pin.png');
  static const AssetGenImage profile = AssetGenImage('assets/profile.png');
  static const AssetGenImage search = AssetGenImage('assets/search.png');
  static const AssetGenImage theaters = AssetGenImage('assets/theaters.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        artSchools,
        bookmark,
        chat,
        childrenArtSchools,
        courses,
        danceSchools,
        education,
        exhibitions,
        heart,
        main,
        map,
        museums,
        musicalSchools,
        pin,
        profile,
        search,
        theaters
      ];
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
