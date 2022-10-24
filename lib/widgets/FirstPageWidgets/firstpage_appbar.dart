import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

class FirstPageAppBarWidget extends StatefulWidget {
  const FirstPageAppBarWidget({super.key});

  @override
  State<FirstPageAppBarWidget> createState() => _FirstPageAppBarWidgetState();
}

class _FirstPageAppBarWidgetState extends State<FirstPageAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(color: Color(0xff0C0D15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
              onTap: () {
                setState(() {});
              },
              child: SvgPicture.asset(
                  "assets/firstassets/arrowleft.svg")),
          Row(
            children: [
              SvgPicture.asset(
                  "assets/firstassets/firstfavorite.svg"),
              SizedBox(
                width: 20,
              ),
              SvgPicture.asset(
                  "assets/firstassets/outline.svg"),
            ],
          )
        ],
      ),
    );
  }
}