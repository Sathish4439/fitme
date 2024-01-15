import 'package:flutter/material.dart';

class Links extends StatelessWidget {
  void Function()? onTap;
  String img;
  Links({super.key, required this.img,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: Center(
              child: Image.network(
            img,
            fit: BoxFit.cover,
          )),
        ),
      ),
    );
  }
}
