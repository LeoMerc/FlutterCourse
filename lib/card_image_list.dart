import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: ListView(
        padding: EdgeInsets.all(25),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/img/P1.jpg"),
          CardImage("assets/img/P2.jpg"),
          CardImage("assets/img/P3.jpg"),
          CardImage("assets/img/P1.jpg"),
          CardImage("assets/img/P2.jpg"),
          CardImage("assets/img/P3.jpg"),
        ],
      ),
    );
  }
}
