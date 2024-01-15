import 'package:fitme/components/customtile.dart';
import 'package:fitme/components/product.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Vegitables extends StatelessWidget {
  Vegitables({super.key});
  List<product> fruits = [
    product(
        name: "Artichoke",
        img:
            "https://i.pinimg.com/474x/d6/3e/b2/d63eb238ae12ca8afd9b276d66a1a2b0.jpg",
        Protien: "3.3g",
        kcal: "47kcal",
        fiber: "5.4g",
        fat: "0.2g",
        Carbohydrate: "10.5g"),
    product(
        name: "Asparagus",
        img:
            "https://i.pinimg.com/474x/46/9a/88/469a8819b721905406d92314b5626587.jpg",
        Protien: "2.9g",
        kcal: "24.4kcal",
        fiber: "1.7g",
        fat: "0.6g",
        Carbohydrate: "1.9g"),
    product(
        name: "Baked Potato,",
        img:
            "https://i.pinimg.com/474x/ff/9e/d2/ff9ed2decd1481fcf4cfd15b3c716629.jpg",
        Protien: "2.3g",
        kcal: "109.0kcal",
        fiber: "2.4g",
        fat: "0.1g",
        Carbohydrate: "25.2g"),
    product(
        name: "Beans",
        img:
            "https://i.pinimg.com/474x/9f/99/2e/9f992eb2524c091dc55332011ee4a088.jpg",
        Protien: "7.9g",
        kcal: "97kcal",
        fiber: "6.5g",
        fat: "0.6g",
        Carbohydrate: "11.7g"),
    product(
        name: "Beetroot",
        img:
            "https://i.pinimg.com/474x/43/96/57/4396570fe29e4b2f013324707768da3a.jpg",
        Protien: "1.7g",
        kcal: "44kcal",
        fiber: "3.1g",
        fat: "0.2g",
        Carbohydrate: "10g"),
    product(
        name: "Broccoli",
        img:
            "https://i.pinimg.com/474x/50/42/e9/5042e975ee2b41a7c70ab4ace2b5e3e8.jpg",
        Protien: "3.9g",
        kcal: "30.8kcal",
        fiber: "2.6g",
        fat: "0.9g",
        Carbohydrate: "1.7g")
  ];
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
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "High Protien Vegitables",
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 1,
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: fruits.length,
                  itemBuilder: ((context, index) {
                    var item = fruits[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                            child: CustomTile(
                                name: item.name,
                                img: item.img,
                                Protien: item.Protien,
                                kcal: item.kcal,
                                fiber: item.fiber,
                                fat: item.fat,
                                Carbohydrate: item.Carbohydrate)),
                      ),
                    );
                  })),
            ),
          ],
        ));
  }
}
