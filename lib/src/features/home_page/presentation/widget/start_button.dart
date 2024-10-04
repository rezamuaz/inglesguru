import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartButton extends StatelessWidget {
  const StartButton(
      {super.key, this.callback, this.tile = "button", this.active = false});
  final VoidCallback? callback;
  final String tile;
  final bool active;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: callback,
        child: Container(
          alignment: Alignment.center,
          constraints:  BoxConstraints(
              minWidth: MediaQuery.of(context).size.width*0.25, // Set the minimum width here
            ),
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 3),
          decoration: BoxDecoration(

              color: active? Theme.of(context).colorScheme.primary : Colors.black87 , borderRadius: BorderRadius.circular(15)),
          child: Text(
            tile.toUpperCase(),
            style: GoogleFonts.inter(color: active? Colors.black87 : Theme.of(context).colorScheme.primary,fontWeight: FontWeight.bold,fontSize: 14,),
          ),
        ));
  }
}
