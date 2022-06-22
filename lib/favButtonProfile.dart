import 'package:flutter/material.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:another_flushbar/flushbar_route.dart';

class FavButtonProfile extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() {
    return _FavButtonProfile();  
  }

}

class _FavButtonProfile extends State<FavButtonProfile> {

bool tappedSave = false;
  onPressedSave() {
    setState(() {
      if (tappedSave == false) {
        tappedSave = true;
      } else {
        tappedSave = false;
      }
    });

  }
 
  @override

  
  Widget build(BuildContext context) {
 SizedBox floati = SizedBox(
  width: 27, height: 27,
    child:  FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: 'Favoritos',
      onPressed: onPressedSave,
      
     child:  Icon( (tappedSave ? Icons.favorite : Icons.favorite_border),
     size: 15,
      ),

    ),
     
      );
    
    return floati;
  }
}