import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_search_app/main.dart';
import 'package:job_search_app/pages/first_page.dart';
import 'package:job_search_app/pages/home_page.dart';

class items with ChangeNotifier {
  int mainIndexx = 0;

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
      "photo": "assets/homeassets/list1.svg",
      "company": "altasian",
      "job": "Product Designer",
      "location": "Dublin, Ireland"
    },
    {
      "photo": "assets/homeassets/list2.svg",
      "company": "One Pro",
      "job": "Data Analytics",
      "location": "Florida, USA"
    },
    {
      "photo": "assets/homeassets/list3.svg",
      "company": "Shopify",
      "job": "Streamer",
      "location": "Ottowa, Canada"
    },
    {
      "photo": "assets/homeassets/list1.svg",
      "company": "altasian",
      "job": "Product Designer",
      "location": "Dublin, Ireland"
    },
  ];

  List jobType = [
    {
      "jobtype": "Freelance",
    },
    {
      "jobtype": "Part time",
    },
    {
      "jobtype": "Remote",
    },
  ];

  List detailmenus = [
    {
      "menuname": "Description",
      "firstHeader": "Job Descriptions:",
      "firstHeaderContent":
          "Ready to help unleash the power of teams across the\nglobe?\nWe're looking for a Product Designer to join our Cloud\nSecurity team. Jira Software, Jira Service Management,\nConfluence, and Bitbucket Data Center are Atlassian’s\non-premise offers used by our largest and most\ncomplex customers.",
      "secondHeader": "Responsibilities:",
      "secondHeaderContent":
          "# Work on projects across all our Cloud products\n# Harness your product design skills to help\nstreamline the critical experience for our users."
    },
    {
      "menuname": "Company",
      "firstHeader": "Job Descriptions:Değişti",
      "firstHeaderContent": "Engineer",
      "secondHeader": "Active Projects:Değişti",
      "secondHeaderContent": "AAAAA"
    },
    {
      "menuname": "Applicant",
      "firstHeader": "Job Descriptions:Değişti2",
      "firstHeaderContent": "5 years of experince",
      "secondHeader": "Active Projects:Değişti2",
      "secondHeaderContent": "BBBBB"
    },
  ];

  getMenu(int mainIndex){
    return detailmenus[mainIndex]["menuname"].toString();
  }

  getIndex(int value) {
    mainIndexx = value;
    notifyListeners();
  }

  jobContainer(int value) {
    if (mainIndexx == value) {
      return Color(0xff1051F8);
    } else {
      Color(0xff0C0D15);
    }
  }

  jobTextContainer(int value) {
    if (mainIndexx == value) {
      return Color(0xffFFFFFF);
    } else {
      Color.fromARGB(255, 202, 202, 203);
      //Color(0xff40577D);
    }
  }
}

/* class NavbarP {
  String? name;
  IconData? icon;
  Widget? widget;

  NavbarP({this.widget, this.name, this.icon});
} */