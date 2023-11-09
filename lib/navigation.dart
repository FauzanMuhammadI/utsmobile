import 'package:flutter/material.dart';
import 'package:utsmobile/homepage.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:utsmobile/menu_matematis.dart';
import 'package:utsmobile/profil.dart';
import 'package:utsmobile/sensor.dart';


class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.green,
        color: Colors.black38,
        buttonBackgroundColor: Color(0xFF008C24),
        height: 50,
        items: <Widget>[
          Icon(Icons.home, color: Colors.white, size: 30),
          Icon(Icons.calculate_rounded, color: Colors.white, size: 30),
          Icon(Icons.sensors_rounded, color: Colors.white, size: 30),
          Icon(Icons.person, color: Colors.white, size: 30),
        ],
        index: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      body: <Widget>[
        Container(
          child: Homepage(),
        ),
        Container(
          child: MenuMatematis(),
        ),
        Container(
          child: Sensor(),
        ),
        Container(
          child: Profil(),
        ),
      ][currentIndex],
    );
  }
}