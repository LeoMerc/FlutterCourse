import 'package:flutter/material.dart';

class profileBackground extends StatelessWidget {
  const profileBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    Container purpleC = Container(
      height: 400,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Color(0xFF4268D3),
              Color(0xFF584CD1),
            ],
            begin: FractionalOffset(0.2, 0.0),
            end: FractionalOffset(1.0, 0.6),
            stops: [0.0, 0.6],
            tileMode: TileMode.clamp),
      ),
      alignment: Alignment(-0.9, -0.6),
    );

    return purpleC; 
  }
}