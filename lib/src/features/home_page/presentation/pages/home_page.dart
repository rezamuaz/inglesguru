import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sysbit/gen/assets.gen.dart';
import 'package:sysbit/src/core/local_storage/hive/hive_service.dart';
import 'package:sysbit/src/core/local_storage/model/user_hive.dart';
import 'package:sysbit/src/features/account_page/presentation/pages/account_page.dart';
import 'package:sysbit/src/features/tutorial_page/presentation/pages/tutorial_page.dart';
import 'package:sysbit/src/features/home_page/presentation/widget/appbar_shape.dart';
import 'package:sysbit/src/features/home_page/presentation/widget/clippath.dart';
import 'package:sysbit/src/features/home_page/presentation/widget/start_button.dart';
import 'package:sysbit/src/features/lessons_page/presentation/pages/lessons_page.dart';
import 'package:sysbit/src/features/quiz/presentation/page/quiz_page.dart';
import 'package:sysbit/src/features/quiz_result/presentation/pages/quiz_result_page.dart';
import 'package:sysbit/src/features/signin_page/data/model/user_auth.dart';
import 'package:sysbit/src/features/test/test_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /// 1
  final collapsedBarHeight = 60.0;
  final expandedBarHeight = 400.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          
      children: [
      
        Positioned(
          top: 0,
          right: 0,
          left: 0,
          height: MediaQuery.of(context).size.height * 0.35,
          child: Container(
           
            decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary),
            padding: EdgeInsets.symmetric(vertical: 20),
            
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*0.15,
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 20,left: 30,right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        Assets.svgs.logo,
                        height: 57,
                        width: 57,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'INGLES GURU',
                            style: GoogleFonts.inter(
                                fontSize: 22, fontWeight: FontWeight.bold,letterSpacing: 1.2),
                          ),
                          Text(
                            'INGLES GURU',
                            style: GoogleFonts.inter(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
            top: MediaQuery.of(context).size.height*0.15+20,
            left: 0,
            right: 0,
            child: Material(
              elevation: 10,
              borderRadius: BorderRadius.only(topLeft: Radius.elliptical(15, 15),topRight: Radius.elliptical(20, 20)),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                height: MediaQuery.of(context).size.height * 3 / 4,
                  decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.elliptical(15, 15),topRight: Radius.elliptical(20, 20)),color: Colors.white),
                  child: Column(
                    children: [
                      Expanded(
                       
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(_createRoute());
                          },
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border:
                                    Border.all(color: Colors.black54, width: 2)),
                            child: Stack(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'STARTER PACK'.toUpperCase(),
                                      style: GoogleFonts.inter(
                                          fontSize: 21,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 1.6,
                                          color: Colors.black87),
                                    ),
                                    // Text(
                                    //   'level 1 basic'.toUpperCase(),
                                    //   style: GoogleFonts.inter(
                                    //       fontSize: 12,
                                    //       fontWeight: FontWeight.bold,
                                    //       letterSpacing: 1.2,
                                    //       color: Colors.black87),
                                    // ),
                                  ],
                                ),
                                Positioned(bottom: 10,right: 10,child: StartButton(tile: "Mulai",active: true,callback: () {
                                  
                                },))
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Expanded(
                    
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LessonsPage()));
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border:
                                    Border.all(color: Colors.black54, width: 2)),
                            child: Stack(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Intermediate pack'.toUpperCase(),
                                      style: GoogleFonts.inter(
                                          fontSize: 21,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 1.6,
                                          color: Colors.black87),
                                    ),
                                    // Text(
                                    //   'level 2 intermediate'.toUpperCase(),
                                    //   style: GoogleFonts.inter(
                                    //       fontSize: 12,
                                    //       fontWeight: FontWeight.bold,
                                    //       letterSpacing: 1.2,
                                    //       color: Colors.black87),
                                    // ),
                                  ],
                                ),
                                Positioned(bottom: 10,right: 10,child: StartButton(tile: "UNLOCK",callback: () {
                                  
                                },))
                              ],
                            ),
                          ),
                        ),
                      ),
                       SizedBox(height: 15),
                      Expanded(
                      
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => AccountPage()));
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border:
                                    Border.all(color: Colors.black54, width: 2)),
                            child: Stack(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'IELTS Coaching'.toUpperCase(),
                                      style: GoogleFonts.inter(
                                          fontSize: 21,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 1.6,
                                          color: Colors.black87),
                                    ),
                                  ],
                                ),
                                 Positioned(bottom: 10,right: 10,child: StartButton(tile: "UNLOCK",callback: () {
                                  
                                },))
                              ],
                              
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ))
      ],
    ));
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const LessonsPage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
