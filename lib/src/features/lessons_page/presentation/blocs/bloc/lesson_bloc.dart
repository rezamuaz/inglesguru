import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sysbit/src/core/common/api_result.dart';
import 'package:sysbit/src/core/common/network_exceptions.dart';
import 'package:sysbit/src/features/lessons_page/data/model/lesson_mod.dart';
import 'package:sysbit/src/features/lessons_page/data/repository/lesson_repo_impl.dart';

part 'lesson_event.dart';
part 'lesson_state.dart';
part 'lesson_bloc.freezed.dart';

class LessonBloc extends Bloc<LessonEvent, LessonState> {
  LessonBloc() : super(const LessonState.initial()) {
    on<LessonEvent>((event, emit) async {
      await event.when(
        started: () async {
          emit(const LessonState.loading());
          final ApiResult<List<LessonItem>> apiResult =
              await LessonRepoImpl().get();
          return apiResult.when(
            success: (data)async {
             await Future.delayed(const Duration(seconds: 1));
              return emit(LessonState.loaded(data));
            },
            failure: (error) => emit(LessonState.error(error)),
          );
        },
      );
    });
  }
 
}
