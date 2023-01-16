import 'package:f_four/widgets/card_listtile.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(backgroundColor: Colors.red),
      title: 'Material App',
      home: CardListTile(),
    );
  }
}
