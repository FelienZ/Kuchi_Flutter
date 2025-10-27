import 'package:flutter/material.dart';
import 'package:kuchi_flutter/Home/homepage.dart';
import 'package:kuchi_flutter/Wisata/wisatapage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Kuchi Flutter';
    return MaterialApp(
      //Ini Title Window
      title: appTitle,
      initialRoute: '/',
      routes: {
        '/': (context) => Homepage(),
        '/wisatapage': (context) => Wisatapage(),
      },
    );
  }
}
