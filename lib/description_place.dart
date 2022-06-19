import 'package:flutter/material.dart';
import 'button_purple.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  double stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {

   final star_border = Container(
      margin: EdgeInsets.only(top: 320.0, right: 3.0),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
        size: 20.0,
      ),
    );

    final star_half = Container(
      margin: EdgeInsets.only(top: 320.0, right: 3.0),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
        size: 20.0,
      ),
    );
    final star = Container(
      margin: EdgeInsets.only(top: 320.0, right: 3.0),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
        size: 20.0,
      ),
    );

    final desc = Container(
      margin: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
      child: Text(
        descriptionPlace,
        
          style: TextStyle(
            fontFamily: "Lato",
            fontSize: 15,
            color: Colors.black,
          ),
          textAlign: TextAlign.justify,
          ),
    );

  
    

    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
            namePlace,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
              fontFamily: "Lato",
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            star_half,
            star_border,
          ],
        ),
      ],
    );

  Row (children: <Widget>[desc,],);

    final cont = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
     children: <Widget>[
     Container(child: title_stars,),
     Container(child: desc,),
      ButtonPurple("Navigate"),
     ],


   
    );

    return cont;
  }
}
