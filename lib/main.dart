import 'package:fitme/pages/caloriescount.dart';
import 'package:fitme/pages/loginpage/loginpage.dart';
import 'package:fitme/pages/loginpage/newuser.dart';

import 'package:flutter/material.dart';

import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();

  var my_box = Hive.openBox("mybox");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loginpage(),
    );
  }
}
