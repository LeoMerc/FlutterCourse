import 'package:flutter/material.dart';
import 'package:myapp/whiteCardProfile.dart';
import 'GradientProfile.dart';
import 'cardGradient.dart';

class cardGradientList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Column cardList = Column(
      children: [
        Stack( children:[ cardGradient("assets/img/P1.jpg"),
        whiteCardProfile(),],
        ),

        Stack( children:[ cardGradient("assets/img/P2.jpg"),
        whiteCardProfile(),],
        ),

        Stack( children:[ cardGradient("assets/img/P3.jpg"),
        whiteCardProfile(),],
        ),

        Stack( children:[ cardGradient("assets/img/P1.jpg"),
        whiteCardProfile(),],
        ),
        
      ],
    );

    return Container(
      height: double.infinity,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          GradientProfile(
              "Profile",
              "https://s.yimg.com/ny/api/res/1.2/fwrEp1Z_gqvDZRka47_04g--/YXBwaWQ9aGlnaGxhbmRlcjt3PTY0MDtoPTMyMA--/https://s.yimg.com/uu/api/res/1.2/3Ob.MPXaaUBstFbKQY6P2A--~B/aD0zMDA7dz02MDA7YXBwaWQ9eXRhY2h5b24-/https://media.zenfs.com/es/levelup_525/404abf007eb937f146076c57d2644492",
              "John Doe",
              "JohnDoe123@gmail.com"),
          cardList,
        ],
      ),
    );
  }
}
