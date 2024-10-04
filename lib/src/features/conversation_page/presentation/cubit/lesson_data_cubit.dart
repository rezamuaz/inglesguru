import 'package:bloc/bloc.dart';
import 'package:sysbit/src/features/conversation_page/data/model/lesson_data.dart';


class LessonDataCubit extends Cubit<LessonData> {
  LessonDataCubit() : super(LessonData());

  void change({
    LessonData? value,
   
  }){
    emit(value??LessonData());
  }
}
