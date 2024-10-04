import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sysbit/gen/assets.gen.dart';
import 'package:sysbit/src/core/constant/constant.dart';
import 'package:sysbit/src/core/local_storage/cache/cache.dart';
import 'package:sysbit/src/core/local_storage/hive/hive_service.dart';
import 'package:sysbit/src/core/local_storage/model/user_hive.dart';
import 'package:sysbit/src/features/lessons_page/data/repository/lesson_repo_impl.dart';
import 'package:sysbit/src/features/lessons_page/presentation/widget/multi_download_file.dart';
import 'package:sysbit/src/features/lessons_page/presentation/widget/progress_lesson.dart';

import 'package:sysbit/src/features/scene_page/presentation/pages/scene_page.dart';
import 'package:sysbit/src/features/lessons_page/data/model/lesson_mod.dart';
import 'package:sysbit/src/features/lessons_page/presentation/blocs/bloc/lesson_bloc.dart';

import 'package:sysbit/src/features/lessons_page/presentation/widget/lesson_item.dart';

class LessonsPage extends StatefulWidget {
  const LessonsPage({
    super.key,
  });

  @override
  State<LessonsPage> createState() => _LessonsPageState();
}

class _LessonsPageState extends State<LessonsPage> {
  var preference = const HiveService();
  UserHive user = UserHive();
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    getAuth();
  }

  getAuth() async {
    user = await preference.read<UserHive>(boxName: "vaultUser", key: "auth") ??
        UserHive();
  }

  late List<LessonItem> lessons = [];
  Stream<FileResponse>? fileStream;
  String? lessonId;
 
   Future<bool?> _showMyDialog(BuildContext context,{List<String>? urls}) async {
    return showDialog<bool>(
      context: context,
      barrierDismissible: false, // user must tap button to close dialog
      builder: (BuildContext context) {
        return MultiDownloadFile(
          urls: urls??[],
        );
      },
    );
  }
   Future<List<String>> _get({String? lessonId}) async {
    var res = await LessonRepoImpl().getAssets(lessonId??"");
   return res.when(
      success: (result) {
      return result;
      },
      failure: (error) {
        return [];
      },
    );
   
  }



  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LessonBloc()..add(const LessonEvent.started()),
      child: Builder(builder: (context) {
        return Scaffold(
          backgroundColor: Colors.amber,
            body: Column(
          children: [
            Container(
                      height: MediaQuery.of(context).size.height * 0.18,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(color: Colors.transparent),
                      padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                      child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                               SvgPicture.asset(Assets.svgs.logo,width: 45,height: 45,),
                                const SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  constraints: BoxConstraints(
                                      maxWidth:
                                          MediaQuery.of(context).size.width *
                                              0.6),
                                  child: Text(
                                      overflow: TextOverflow.ellipsis,
                                      "Ingles Guru".toUpperCase(),
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.inter(
                                        letterSpacing: 1.2,
                                        wordSpacing: 1.2,
                                        fontSize: 30,
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                              ],
                            )
                    ),
            Expanded(
              child: Container(
                  padding:
                      const EdgeInsets.only(bottom: 20,left: 20,top: 20,right: 10),
                  
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.elliptical(15, 15),
                          topRight: Radius.elliptical(20, 20)),
                      color: Colors.white),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets. only(bottom: 10),
                        child: LinearProgressIndicator(
                          minHeight: 6,
                          borderRadius: BorderRadius.circular(5),
                          value: 0.5, // Set a static progress value (50%)
                          backgroundColor: Colors.black87, // Background color
                          valueColor: const AlwaysStoppedAnimation<Color>(
                              Color(0xFFFFC700)), // Progress color
                        ),
                      ),
                      Expanded(
                          child: BlocBuilder<LessonBloc, LessonState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      loading: () => ListView.separated(
                         padding: EdgeInsets.zero,
                          separatorBuilder: (context, index) => const Divider(color: Colors.black54,),
                        itemCount: 5,
                        itemBuilder: (context, index) => Shimmer.fromColors(
                          baseColor: Colors.grey.shade300,
                          highlightColor: Colors.grey.shade100,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 0.19,
                          ),
                        ),
                      ),
                      orElse: () => ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index) => SizedBox(
                          width: double.infinity,
                          height: 40,
                          child: Shimmer.fromColors(
                            baseColor: Colors.grey.shade300,
                            highlightColor: Colors.grey.shade100,
                            child: const SizedBox(),
                          ),
                        ),
                      ),
                      loaded: (data) => ListView.separated(
                        padding: EdgeInsets.zero,
                        itemCount: data.length,
                        physics: const BouncingScrollPhysics(),
                        separatorBuilder: (context, index) => const Divider(color: Colors.black54,),
                        itemBuilder: (context, index) => LessonItemWidget(
                          index: index,
                          title: "${index+1}. ${data[index].title!.toUpperCase()}",
                          url:
                              data[index].image,
                          onTap: () async{
                             Navigator.push(context,
                                _createRoute(data[index].lessonCode ?? ""));
                          // var  values = await _get(lessonId: data[index].lessonCode);
                          // if (values.isNotEmpty){
                          //   if(context.mounted){
                          //    bool? result = await _showMyDialog(context,urls: values);
                          //    if(result != null && result){
                          //     if (context.mounted){
                                 
                          //     }
                                
                          //    }

                          //   }
                            
                          // }
                             
                           
                      
                          },
                        ),
                      ),
                    );
                  },
                ),

                        ),
                                
                    ],
                  )),
            )
          ],
        ));
      }),
    );
  }

  void _clearCache() {
    DefaultCacheManager().emptyCache();
    setState(() {
      fileStream = null;
    });
  }

 
}

Route _createRoute(String lessonid) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => ScenePage(
      lessonId: lessonid,
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
