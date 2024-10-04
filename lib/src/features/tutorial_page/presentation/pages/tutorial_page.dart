import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:river_player/river_player.dart';
import 'package:sysbit/gen/assets.gen.dart';
import 'package:sysbit/src/core/constant/constant.dart';
import 'package:sysbit/src/features/tutorial_page/data/model/duration_state.dart';
import 'package:sysbit/src/features/quiz/presentation/page/quiz_page.dart';
import 'package:sysbit/src/features/root_page/presentation/blocs/cubit/navbar_view_cubit.dart';
import 'package:sysbit/src/features/tutorial_page/presentation/widget/tutorial_player.dart';

class TutorialPage extends StatefulWidget {
  const TutorialPage({super.key, required this.lessonId});
  final String lessonId;
  @override
  State<TutorialPage> createState() => _TutorialPageState();
}

class _TutorialPageState extends State<TutorialPage> {
 BetterPlayerController? _betterPlayerController;


  @override
  void initState() {
   initVideo();
    super.initState();
  }

  initVideo(){
   
    
  }
  

  @override
  void didChangeDependencies()async {
      BetterPlayerConfiguration betterPlayerConfiguration =
        BetterPlayerConfiguration(

      aspectRatio:MediaQuery.of(context).size.width/MediaQuery.of(context).size.height,
      expandToFill: true,

      fit: BoxFit.fill,
       autoPlay: true,
    looping: true,
    autoDispose: true,
    allowedScreenSleep: false,
   

    controlsConfiguration: const BetterPlayerControlsConfiguration(
        showControls: true,
       
      ),
   
    );
     _betterPlayerController = BetterPlayerController(betterPlayerConfiguration,);
    // context.read<NavbarViewCubit>().change(state: false);
    super.didChangeDependencies();
  }

 


   

  @override
  void dispose() {
  //  _betterPlayerController.dispose();
    // context.read<NavbarViewCubit>().change(state: true);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      left: false,
      right: false,

      child: Scaffold(
        body: Center(
          child: AspectRatio(aspectRatio:MediaQuery.of(context).size.width/MediaQuery.of(context).size.height,child: TutorialPlayer(controller: _betterPlayerController!,)),
      ),
          ),
    );
  }
}

Route _createRoute(String lessonId) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => QuizPage(
      lessonId: lessonId,
    ),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
