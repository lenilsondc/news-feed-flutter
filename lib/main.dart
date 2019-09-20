import 'package:flutter/material.dart';
import 'package:news/pages/home/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'World News',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Color(0xff111111)),
        canvasColor: Color(0xff111111),
        primaryColor: Colors.indigo,
        indicatorColor: Colors.white,
      ),
      home: HomePage(),
    );
  }
}
