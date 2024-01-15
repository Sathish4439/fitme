import 'package:fitme/components/verients.dart';
import 'package:fitme/pages/healthy_food/Fruits.dart';
import 'package:fitme/pages/healthy_food/Vegitables.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HealthyFood extends StatelessWidget {
  const HealthyFood({super.key});

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
            "Healthy Foods",
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Verients(
              color: Colors.green,
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Fruits()));
              },
              title: "Fruits",
              img:
                  'https://i.pinimg.com/564x/af/61/6c/af616c58b59c722a1ff3a248cdff7e53.jpg',
            ),
            Verients(
                color: Colors.red,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Vegitables()));
                },
                title: "Vegitables",
                img:
                    'https://i.pinimg.com/474x/76/f4/de/76f4de4053e490f2c52e83988c8af393.jpg')
          ],
        ));
  }
}
