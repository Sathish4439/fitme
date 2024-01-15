import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyBox extends StatelessWidget {
  void Function()? onTap;
  String img;
  String title;
  MyBox(
      {super.key, required this.img, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                Column(
                  children: [
                    Image.network(
                      img,
                      height: 100,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      title,
                      style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
