import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sysbit/src/features/about_page/presentation/widget/package_info.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
        automaticallyImplyLeading: false,
      
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(flex: 1,child: Container(alignment: Alignment.centerLeft,child: IconButton(onPressed: () {
              Navigator.pop(context);
            }, icon: const Icon(Icons.arrow_back_ios_rounded)))),
            Expanded(
              flex: 1,
              child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "About",
                    style: GoogleFonts.inter(
                        fontSize: 17, fontWeight: FontWeight.w600),
                  )),
            ),
           const Expanded(flex: 1,child: SizedBox())
          ],
        ),
       
      ),body: const Column(
        children: [
          PackageInfoWidget()
        ],
      ),);
  }
}