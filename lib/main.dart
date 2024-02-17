// ignore_for_file: avoid_print, prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types

import 'package:ecommerce_weal/home_page.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
// DevicePreview(builder: (context)=>const MyApp())

void main() {
  runApp(DevicePreview(builder: (context)=>const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    Widget buildnavigatorbar = _navigatorbar();


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: 
      Scaffold(
        bottomNavigationBar: buildnavigatorbar,
        body:HOMEPAGE()
          ));
  }

  Widget _navigatorbar(){
  return BottomNavigationBar(
    iconSize: 40,
    selectedItemColor: Colors.orange,
    items: const [
    BottomNavigationBarItem(icon: Icon(Icons.home_outlined) , label: "*"),
    BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined) , label: "*"),
    BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined) , label: "*")
  ],);
}
}
