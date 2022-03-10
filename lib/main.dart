import 'package:flutter/material.dart';
import 'package:bachelorarbeit/screens/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Bachelorarbeit Anton Kempf';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
