import 'package:flutter/material.dart';
import 'package:bachelorarbeit/screens/camera.dart';
import 'package:bachelorarbeit/screens/image.dart';
import 'package:bachelorarbeit/screens/settings.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyBottomNavigationBar(),
    );
  }
}

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 1;

  final List<Widget> _children = [
    const Camera(),
    const ImageURL(),
    const SettingsClass(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: 'Images',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/settingsIcon.png"),
            ),
            label: 'Settings',
            //backgroundColor: Colors.blue,
          ),
        ],
        currentIndex: _currentIndex,
        onTap: _onItemTapped,

        type: BottomNavigationBarType.fixed,
        //backgroundColor: Color(0xFF2F2F2F),
        unselectedItemColor: Colors.grey,
        selectedItemColor: const Color(0xFF235A97),
        //selectedItemColor: Theme.of(context).primaryColor,
        iconSize: 25,
      ),
    );
  }
}
