import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/platzi_trips.dart';
import 'description_place.dart';
import 'review.dart';
import 'review_list.dart';
import 'gradient_back.dart';
import 'header_appbar.dart';
import 'platzi_trips.dart';
void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App practica',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: PlatziTrips(),
      ),
    );
  }
}
