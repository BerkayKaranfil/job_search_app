// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:job_search_app/pages/home_page.dart';
import 'package:job_search_app/widgets/FirstPageWidgets/firstpage_appbar.dart';
import 'package:job_search_app/widgets/FirstPageWidgets/firstpage_job_detail.dart';
import 'package:job_search_app/widgets/FirstPageWidgets/firstpage_mainbox.dart';
import 'package:job_search_app/widgets/HomePageWidgets/bottombar.dart';
import 'package:provider/provider.dart';

import '../items.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int currentIndex = 0;
  final screen = [HomePage(), FirstPage(), HomePage(), FirstPage()];
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: ((context, items items, widget) {
      return Scaffold(
        backgroundColor: Color(0xff0C0D15),
        body: Column(
          children: [
            SizedBox(
              height: 44,
            ),
            Padding(
              padding: EdgeInsets.only(right: 20, left: 20),
              child: FirstPageAppBarWidget(),
            ),
            SizedBox(
              height: 28,
            ),
            Container(
              height: 683,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xff0E1926),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32))),
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  SizedBox(
                    height: 32,
                  ),
                  FirstPageJobDetailWidget(),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20),
                    child: Divider(
                      thickness: 1,
                      color: Color(0xff2B2D30),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FirstPageMainBoxWidget(),
                  SizedBox(
                    height: 60,
                  ),
                   /* BottomNavigationBar(
                      selectedItemColor: Color(0xff5786FF),
                      unselectedItemColor: Color(0xff40577D),
                      type: BottomNavigationBarType.fixed,
                      onTap: ((value) {
                        currentIndex = value;
                      }),
                      items: [
                        BottomNavigationBarItem(
                            icon: Icon(Icons.home), label: "home"),
                            
                        BottomNavigationBarItem(
                            icon: Icon(Icons.abc), label: "Activity"),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.saved_search), label: "Saved"),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.portable_wifi_off_outlined),
                            label: "Profile"),
                      ])  */
                ],
              ),
            ),
          ],
        ),
      );
    }));
  }
}
