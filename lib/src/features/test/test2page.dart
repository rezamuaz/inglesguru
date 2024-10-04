import 'package:flutter/material.dart';
import 'package:sysbit/src/core/local_storage/cache/cache.dart';
import 'package:sysbit/src/core/widget/image_builder.dart';

class Test2Page extends StatefulWidget {
  const Test2Page({super.key});

  @override
  State<Test2Page> createState() => _Test2PageState();
}

class _Test2PageState extends State<Test2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("test2"),),
      body: Column(
        children: [
         ImageBuilder(url: "https://t5w5.c20.e2-7.dev/sys/I010101.webp")
        ],
      ),
    );
  }
}