import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


class SpeechTextCubit extends Cubit<String> {
  SpeechTextCubit() : super("");


   void change({
    String? newText,
   
  }){
    emit(newText ??"");
  }
}
