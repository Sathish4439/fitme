import 'package:fitme/components/customtile.dart';
import 'package:fitme/components/product.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Fruits extends StatelessWidget {
  Fruits({super.key});
  List<product> fruits = [
    product(
        name: "Apple",
        img:
            "https://i.pinimg.com/474x/3f/a2/87/3fa287c717ff7a7102e6d872c68b5bda.jpg",
        Protien: "0.35g",
        kcal: "49.05kcal",
        fiber: "9",
        fat: "0.1g",
        Carbohydrate: "11.83g"),
    product(
        name: "Apricots",
        img:
            "https://i.pinimg.com/474x/51/99/73/5199734332aa6536f9fcf0c9f0566c0e.jpg",
        Protien: "1.5g",
        kcal: "51.6kcal",
        fiber: "2.15g",
        fat: "0.42g",
        Carbohydrate: "11.96g"),
    product(
        name: "Avocado Pear",
        img:
            "https://i.pinimg.com/474x/21/22/39/21223974c82d732a4ca07bfc9cb706ea.jpg",
        Protien: "1.9g",
        kcal: "190.0kcal",
        fiber: "3.4g",
        fat: "19.5g",
        Carbohydrate: "1.9g"),
    product(
        name: "Banana",
        img: "https://i.pinimg.com/474x/1c/16/62/1c1662f546cc85a1d77732c840ff9113.jpg",
        Protien: "1.2g",
        kcal: "95.0kcal",
        fiber: "4.2g",
        fat: "0.3g",
        Carbohydrate: "20.9g"),
    product(
        name: "Blackberries",
        img: "https://i.pinimg.com/474x/4f/6a/92/4f6a922ed22fb930d2b3b42fb2dc1c5e.jpg",
        Protien: "0.9g",
        kcal: "25.25kcal",
        fiber: "3.1g",
        fat: "0.2g",
        Carbohydrate: "5.1g"),
    product(
        name: "Cherries",
        img: "https://i.pinimg.com/474x/ed/81/b7/ed81b756bac976ede8c7c3bb30b8ad82.jpg",
        Protien: "0.7g",
        kcal: "39kcal",
        fiber: "0.7g",
        fat: "0.1g",
        Carbohydrate: "9.5g")
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
                "High Protien fruits",
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
