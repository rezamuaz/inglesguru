import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:sysbit/gen/assets.gen.dart';
import 'package:sysbit/src/features/conversation_page/data/model/lesson_data.dart';


class ConvLocalRepo {
  static Future<LessonData> readJson({String? id}) async {
    List<Map<String, String>> listConv = [
      {"id": "001", "data": Assets.json.airplane},
      {"id": "002", "data": Assets.json.airport},
      {"id": "003", "data": Assets.json.taxi},
      {"id": "004", "data": Assets.json.hotel},
      {"id": "005", "data": Assets.json.restaurant}
    ];
    var res =listConv.firstWhere((item) => item["id"] == id);
    final String response = await rootBundle.loadString(res["data"]??"");
    var data = json.decode(response);
    return LessonData.fromJson(data["LessonData"]);
  }
}
