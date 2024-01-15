import 'package:fitme/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class mybutton extends StatelessWidget {
  void Function()? onTap;
  Color color;
  double height, weight;
  String content;
  mybutton(
      {super.key,
      required this.content,
      required this.onTap,
      required this.color,
      required this.height,
      required this.weight});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: height,
          width: weight,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(
              content,
              style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
