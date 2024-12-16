import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:package_info_plus/package_info_plus.dart';

class PackageInfoWidget extends StatefulWidget {
  const PackageInfoWidget({super.key});

  @override
  State<PackageInfoWidget> createState() => _PackageInfoWidgetState();
}

class _PackageInfoWidgetState extends State<PackageInfoWidget> {
  PackageInfo info = PackageInfo(appName: "-", packageName: "-", version: "-", buildNumber: "-");

  @override
  Widget build(BuildContext context) {
    return  FutureBuilder<PackageInfo>(initialData: info,future: PackageInfo.fromPlatform(), builder: (context, snapshot) {
           if (snapshot.connectionState == ConnectionState.waiting) {
            // Show a loading indicator while waiting for the Future to complete
            return const CircularProgressIndicator();
          } else if (snapshot.hasError) {
            // Show an error message if something goes wrong
            return Text('Error: ${snapshot.error}');
          } else if (snapshot.hasData) {
            // If the Future is completed and data is available, display the result
            return Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                 _row("Application Name:", snapshot.data?.appName?? "-"),
                 const Divider(height: 20,color: Colors.black26,),
                  _row("Package Name:", snapshot.data?.packageName?? "-"),
                    const Divider(height: 20,color: Colors.black26,),
                  _row("Version:", snapshot.data?.version?? "-"),
                      const Divider(height: 20,color: Colors.black26,),
                  _row("Build Number:", snapshot.data?.buildNumber?? "-"),
                      const Divider(height: 20,color: Colors.black26,),
                ],
              ),
            );
          } else {
            // Handle the case where there's no data
            return const Text("---");
          }
        },);
  }

  Widget _row(String title,String value){
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Text(title, style: GoogleFonts.inter(fontSize: 14,color: Colors.black54,fontWeight: FontWeight.bold)),Text(value, style: GoogleFonts.inter(fontSize: 12,color: Colors.black38))],);
  }
}