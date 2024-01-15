import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Fitnessplan extends StatelessWidget {
  const Fitnessplan({super.key});

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
            "Fitness plan",
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
                      "https://www.themanual.com/wp-content/uploads/sites/9/2022/02/is-working-out-5-days-a-week-too-much.jpg?fit=800%2C800&p=1"),
                  Text(
                      "Monday: Upper-body strength training\nTuesday: 30 minutes of running, walking, or biking\nWednesday: Yoga or Pilates session\nThursday: Rest day\nFriday: Lower-body strength training\nSaturday: Full-body bodyweight workout\nSunday: Rest day",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Image.network(
                      'https://www.themanual.com/wp-content/uploads/sites/9/2022/02/how-many-days-a-week-should-i-work-out-for-best-results.jpg?fit=800%2C800&p=1'),
                  Text(
                      "\u2022  Reduce consumption of foods filled with salt, sugar, and trans fats\n\n \u2022  Eat lean proteins such as fish, poultry, ground turkey, Greek yogurt, beans, and eggs\n\n\u2022  Consume copious amounts of vegetables, fruits, whole grains, and low-fat dairy\n\n\u2022  Avoid cholesterol and saturated fats",
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
            )
          ],
        ));
  }
}
