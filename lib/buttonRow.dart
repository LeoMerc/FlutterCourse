import 'package:flutter/material.dart';

class ButtonRow extends StatefulWidget {

  @override
  State<ButtonRow> createState() => _ButtonRow();
}

class _ButtonRow extends State<ButtonRow> {

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

bool tappedTv = false;
  onPressedTv() {
    setState(() {
      if (tappedTv == false) {
        tappedTv = true;
      } else {
        tappedTv = false;
      }
    });
  }
    bool tappedAdd = false;
  onPressedAdd() {
    setState(() {
      if (tappedAdd == false) {
        tappedAdd = true;
      } else {
        tappedAdd = false;
      }
    });
  }

    bool tappedMail = false;
  onPressedMail() {
    setState(() {
      if (tappedMail == false) {
        tappedMail = true;
      } else {
        tappedMail = false;
      }
    });
  }


    bool tappedPerson = false;
  onPressedPerson() {
    setState(() {
      if (tappedPerson == false) {
        tappedPerson = true;
      } else {
        tappedPerson = false;
      }
    });
     }
  @override

 
  Widget build(BuildContext context) {

   SizedBox floatSave = SizedBox(
  width: 40, height: 40,
  child: FittedBox(child:  FloatingActionButton(
      backgroundColor: (tappedSave ? Colors.white : Color.fromARGB(255, 165, 162, 233)),
            foregroundColor: Colors.indigo,

      mini: true,
      tooltip: 'Favoritos',
      onPressed: onPressedSave,
     child:  Icon( Icons.bookmark_border ),
      ),
      ),
   );
   
     SizedBox floatTv = SizedBox(
  width: 40, height: 40,
  child: FittedBox(child:  FloatingActionButton(
      backgroundColor: (tappedTv ? Colors.white : Color.fromARGB(255, 165, 162, 233)),
            foregroundColor: Colors.indigo,

      mini: true,
      tooltip: 'Favoritos',
      onPressed: onPressedTv,
     child:  Icon( Icons.tv ),
      ),
      ),
   );

     
       FloatingActionButton floatAdd = FloatingActionButton(
      backgroundColor: (tappedAdd ? Colors.white : Color.fromARGB(255, 165, 162, 233)),
            foregroundColor: Colors.indigo,

      tooltip: 'Favoritos',
      onPressed: onPressedAdd,
     child:  Icon( Icons.add_outlined, size: 50, ),
      );

   SizedBox floatMail = SizedBox(
  width: 40, height: 40,
  child: FittedBox(child:  FloatingActionButton(
      backgroundColor: (tappedMail ? Colors.white : Color.fromARGB(255, 165, 162, 233)),
            foregroundColor: Colors.indigo,

      mini: true,
      tooltip: 'Favoritos',
      onPressed: onPressedMail,
     child:  Icon( Icons.mail_outline ),
      ),
      ),
   );
     
        SizedBox floatPerson = SizedBox(
  width: 40, height: 40,
  child: FittedBox(child:  FloatingActionButton(
      backgroundColor: (tappedPerson ? Colors.white : Color.fromARGB(255, 165, 162, 233)),
            foregroundColor: Colors.indigo,

      mini: true,
      tooltip: 'Favoritos',
      onPressed: onPressedPerson,
     child:  Icon( Icons.person_outline ),
      ),
      ),
   );
     
     

     
      Row iconRow = Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          floatSave,
          floatTv,
          floatAdd,
          floatMail,
          floatPerson,
        ],
      );


    return iconRow; 
  }
}