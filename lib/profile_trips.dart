import 'package:flutter/material.dart';
import 'package:myapp/cardGradientList.dart';
import 'package:myapp/profileBackground.dart';
import 'package:myapp/whiteCardProfile.dart';

import 'GradientProfile.dart';

class ProfileTrips extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return  Stack(
      children: <Widget>[
        profileBackground(),
          cardGradientList(),
      ],
  );

    
  }
}