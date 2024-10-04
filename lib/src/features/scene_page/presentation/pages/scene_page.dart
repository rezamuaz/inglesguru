import 'dart:async';
import 'package:cached_video_player_plus/cached_video_player_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sysbit/gen/assets.gen.dart';
import 'package:sysbit/src/core/utils/utils.dart';
import 'package:sysbit/src/core/widget/video_builder.dart';
import 'package:sysbit/src/features/conversation_page/data/model/lesson_data.dart';
import 'package:sysbit/src/features/conversation_page/domain/repository/conv_repo_impl.dart';
import 'package:sysbit/src/features/conversation_page/presentation/cubit/lesson_data_cubit.dart';
import 'package:sysbit/src/features/conversation_page/presentation/pages/conversation_page.dart';
import 'package:sysbit/src/features/conversation_page/presentation/pages/conversation_wrap.dart';

import 'package:sysbit/src/features/root_page/presentation/blocs/cubit/navbar_view_cubit.dart';

class ScenePage extends StatefulWidget {
  const ScenePage({super.key,this.lessonId});
  final String? lessonId;
  @override
  State<ScenePage> createState() => _ScenePageState();
}

class _ScenePageState extends State<ScenePage> {
  String? url;
   CachedVideoPlayerPlusController controller = CachedVideoPlayerPlusController.networkUrl( Uri.parse(
       "",
      ),);
  // late LessonData _scene = LessonData(introVideo: "",pages: []);
  bool isNavigating = false;
  


  Future<LessonData> _get() async {
    var res = await ConvRepoImpl().get(widget.lessonId??"");
    return res.when(
      success: (result) {
          
          return result;
      },
      failure: (error) {
        return LessonData();
      },
    );
   
  }
  @override
  void initState() {
   
   
     initVideo();
    super.initState();
  }

  @override
  void didChangeDependencies() {
     context.read<NavbarViewCubit>().change(state: false);
    
    super.didChangeDependencies();
    
  }
  

  //TODO - Init Video Setup
  Future<String?> initVideo()async{
  var data = await   _get();
  BlocProvider.of<LessonDataCubit>(context).change(value: data);
return data.sceneUrl;
  }


 


 
   
 
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(extendBodyBehindAppBar: true,
   
    body: Center(
        child: FutureBuilder(
          future: initVideo(),
          builder: (context, snapshot) {
if(snapshot.connectionState == ConnectionState.waiting){
return const CircularProgressIndicator();
}
       else if (snapshot.hasError) {
            // If there's an error, show a default image
            return SvgPicture.asset(
                Assets.svgs.errorImage,height: 30,width: 3); // Fallback asset image
          } else if (snapshot.hasData) {
            // If the image is loaded, display it
            return   VideoBuilder(url: snapshot.data!,width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height,callbackFinish: () {
              Navigator.pushReplacement(context, Utils.createRoute(ConversationPage(lessonId: widget.lessonId??"")));
            },);
          } else {
            // If there's no data, show a default image
            return SvgPicture.asset(
                Assets.svgs.errorImage,height: 30,width: 30,); // Fallback asset image
          }
        },
        )
    ));
  }

   @override
  void dispose() {
    //  context.read<NavbarViewCubit>().change(state: true);
    // controller.dispose();
     
    super.dispose();
  }
}

