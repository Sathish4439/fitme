import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Gain_muscle extends StatelessWidget {
  const Gain_muscle({super.key});

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
            "Gain Muscle",
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                      "https://prod-ne-cdn-media.puregym.com/media/819394/gym-workout-plan-for-gaining-muscle_header.jpg?quality=80&mode=pad&width=992"),
                  Image.network(
                      'https://prod-ne-cdn-media.puregym.com/media/819958/training-splits.jpg?mode=pad&width=2500')
                ],
              ),
            )
          ],
        ));
  }
}
