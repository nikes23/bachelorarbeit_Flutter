import 'package:flutter/material.dart';

class BelowClass extends StatefulWidget {
  const BelowClass({Key? key}) : super(key: key);

  @override
  _BelowClassState createState() => _BelowClassState();
}

class _BelowClassState extends State<BelowClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Lower Page"),
        backgroundColor: const Color(0xFF235A97),
      ),
      body: const Center(
        child: Text('Lower Page'),
      ),
    );
  }
}