import 'package:flutter/material.dart';
import 'visuel_general.dart';
import 'liste_articles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: const MyHomePage(
      title: 'Ma Boutique en Ligne',
      body: ArticlesList(title: '',),
    ),
  );
}


