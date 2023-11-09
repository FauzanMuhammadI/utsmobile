import 'package:flutter/material.dart';
import 'package:utsmobile/bmi.dart';
import 'package:utsmobile/menu_matematis.dart';
import 'package:utsmobile/navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi',
      theme: ThemeData(fontFamily: "SF-Pro-Text"),
      home: NavigationPage(),
    );
  }
}