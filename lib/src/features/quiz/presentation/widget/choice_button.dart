import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class ChoiceButton extends StatelessWidget {
  const ChoiceButton({super.key,required this.content,required this.value, required this.onChanged,required this.groupValue});
  final String value;
 final Function(String?) onChanged;
 final String groupValue;
 final String content; 
  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Material(
            child: InkWell(
              borderRadius: BorderRadius.circular(25),
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    border: Border.all(width: 1.5, color: Colors.black54),
                    borderRadius: BorderRadius.circular(25)),
                child: Row(
                  children: [
                    Expanded(
                        child: HtmlWidget(
                            content)),
                    Radio<String>(
                      toggleable: true,
                     value: value,
                     activeColor: Colors.black54,
                groupValue: groupValue,
                      onChanged: onChanged
                    )
                  ],
                ),
              ),
            ),
          ),
        );
  }
}