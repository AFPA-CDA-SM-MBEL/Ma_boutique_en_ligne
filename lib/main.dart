import 'package:flutter/material.dart';
import 'package:ma_boutique_en_ligne/view/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: "Flutter Demo",
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: const MyHomePage(
      title: "Flutter Demo Home Page",
    ),
  );
}