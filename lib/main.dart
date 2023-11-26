import 'package:flutter/material.dart';
import 'MainPage.dart';
void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Seelfa",
      home: MainPage(),
    );
  }
}
