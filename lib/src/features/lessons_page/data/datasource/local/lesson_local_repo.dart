 import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:sysbit/gen/assets.gen.dart';

import 'package:sysbit/src/features/lessons_page/data/model/lesson_mod.dart';

class LessonLocalRepo {
   static Future<List<LessonItem>> readJson() async {
  final String responseStr = await rootBundle.loadString(Assets.json.lessonList);
  dynamic response = json.decode(responseStr);
  return (response['lessons'] as List).map((e) => LessonItem.fromJson(e),).toList() ;
}
 } 