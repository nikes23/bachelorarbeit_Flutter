import 'package:flutter/material.dart';
import 'dart:developer' as developer;


class ImageURL extends StatefulWidget {
  const ImageURL({Key? key}) : super(key: key);

  @override
  _ImageURLState createState() => _ImageURLState();
}

class _ImageURLState extends State<ImageURL> {
  @override
  Widget build(BuildContext context) {
    developer.log('Displayede');
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Images"),
        backgroundColor: const Color(0xFF235A97),
      ),
      body: GridView.count(
        //Anzahl der Spalten
        crossAxisCount: 2,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        childAspectRatio: 1.5,
        padding: const EdgeInsets.all(20),
        children: [
          Center(
              child: Image.asset(
            'assets/swift.png',
            fit: BoxFit.contain,
          )),
          Center(
              child: Image.asset(
            'assets/android.png',
            fit: BoxFit.contain,
          )),
          Center(
              child: Image.asset(
            'assets/google-flutter-logo.png',
            fit: BoxFit.contain,
          )),
          Center(
              child: Image.asset(
            'assets/dart.png',
            fit: BoxFit.contain,
          )),
          Center(
              child: Image.asset(
            'assets/react.png',
            fit: BoxFit.contain,
          )),
          Center(
              child: Image.asset(
            'assets/xamarin.png',
            fit: BoxFit.contain,
          )),
          Center(
              child: Image.asset(
            'assets/ionic.png',
            fit: BoxFit.contain,
          )),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
                child: Image.asset(
              'assets/pwa.png',
              fit: BoxFit.contain,
            )),
          ),
          Center(
              child: Image.asset(
            'assets/html5.png',
            fit: BoxFit.contain,
          )),
          Center(
              child: Image.asset(
            'assets/css3.png',
            fit: BoxFit.contain,
          )),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
                child: Image.asset(
              'assets/js.png',
              fit: BoxFit.contain,
            )),
          ),
          Center(
              child: Image.asset(
            'assets/nodejs.png',
            fit: BoxFit.contain,
          )),
          Center(
              child: Image.asset(
            'assets/angular.png',
            fit: BoxFit.contain,
          )),
          Center(
              child: Image.asset(
            'assets/php.png',
            fit: BoxFit.contain,
          )),
          Center(
              child: Image.asset(
            'assets/java.png',
            fit: BoxFit.contain,
          )),
          Center(
              child: Image.asset(
            'assets/python.png',
            fit: BoxFit.contain,
          )),
        ],
      ),
    );
  }
}

/*
*        Stack(
            children: [
              Positioned(
                  child: Center(
                      child: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Python-logo-notext.svg/1024px-Python-logo-notext.svg.png',
                fit: BoxFit.contain,
              ))),
              const Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Test',
                      style: TextStyle(fontSize: 18),
                    )),
              )
            ],
          ),
*
* */
