import 'package:fitme/components/requrements.dart';
import 'package:fitme/image/mybutton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dietplan extends StatelessWidget {
  Dietplan({super.key});

  List<String> content = ["Lose Weight", "Gain Muscle", "Get Fit"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new)),
        elevation: 0,
        title: Text(
          "Diet plan",
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
          child: SizedBox(
        height: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("What is Your Goal?",
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(
              height: 10,
            ),
            mybutton(
              
              content: content[0],
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Steps(
                              name: content[0],
                            )));
              },
              color: Colors.blue,
              height: 50,
              weight: MediaQuery.of(context).size.width,
            ),
            mybutton(
              content: content[1],
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Steps(
                              name: content[1],
                            )));
              },
              color: Colors.blue,
              height: 50,
               weight: MediaQuery.of(context).size.width,
            ),
            mybutton(
              content: content[2],
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Steps(
                              name: content[2],
                            )));
              },
              color: Colors.blue,
              height: 50,
              weight: MediaQuery.of(context).size.width,
            )
          ],
        ),
      )),
    );
  }
}
