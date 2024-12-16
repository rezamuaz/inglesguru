
import 'dart:convert';

import 'package:encrypt_shared_preferences/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:sysbit/gen/assets.gen.dart';
import 'package:sysbit/src/core/common/error_widget_return.dart';
import 'package:sysbit/src/core/local_storage/key_storage/key_storage.dart';

import 'package:sysbit/src/core/utils/utils.dart';
import 'package:sysbit/src/features/home_page/presentation/widget/payment_bottom.dart';
import 'package:sysbit/src/features/introduction_page/presentation/pages/introduction_page.dart';
import 'package:sysbit/src/features/lesson_menu_page/presentation/pages/lesson_menu_page.dart';
import 'package:sysbit/src/features/lessons_starter_page/presentation/widget/lesson_item_intro.dart';
import 'package:sysbit/src/features/lessons_starter_page/presentation/widget/lesson_item_loading.dart';
import 'package:sysbit/src/features/lessons_starter_page/data/model/lesson_mod.dart';
import 'package:sysbit/src/features/lessons_starter_page/presentation/blocs/lesson/lesson_bloc.dart';

import 'package:sysbit/src/features/lessons_starter_page/presentation/widget/lesson_item.dart';

class LessonsAdvancedPage extends StatefulWidget {
  const LessonsAdvancedPage({
    super.key,
  });

  @override
  State<LessonsAdvancedPage> createState() => _LessonsAdvancedPageState();
}

class _LessonsAdvancedPageState extends State<LessonsAdvancedPage> {



  LessonItem intro = const LessonItem(
    title: "introduction",
  );
  

  @override
  Widget build(BuildContext context) {
    

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LessonBloc()..add(const LessonEvent.started()),
        ),
      ],
      child: Builder(builder: (context) {
        return Scaffold(
            backgroundColor: Colors.amber,
            body: Column(
              children: [
                
                Container(
                    height: MediaQuery.of(context).size.height * 0.18,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(color: Colors.transparent),
                    padding:
                        const EdgeInsets.only(top: 20, left: 30, right: 30),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              Assets.svgs.logo,
                              width: 45,
                              height: 45,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              constraints: BoxConstraints(
                                  maxWidth:
                                      MediaQuery.of(context).size.width * 0.6),
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
                        ),
                        
                      ],
                    )),
                
                Expanded(
                  child: Container(
                      padding: const EdgeInsets.only(
                          bottom: 20, left: 10, top: 10, right: 10),
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.elliptical(15, 15),
                              topRight: Radius.elliptical(15, 15)),
                          color: Colors.white),
                      child: Column(
                        children: [
                          Container(
                          constraints: BoxConstraints(maxHeight: 40),
                          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [TextButton.icon(onPressed: () {
                                            Navigator.pop(context);
                                          }, label: Text(
                                      "Back",
                                      style: GoogleFonts.inter(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87),
                                    ),icon: Icon(Icons.arrow_back_ios,color: Colors.black87,))],),
                        ),
                          const SizedBox(
                            height: 10,
                          ),
                         

                          Expanded(
                            child: RefreshIndicator(
                              onRefresh: () async {
                                context
                                    .read<LessonBloc>()
                                    .add(const LessonEvent.started());
                              },
                              child: BlocConsumer<LessonBloc, LessonState>(
                                listener: (context, state) {
                                  state.whenOrNull(
                                    loaded: (data) {
                                      setState(() {
                                        intro = data.intro;
                                      });
                                    },
                                    
                                  );
                                },
                                builder: (context, state) {
                                  return state.maybeWhen(
                                    // orElse: () => SizedBox(),
                                    loading: () => Skeletonizer(
                                      enabled: true,
                                      child: ListView.separated(
                                          padding: EdgeInsets.zero,
                                          separatorBuilder: (context, index) =>
                                              const Divider(
                                                color: Colors.black26,
                                              ),
                                          itemCount: 5,
                                          itemBuilder: (context, index) =>
                                              const LessonItemLoading()),
                                    ),
                                    orElse: () => const Center(
                                      child: Text("unknown error"),
                                    ),
                                    error: (error) => Center(
                                        child: errorWidget(error,
                                            style: GoogleFonts.inter(
                                                fontSize: 14,
                                                color: Colors.black87))),
                                    loaded: (data) => ListView(
                                      physics: const BouncingScrollPhysics(),
                                      shrinkWrap: true,
                                      padding: const EdgeInsets.all(0),
                                      children: [
                                        // LessonItemIntro(
                                        //   buttonTitle: "See More",
                                        //   title:
                                        //       data.intro.title!.toUpperCase(),
                                        //   url: data.intro.image,
                                        //   onTap: () async {
                                        //     Navigator.of(context).push(
                                        //         Utils.createRoute(
                                        //             const IntroductionPage()));
                                        //   },
                                        // ),
                                        // const Divider(
                                        //   color: Colors.black54,
                                        // ),
                                         SharedBuilder(
                          listenKeys: const {"auth"}, //Optional
                          builder: (EncryptedSharedPreferences
                                  encryptedSharedPreferences,
                              String? updatedKey) {
                            return ListView.separated(
                                            shrinkWrap: true,
                                            padding: EdgeInsets.zero,
                                            itemCount: data.result.length,
                                            physics:
                                                const NeverScrollableScrollPhysics(),
                                            separatorBuilder: (context, index) =>
                                                const Divider(
                                              color: Colors.black54,
                                            ),
                                            itemBuilder: (context, index) =>
                                                LessonItemWidget(
                                              index: index,
                                              lessonCode: data.result[index].lessonCode??"",
                                              isPremium: Utils.getToken(encryptedSharedPreferences).isPremium,
                                              buttonTitle: "Lesson ${index + 1}",
                                              description:
                                                  data.result[index].description,
                                              title:
                                                  "${index + 1}.${data.result[index].title!.toUpperCase()}",
                                              url: data.result[index].image,
                                              onTaPForPay: () async {
                                                await showCustomModalBottomSheet(
                                                    context);
                                              },
                                              onTaPContent: () async {
                                                Navigator.of(context,rootNavigator: true).push(Utils.createRoute(
                                                        LessonMenuPage(
                                                      lessonId: data.result[index]
                                                              .lessonCode ??
                                                          "",
                                                      imageUrl: data.result[index]
                                                              .image ??
                                                          '',
                                                      lessonTitle:
                                                          "${index + 1}. ${data.result[index].title!.toUpperCase()}",
                                                    )));
                                               
                                                //   }
                                                // }
                                              },
                                            ),
                                          );
                          },
                        ),
                                       
                                      ],
                                    ),
                                  );
                                },
                              ),
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

  

  Future<bool?> showCustomModalBottomSheet(BuildContext context) {
    return showModalBottomSheet<bool>(
      isDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return const PaymentBottom();
      },
    );
  }
}
