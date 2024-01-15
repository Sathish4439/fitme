import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Verients extends StatelessWidget {
  void Function()? onTap;
  Color color;
  String title;
  String img;
  Verients(
      {super.key,
      required this.img,
      required this.title,
      required this.onTap,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: color
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: onTap,
            child: Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(img))),
            ),
          ),
        ],
      ),
    );
  }
}
