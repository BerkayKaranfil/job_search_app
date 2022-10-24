import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstPageJobDetailWidget extends StatefulWidget {
  const FirstPageJobDetailWidget({super.key});

  @override
  State<FirstPageJobDetailWidget> createState() => _FirstPageJobDetailWidgetState();
}

class _FirstPageJobDetailWidgetState extends State<FirstPageJobDetailWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 185,
      width: 160,
      decoration: BoxDecoration(color: Color(0xff0E1926)),
      child: Column(
        children: [
          SvgPicture.asset("assets/firstassets/joblogo.svg"),
          SizedBox(
            height: 15,
          ),
          Text(
            "Product Designer",
            style: GoogleFonts.inter(
                fontSize: 18,
                color: Color(0xffF8FAFC),
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Altasian",
            style: GoogleFonts.inter(fontSize: 15, color: Color(0xff40577D)),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                height: 32,
                width: 76,
                decoration: BoxDecoration(
                  color: Color(0xff0F0C07),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    "Freelance",
                    style: GoogleFonts.inter(
                        fontSize: 13, color: Color(0xff2684FF)),
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                height: 32,
                width: 76,
                decoration: BoxDecoration(
                  color: Color(0xff0F0C07),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    "Full Time",
                    style: GoogleFonts.inter(
                        fontSize: 13, color: Color(0xff2684FF)),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}