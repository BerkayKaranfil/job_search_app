import 'package:flutter/material.dart';
import 'package:job_search_app/items.dart';
import 'package:job_search_app/pages/first_page.dart';
import 'package:job_search_app/pages/home_page.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: ((context, orientation, ScreenType) {
      return MultiProvider(
        providers: [
          ChangeNotifierProvider<items>(create: ((context) => items()))
        ],
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: FirstPage()),
      );
    }));
  }
}


 