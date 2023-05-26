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
  static const AssetGenImage award = AssetGenImage('assets/award.png');
  static const AssetGenImage backButton =
      AssetGenImage('assets/back_button.png');
  static const AssetGenImage bookmark = AssetGenImage('assets/bookmark.png');
  static const AssetGenImage childrenArtSchools =
      AssetGenImage('assets/children_art_schools.png');
  static const AssetGenImage comment = AssetGenImage('assets/comment.png');
  static const AssetGenImage courses = AssetGenImage('assets/courses.png');
  static const AssetGenImage coursesArt =
      AssetGenImage('assets/courses_art.png');
  static const AssetGenImage coursesBalley =
      AssetGenImage('assets/courses_balley.png');
  static const AssetGenImage coursesDance =
      AssetGenImage('assets/courses_dance.png');
  static const AssetGenImage coursesMusic =
      AssetGenImage('assets/courses_music.png');
  static const AssetGenImage coursesRitmology =
      AssetGenImage('assets/courses_ritmology.png');
  static const AssetGenImage coursesVocal =
      AssetGenImage('assets/courses_vocal.png');
  static const AssetGenImage cross = AssetGenImage('assets/cross.png');
  static const AssetGenImage danceSchools =
      AssetGenImage('assets/dance_schools.png');
  static const AssetGenImage easyLesson =
      AssetGenImage('assets/easy_lesson.png');
  static const AssetGenImage education = AssetGenImage('assets/education.png');
  static const AssetGenImage exhibitions =
      AssetGenImage('assets/exhibitions.png');
  static const AssetGenImage finished = AssetGenImage('assets/finished.png');
  static const AssetGenImage hardLesson =
      AssetGenImage('assets/hard_lesson.png');
  static const AssetGenImage heart = AssetGenImage('assets/heart.png');
  static const AssetGenImage interesting =
      AssetGenImage('assets/interesting.png');
  static const AssetGenImage interview = AssetGenImage('assets/interview.png');
  static const AssetGenImage learnCheck =
      AssetGenImage('assets/learnCheck.png');
  static const AssetGenImage learningCheck =
      AssetGenImage('assets/learning_check.png');
  static const AssetGenImage main = AssetGenImage('assets/main.png');
  static const AssetGenImage map = AssetGenImage('assets/map.png');
  static const AssetGenImage mapCross = AssetGenImage('assets/map_cross.png');
  static const AssetGenImage mapSettings =
      AssetGenImage('assets/map_settings.png');
  static const AssetGenImage mediumLesson =
      AssetGenImage('assets/medium_lesson.png');
  static const AssetGenImage museums = AssetGenImage('assets/museums.png');
  static const AssetGenImage musicalSchools =
      AssetGenImage('assets/musical_schools.png');
  static const AssetGenImage news = AssetGenImage('assets/news.png');
  static const AssetGenImage pin = AssetGenImage('assets/pin.png');
  static const AssetGenImage playlist = AssetGenImage('assets/playlist.png');
  static const AssetGenImage profile = AssetGenImage('assets/profile.png');
  static const AssetGenImage questions = AssetGenImage('assets/questions.png');
  static const AssetGenImage quiz = AssetGenImage('assets/quiz.png');
  static const AssetGenImage search = AssetGenImage('assets/search.png');
  static const AssetGenImage settings = AssetGenImage('assets/settings.png');
  static const AssetGenImage talant = AssetGenImage('assets/talant.png');
  static const AssetGenImage theaters = AssetGenImage('assets/theaters.png');
  static const AssetGenImage wordOfADay =
      AssetGenImage('assets/word_of_a_day.png');
  static const AssetGenImage xClose = AssetGenImage('assets/x-close.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        artSchools,
        award,
        backButton,
        bookmark,
        childrenArtSchools,
        comment,
        courses,
        coursesArt,
        coursesBalley,
        coursesDance,
        coursesMusic,
        coursesRitmology,
        coursesVocal,
        cross,
        danceSchools,
        easyLesson,
        education,
        exhibitions,
        finished,
        hardLesson,
        heart,
        interesting,
        interview,
        learnCheck,
        learningCheck,
        main,
        map,
        mapCross,
        mapSettings,
        mediumLesson,
        museums,
        musicalSchools,
        news,
        pin,
        playlist,
        profile,
        questions,
        quiz,
        search,
        settings,
        talant,
        theaters,
        wordOfADay,
        xClose
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
