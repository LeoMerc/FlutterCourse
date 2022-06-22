import 'package:flutter/material.dart';
import 'package:myapp/cardGradientList.dart';
import 'buttonRow.dart';
class GradientProfile extends StatelessWidget {
  String title = "Profile",
      pathImage =
          "https://s.yimg.com/ny/api/res/1.2/fwrEp1Z_gqvDZRka47_04g--/YXBwaWQ9aGlnaGxhbmRlcjt3PTY0MDtoPTMyMA--/https://s.yimg.com/uu/api/res/1.2/3Ob.MPXaaUBstFbKQY6P2A--~B/aD0zMDA7dz02MDA7YXBwaWQ9eXRhY2h5b24-/https://media.zenfs.com/es/levelup_525/404abf007eb937f146076c57d2644492";
  String namevar = "John Doe", emailvar = "JohnDoe@gmail.com";
  GradientProfile(this.title, this.pathImage, this.namevar, this.emailvar);
  @override
  Widget build(BuildContext context) {
    

    Row TitleSettings = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            left: 30,
            top: 35,
          ),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontFamily: "Lato",
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            left: 240,
            top: 35,
          ),
          child: IconButton(
            icon: Icon(Icons.settings),
            color: Colors.white,
            iconSize: 13,
            onPressed: () {},
          ),
        ),
      ],
    );

    final photo = Container(
      height: 80,
      width: 80,
      margin: EdgeInsets.only(
        top: 10.0,
        left: 30.0,
      ),
      child: CircleAvatar(
        radius: 50,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          radius: 38,
          backgroundImage: NetworkImage(pathImage),
        ),
        
      ),
    );

    final name = Container(
      margin: EdgeInsets.only(
        left: 10.0,
        top: 10.0,
      ),
      child: Text(
        namevar,
        style: TextStyle(
          color: Colors.white,
          fontSize: 15.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.w400,
        ),
      ),
    );

    final email = Container(
      margin: EdgeInsets.only(
        left: 10.0,
        top: 2.0,
      ),
      child: Text(
        emailvar,
        style: TextStyle(
          color: Colors.grey,
          fontSize: 13.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.w300,
        ),
      ),
    );

    final columnNameEmail = Column(
            crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        name,
        email,
      ],
    );

    final rowPicInfo = Row(

      children: [
        photo,
        columnNameEmail,
      ],
    );



    final columnG = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleSettings,
        rowPicInfo,
        ButtonRow(),
      ],
    );

    return columnG;
    
 
  
  }
}
