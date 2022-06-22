import 'package:flutter/material.dart';
import 'package:myapp/favButtonProfile.dart';

class whiteCardProfile extends StatelessWidget {
  String placeName = "Knuckles Mountains Range",
      whatToDo = "Hiking, Walking, Camping, Scenery and photography, etc.",
      StepCount = "Steps  2,132";
  @override
  Widget build(BuildContext context) {
    Container pName = Container(
      margin: EdgeInsets.only(top: 10, left: 10),
      child: Text(
        placeName,
        style: TextStyle(
          color: Colors.black,
          fontSize: 12,
          fontFamily: "Lato",
          fontWeight: FontWeight.bold,
        ),
      ),
    );

    Container activities = Container(
      margin: EdgeInsets.only(top: 7, left: 10),
      child: Text(
        whatToDo,
        style: TextStyle(
          color: Colors.grey,
          fontSize: 10,
          fontFamily: "Lato",
        ),
      ),
    );

    Container steps = Container(
      margin: EdgeInsets.only(top: 7, left: 10),
      child: Text(
        StepCount,
        style: TextStyle(
          color: Color.fromARGB(255, 254, 161, 21),
          fontSize: 12,
          fontFamily: "Lato",
        ),
      ),
    );

    final complete = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        pName,
        activities,
        steps,
      ],
    );
    final completeHeart = Stack(
            alignment: Alignment(.83, 1.1),
      children: [
        complete,
        FavButtonProfile(),
      ],
    );

    final photoContainer = Container(
      height: 90,
      width: 230,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0.0, 7.0),
          ),
        ],
      ),
      margin: EdgeInsets.only(
        top: 170.0,
        left: 93.0,
      ),
      child: completeHeart,
    );

    return photoContainer;
  }
}
