import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Lost_weight extends StatelessWidget {
  const Lost_weight({super.key});

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
            "Lose Weight",
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: ListView(
          children: [
            Column(
              children: [
                Container(
                  child: Image.network(
                      'https://www.kobokofitness.com/wp-content/uploads/2017/05/meal-plan-for-weightloss-fitwirr-fitfluential-diaryofafitmommy-diyready-theberry-viralpin-min.jpg'),
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.done,
                              color: Colors.green,
                              size: 30,
                              weight: 100,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Doe's",
                                style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  // color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            "\u2022  get active for 150 minutes a week – you can break this up into shorter sessions aim to get your 5 A Day\n \u2022 80g of fresh, canned or frozen fruit or vegetables count as 1 portion\n\u2022  aim to lose 1 to 2lbs, or 0.5 to 1kg, a weekread food labels\n\u2022  products with more green colour coding than amber and red are often a healthier option swap sugary drinks for water \n\u2022  if you do not like the taste, add slices of lemon or lime for flavourcut down on food that's high in sugar and fat\n\u2022  start by swapping sugary cereal for wholegrain alternativesshare your weight loss plan with someone you trust\n \u2022  they can help motivate you when you have a bad day",
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              wordSpacing: 0.5,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.cancel,
                              color: Colors.red,
                              size: 30,
                              weight: 100,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Don't",
                                style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  // color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            "\n \u2022 do not lose weight suddenly with dietsdo not stock unhealthy food \n \u2022  popcorn, fruit and rice cakes can be healthier alternativesdo not skip meals \n \u2022 you might end up snacking more because you feel hungrydo not finish your plate if you're full \n \u2022 you can save leftover food for the next day",
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              wordSpacing: 0.5,
                            )),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
