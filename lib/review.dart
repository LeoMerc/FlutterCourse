import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String pathImage =
      "https://s.yimg.com/ny/api/res/1.2/fwrEp1Z_gqvDZRka47_04g--/YXBwaWQ9aGlnaGxhbmRlcjt3PTY0MDtoPTMyMA--/https://s.yimg.com/uu/api/res/1.2/3Ob.MPXaaUBstFbKQY6P2A--~B/aD0zMDA7dz02MDA7YXBwaWQ9eXRhY2h5b24-/https://media.zenfs.com/es/levelup_525/404abf007eb937f146076c57d2644492";
  String name = "Nombre Nombre",
      details = "1 review 5 photos",
      comment = "Hay un lugar muy bonito en esa ciudad.";

  Review(this.pathImage, this.name, this.details, this.comment);
  @override
  Widget build(BuildContext context) {
    final star_border = Container(
      margin: EdgeInsets.only(left: 6),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
        size: 13.0,
      ),
    );

    final star_half = Container(
      margin: EdgeInsets.only(left: 6),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
        size: 13.0,
      ),
    );
    final star = Container(
      margin: EdgeInsets.only(left: 6),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
        size: 13.0,
      ),
    );

    final userComment = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 13.0,
          fontWeight: FontWeight.w900,
        ),
      ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 13.0,
          color: Colors.grey,
        ),
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 17.0,
        ),
      ),
    );

   final stars = Row(
          children: <Widget>[
            star,
            star,
            star,
            star_half,
            star_border,
          ],
        );

    
    final infoStar = Row(
      children: [
        userInfo, stars,
      ],
    );
    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        infoStar,
        userComment,
      ],
    );

    final photo = Container(
      height: 100,
      width: 100,
      margin: EdgeInsets.only(
        top: 10.0,
        left: 10.0,
      ),
      child: CircleAvatar(
        backgroundImage: NetworkImage(pathImage),
      ),
    );

    return Row(
      children: <Widget>[
        photo,
        userDetails,
      ],
    );
  }
}
