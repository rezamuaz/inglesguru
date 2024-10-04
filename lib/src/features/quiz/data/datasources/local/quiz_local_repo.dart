

import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:sysbit/gen/assets.gen.dart';
import 'package:sysbit/src/features/quiz/data/model/quiz_mod.dart';

class QuizLocalRepo {

  
  static Future<QuizMod> readJson({String id="001"}) async {
  List<Map<String, String>> listConv = [{"id":"001","data": Assets.json.airplaneQuiz}];
    var res = listConv.firstWhere((item) => item["id"] == id);
  final String response = await rootBundle.loadString(res["data"]??"");
  return QuizMod.fromJson(json.decode(response));
}


} 