import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_search_app/pages/first_page.dart';
import 'package:job_search_app/pages/home_page.dart';

class items with ChangeNotifier{

 /*  int _selectedIndexx = 0;

  int get selectedIndex => _selectedIndexx;

  set selectedIndex(int value) {
    _selectedIndexx = value;
    notifyListeners();
  }

  List<NavbarP> _itemss = [
    NavbarP(widget: HomePage(),name: 'Home',icon: Icons.home),
    NavbarP(widget: FirstPage(),name: 'Messages',icon: Icons.chat),
    NavbarP(widget: FirstPage(),name: 'Profile',icon: Icons.account_box_rounded),
    NavbarP(widget: FirstPage(),name: 'Profile',icon: Icons.account_box_rounded),
  ];

  List<NavbarP> get _items => _itemss; */

  List jobList = [
    {
      "photo" : "assets/homeassets/list1.svg",
      "company" : "altasian",
      "job" : "Product Designer",
      "location" : "Dublin, Ireland"
    },
    {
      "photo" : "assets/homeassets/list2.svg",
      "company" : "One Pro",
      "job" : "Data Analytics",
      "location" : "Florida, USA"
    },
    {
      "photo" : "assets/homeassets/list3.svg",
      "company" : "Shopify",
      "job" : "Streamer",
      "location" : "Ottowa, Canada"
    },
    {
      "photo" : "assets/homeassets/list1.svg",
      "company" : "altasian",
      "job" : "Product Designer",
      "location" : "Dublin, Ireland"
    },
  ];

  List jobType = [
    {
      "jobtype" : "Freelance",
    },
    {
      "jobtype" : "Part time",
    },
    {
      "jobtype" : "Remote",
    },
  ];
  
}

/* class NavbarP {
  String? name;
  IconData? icon;
  Widget? widget;

  NavbarP({this.widget, this.name, this.icon});
} */