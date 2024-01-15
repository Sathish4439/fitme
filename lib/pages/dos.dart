import 'dart:io';

import 'package:fitme/image/mybutton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class does extends StatelessWidget {
  const does({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new)),
        title: Text(
          "Do's and Don't",
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: mybutton(
            content: "Open Youtube",
            onTap: () {
              Link("https://www.youtube.com/");
            },
            color: Colors.blue,
            height: 40,
            weight: MediaQuery.of(context).size.width),
      ),
    );
  }
}
