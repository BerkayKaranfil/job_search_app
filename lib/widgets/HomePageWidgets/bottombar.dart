import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:job_search_app/pages/first_page.dart';

import '../../pages/home_page.dart';

class BottomBarWidget extends StatefulWidget {
  const BottomBarWidget({super.key});

  @override
  State<BottomBarWidget> createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends State<BottomBarWidget> {
  int currentIndex = 0;
  final screen = [
    HomePage(),
    FirstPage(),
    HomePage(),
    FirstPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen [currentIndex],
      bottomNavigationBar: BottomNavigationBar(iconSize: 10,
        selectedItemColor: Color(0xff5786FF),
        unselectedItemColor: Color(0xff40577D),
        type: BottomNavigationBarType.fixed,
        items: [
        
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.abc), label: "Activity"),
        BottomNavigationBarItem(icon: Icon(Icons.saved_search), label: "Saved"),
        BottomNavigationBarItem(icon: Icon(Icons.portable_wifi_off_outlined), label: "Profile"),
      ]),
    );
  }
}