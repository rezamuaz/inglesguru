import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:sysbit/src/features/conversation_page/data/model/text_state.dart';
import 'package:string_similarity/string_similarity.dart';
part 'speech_checker_event.dart';
part 'speech_checker_state.dart';
part 'speech_checker_bloc.freezed.dart';

class SpeechCheckerBloc extends Bloc<SpeechCheckerEvent, SpeechCheckerState> {
  SpeechCheckerBloc() : super(const _Initial()) {
    on<SpeechCheckerEvent>((event, emit)async {
      await event.when(started: (text)async{
       emit(SpeechCheckerState.loaded(TextState(text: text,textColor: Colors.black54,init: true)));

      }, check: (origin, lastword)async{
           emit(const SpeechCheckerState.loading());
           await Future.delayed(const Duration(milliseconds: 1000));
           String text1 = origin!.toLowerCase().replaceAll(RegExp(r'[,.]'), "");         
           String text2 = lastword!.toLowerCase().replaceAll(RegExp(r'[,.]'), "");

           if(text1.similarityTo(text2) >= 0.99){
            emit(SpeechCheckerState.loaded(TextState(text: lastword,textColor: Colors.green,isCorrect: true,init: false)));
            await Future.delayed(const Duration(milliseconds: 2000));
             return emit(SpeechCheckerState.back(TextState(text: origin,textColor: Colors.black54,init: false)));
           }else if(text1.similarityTo(text2) < 0.99){
            emit(SpeechCheckerState.loaded(TextState(text: lastword,textColor: Colors.red,isCorrect: false,init: false)));
            await Future.delayed(const Duration(milliseconds: 2000));
             return emit(SpeechCheckerState.back(TextState(text: origin,textColor: Colors.black54,init: false)));
           }
      });
    });
  }
  //  @override
  // void onEvent(SpeechCheckerEvent event) {
  //   logger.d(event);
  //   super.onEvent(event);
  // }
  // @override
  // void onChange(Change<SpeechCheckerState> change) {
  //  logger.d(change);
  //   super.onChange(change);
  // }

 
}
