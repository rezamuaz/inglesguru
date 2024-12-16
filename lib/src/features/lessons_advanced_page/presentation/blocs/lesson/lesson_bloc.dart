import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sysbit/src/core/common/api_result.dart';
import 'package:sysbit/src/core/common/network_exceptions.dart';
import 'package:sysbit/src/core/constant/constant.dart';
import 'package:sysbit/src/core/local_storage/shared_pref/shared_pref.dart';
import 'package:sysbit/src/core/network/network.dart';
import 'package:sysbit/src/features/lessons_starter_page/data/model/lesson_mod.dart';
import 'package:sysbit/src/features/lessons_starter_page/domain/repository/lesson_repo.dart';

part 'lesson_event.dart';
part 'lesson_state.dart';
part 'lesson_bloc.freezed.dart';

class LessonBloc extends Bloc<LessonEvent, LessonState> {
  LessonBloc() : super(const LessonState.initial()) {
    on<LessonEvent>((event, emit) async {
      await event.when(
        started: () async {
          emit(const LessonState.loading());
          final hasConnected = await Network.connection.hasInternetAccess;
          //When Internet Connection Enable
          if (hasConnected) {
            final ApiResult<LessonMod> apiResult =
                await LessonRepoImpl().getLessonRemote();
            return apiResult.when(success: (data, success, rc) async {
              SharedPrefs.instance
                  .setString(Constant.jsonLesson, jsonEncode(data.toJson()));

              return emit(LessonState.loaded(data));
            }, failure: (error, msg) async {
              return emit(LessonState.error(error));
            });
            //When Internet Connection Disable
          } else {
            var dataStr = SharedPrefs.instance.getString(Constant.jsonLesson);
            var data = LessonMod.fromJson(jsonDecode(dataStr ?? ""));
            return emit(LessonState.loaded(data));
          }
        },
      );
    });
  }
}
