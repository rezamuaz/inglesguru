import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:sysbit/gen/assets.gen.dart';
import 'package:sysbit/src/features/conversation_page/data/model/lesson_data.dart';

class IntroLocalRepo {
  static Future<LessonData> readJson({String? id}) async {
    List<Map<String, String>> listConv = [
      {"id": "001", "data": Assets.json.airplane}
    ];

    var res = listConv.firstWhere((item) => item["id"] == id);
    final String response = await rootBundle.loadString(res["data"] ?? "");
    var data = json.decode(response);
    return LessonData.fromJson(data["LessonData"]);
  }
}
