import 'package:flutter/material.dart';

class Utils {
  Utils();
 static String pickFirstWord(String sentence) {
  // Trim the sentence to remove leading/trailing spaces
  String trimmedSentence = sentence.trim();

  // Split the sentence by spaces into a list of words
  List<String> words = trimmedSentence.split(' ');

  // Return the first word if it exists, otherwise return null
  if (words.isNotEmpty && words[0].isNotEmpty) {
    return words[0];
  }
  return ""; // Return null if the sentence is empty
}

static int countWords(String text) {
    // Trim the input and check if it's empty
    text = text.trim();
    if (text.isEmpty) {
      return 0;
    } else {
      // Split the string by whitespace and filter out empty elements
     return text.split(RegExp(r'\s+')).length;
    }
  }

 static Route createRoute(Widget route) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          route,
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