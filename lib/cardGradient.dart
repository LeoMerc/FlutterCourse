import 'package:flutter/material.dart';

class cardGradient extends StatelessWidget {
  String pathImage = "assets/img/P1.jpg";
  cardGradient(this.pathImage);
  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: 200.0,
      width: 400.0,
      margin: EdgeInsets.only(top: 25.0, left: 15.0, right: 15.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage),
        ),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0.0, 7.0),
          ),
        ],
      ),
    );

    return card;
  }
}
