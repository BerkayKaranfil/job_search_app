import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_search_app/pages/first_page.dart';
import 'package:provider/provider.dart';

import '../../items.dart';

class HomePageListViewWidget extends StatefulWidget {
  const HomePageListViewWidget({super.key});

  @override
  State<HomePageListViewWidget> createState() => _HomePageListViewWidgetState();
}

class _HomePageListViewWidgetState extends State<HomePageListViewWidget> {
  bool heartindex = true;
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: ((context, items items, widget) {
      return ListView.builder(
        itemCount: items.jobList.length,
        itemBuilder: ((context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: InkWell(
            onTap: (() {
              Navigator.push(context, MaterialPageRoute(builder: ((context) => FirstPage())));
            }),
            child: Container(
                height: 134,
                width: 336,
                decoration: BoxDecoration(
            color: Color(0xff0F1926),
            borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset("${items.jobList[index]["photo"]}"),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${items.jobList[index]["company"]}",
                              style: GoogleFonts.inter(
                                  fontSize: 13, color: Color(0xff40577D)),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "${items.jobList[index]["job"]}",
                              style: GoogleFonts.inter(
                                  fontSize: 15,
                                  color: Color(0xffF8FAFC),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              heartindex = !heartindex;
                              
                            });
                          },
                          child: heartindex == true
                              ? SvgPicture.asset("assets/homeassets/favorite1.svg")
                              : SvgPicture.asset(
                                  "assets/homeassets/favorite2.svg")),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SvgPicture.asset("assets/homeassets/map_pin.svg"),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      " ${items.jobList[index]["location"]}",
                      style:
                          GoogleFonts.inter(color: Color(0xff40577D), fontSize: 13),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 24,
                  width: 400,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: ((context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            height: 24,
                            width: 63,
                            decoration: BoxDecoration(
                                color: Color(0xff0F0C07),
                                borderRadius: BorderRadius.circular(8)),
                            child: Center(
                              child: Text(
                                "Freelance",
                                style: GoogleFonts.inter(
                                  color: Color(0xff2684FF),
                                  fontSize: 11,
                                ),
                              ),
                            ),
                          ),
                        );
                      })),
                )
              ],
            ),
                ),
              ),
          ),
        );
      }));
    }));
  }
}