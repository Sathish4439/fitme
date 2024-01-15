import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  final String name;
  final String img;
  final String Protien;
  final String kcal;
  final String fiber;
  final String fat;
  final String Carbohydrate;
  const CustomTile(
      {super.key,
      required this.name,
      required this.img,
      required this.Protien,
      required this.kcal,
      required this.fiber,
      required this.fat,
      required this.Carbohydrate});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 100,
              width: 100,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Image.network(
                img,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Carbohydrate :   " + Carbohydrate),
                  SizedBox(
                    width: 15,
                  ),
                  Text("Protien :  " + Protien)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Calories :  " + kcal),
                  SizedBox(
                    width: 30,
                  ),
                  Text("fat :  " + fat),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
