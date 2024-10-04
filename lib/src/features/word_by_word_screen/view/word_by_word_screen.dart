import 'package:flutter/material.dart';

class WordByWordScreen extends StatefulWidget {
  const WordByWordScreen({super.key});

  @override
  State<WordByWordScreen> createState() => _WordByWordScreenState();
}

class _WordByWordScreenState extends State<WordByWordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Choose Conversation"),centerTitle: true,),);
  }
}