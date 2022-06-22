import 'package:flutter/material.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:another_flushbar/flushbar_route.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();  
  }

}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
 bool pressed = false;
 void onPressedFav () {
  setState(() {
        pressed = !pressed;
      });
  Flushbar(
          // title: "Added to Cart",
          message: pressed ? "Favorited!" : "Unfavorited!",
          duration: Duration(seconds: 2),
        )..show(context);
      
   
 }
 
  @override

  
  Widget build(BuildContext context) {
     FloatingActionButton floati = FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: 'Favoritos',
      onPressed: onPressedFav,
     child:  Icon( pressed ? Icons.favorite : Icons.favorite_border
      ),
    );
    
    return floati;
  }
}