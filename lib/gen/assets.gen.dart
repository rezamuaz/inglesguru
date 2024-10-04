/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsJsonGen {
  const $AssetsJsonGen();

  /// File path: assets/json/airplane.json
  String get airplane => 'assets/json/airplane.json';

  /// File path: assets/json/airplane_quiz.json
  String get airplaneQuiz => 'assets/json/airplane_quiz.json';

  /// File path: assets/json/airport.json
  String get airport => 'assets/json/airport.json';

  /// File path: assets/json/chapter1.json
  String get chapter1 => 'assets/json/chapter1.json';

  /// File path: assets/json/hotel.json
  String get hotel => 'assets/json/hotel.json';

  /// File path: assets/json/lesson_list.json
  String get lessonList => 'assets/json/lesson_list.json';

  /// File path: assets/json/restaurant.json
  String get restaurant => 'assets/json/restaurant.json';

  /// File path: assets/json/taxi.json
  String get taxi => 'assets/json/taxi.json';

  /// List of all assets
  List<String> get values => [
        airplane,
        airplaneQuiz,
        airport,
        chapter1,
        hotel,
        lessonList,
        restaurant,
        taxi
      ];
}

class $AssetsLottieGen {
  const $AssetsLottieGen();

  /// File path: assets/lottie/welcome.json
  String get welcome => 'assets/lottie/welcome.json';

  /// List of all assets
  List<String> get values => [welcome];
}

class $AssetsPngGen {
  const $AssetsPngGen();

  /// File path: assets/png/Asset 1@4x.png
  AssetGenImage get asset14x =>
      const AssetGenImage('assets/png/Asset 1@4x.png');

  /// File path: assets/png/Asset 2@4x.png
  AssetGenImage get asset24x =>
      const AssetGenImage('assets/png/Asset 2@4x.png');

  /// File path: assets/png/Asset 3@4x.png
  AssetGenImage get asset34x =>
      const AssetGenImage('assets/png/Asset 3@4x.png');

  /// File path: assets/png/Asset 4@4x.png
  AssetGenImage get asset44x =>
      const AssetGenImage('assets/png/Asset 4@4x.png');

  /// File path: assets/png/airport_scene.jpeg
  AssetGenImage get airportScene =>
      const AssetGenImage('assets/png/airport_scene.jpeg');

  /// List of all assets
  List<AssetGenImage> get values =>
      [asset14x, asset24x, asset34x, asset44x, airportScene];
}

class $AssetsSvgsGen {
  const $AssetsSvgsGen();

  /// File path: assets/svgs/bronze.svg
  String get bronze => 'assets/svgs/bronze.svg';

  /// File path: assets/svgs/cross.svg
  String get cross => 'assets/svgs/cross.svg';

  /// File path: assets/svgs/error_image.svg
  String get errorImage => 'assets/svgs/error_image.svg';

  /// File path: assets/svgs/gold.svg
  String get gold => 'assets/svgs/gold.svg';

  /// File path: assets/svgs/lock.svg
  String get lock => 'assets/svgs/lock.svg';

  /// File path: assets/svgs/logo.svg
  String get logo => 'assets/svgs/logo.svg';

  /// File path: assets/svgs/master.m3u8
  String get master => 'assets/svgs/master.m3u8';

  /// File path: assets/svgs/silver.svg
  String get silver => 'assets/svgs/silver.svg';

  /// List of all assets
  List<String> get values =>
      [bronze, cross, errorImage, gold, lock, logo, master, silver];
}

class Assets {
  Assets._();

  static const $AssetsJsonGen json = $AssetsJsonGen();
  static const $AssetsLottieGen lottie = $AssetsLottieGen();
  static const $AssetsPngGen png = $AssetsPngGen();
  static const $AssetsSvgsGen svgs = $AssetsSvgsGen();
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
