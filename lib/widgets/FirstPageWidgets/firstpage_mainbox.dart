import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../items.dart';

class FirstPageMainBoxWidget extends StatefulWidget {
  const FirstPageMainBoxWidget({super.key});

  @override
  State<FirstPageMainBoxWidget> createState() => _FirstPageMainBoxWidgetState();
}

class _FirstPageMainBoxWidgetState extends State<FirstPageMainBoxWidget> {
  int mainIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: ((context, items items, Widget) {
      return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 40,
                width: 327,
                decoration: BoxDecoration(
                    color: Color(0xff0C0D15),
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  children: [
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          mainIndex = 0;
                        });
                      },
                      child: Container(
                        height: 32,
                        width: 106,
                        decoration: BoxDecoration(
                          color: mainIndex == 0
                              ? Color(0xff1051F8)
                              : Color(0xff0C0D15),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                            "Descriptions",
                            style: GoogleFonts.inter(
                                fontSize: 13,
                                color: mainIndex == 0
                                    ? Color(0xffFFFFFF)
                                    : Color(0xff40577D)),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          mainIndex = 1;
                        });
                      },
                      child: Container(
                        height: 32,
                        width: 106,
                        decoration: BoxDecoration(
                          color: mainIndex == 1
                              ? Color(0xff1051F8)
                              : Color(0xff0C0D15),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                            "Company",
                            style: GoogleFonts.inter(
                                fontSize: 13,
                                color: mainIndex == 1
                                    ? Color(0xffFFFFFF)
                                    : Color(0xff40577D)),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          mainIndex == 2;
                        });
                      },
                      child: Container(
                        height: 32,
                        width: 106,
                        decoration: BoxDecoration(
                          color: mainIndex == 2
                              ? Color(0xff1051F8)
                              : Color(0xff0C0D15),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                            "Applicant",
                            style: GoogleFonts.inter(
                                fontSize: 13,
                                color: mainIndex == 2
                                    ? Color(0xffFFFFFF)
                                    : Color(0xff40577D)),
                          ),
                        ),
                      ),
                    ),
                    Spacer()
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                mainIndex == 0 ? "Job Descriptions" : "Company",
                style: GoogleFonts.inter(
                    fontSize: 15,
                    color: Color(0xffF8FAFC),
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                mainIndex == 0 ? "Ready to help unleash the power of teams across the\nglobe?\nWe're looking for a Product Designer to join our Cloud\nSecurity team. Jira Software, Jira Service Management,\nConfluence, and Bitbucket Data Center are Atlassian’s\non-premise offers used by our largest and most\ncomplex customers." : "",
                style: GoogleFonts.inter(
                  fontSize: 13,
                  color: Color(0xffAAAFD7),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                mainIndex == 0 ? "Responsibilities" : "",
                style: GoogleFonts.inter(
                    fontSize: 15,
                    color: Color(0xffF8FAFC),
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                mainIndex == 0 ? "# Work on projects across all our Cloud products\n# Harness your product design skills to help\nstreamline the critical experience for our users." : "",
                style:
                    GoogleFonts.inter(fontSize: 13, color: Color(0xffAAAFD7)),
              ),
            ],
          );
    }));
  }
}