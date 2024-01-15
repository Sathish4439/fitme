import 'package:fitme/components/choosebox.dart';

import 'package:fitme/pages/caloriescount.dart';
import 'package:fitme/pages/diet_pages/diet_plan.dart';
import 'package:fitme/pages/dos.dart';
import 'package:fitme/pages/fitnessplan.dart';
import 'package:fitme/pages/healthy_food/healthyfoo.dart';
import 'package:fitme/pages/personal_task.dart';
import 'package:fitme/pages/profilepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Homepage extends StatelessWidget {
  Homepage({super.key});
  List<String> pngs = [
    'https://img.icons8.com/?size=160&id=20E9nMzWQs67&format=png',
    'https://img.icons8.com/?size=96&id=118431&format=png',
    'https://i.pinimg.com/564x/13/78/74/13787448aa181a57c25cfe244c0587f8.jpg',
    'https://i.pinimg.com/564x/9f/28/9d/9f289ded11ffe80b172480d253b0018f.jpg',
    'https://i.pinimg.com/564x/38/fc/9c/38fc9cf06071fcc7fcf1670ad6eeab6a.jpg',
    'https://i.pinimg.com/564x/3e/e1/b3/3ee1b3d06d740c4d1fea85a7eec2b808.jpg'
  ];
  List<String> names = [
    'Diet plan',
    'Calories count',
    'healthy Food',
    'fitness plan',
    "Do's and Don's",
    'Personal Task'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.grey.shade400),
            child: Center(
              child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) =>
                                ProfilePage())));
                  },
                  icon: Icon(
                    Icons.person_2,
                    color: Colors.white,
                  )),
            ),
          ),
        ),
        elevation: 0,
        actions: [
          Container(
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.white),
            child: Center(
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications_none_rounded,
                    ))),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10, right: 2),
            child: SizedBox(
              height: 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Helo, user",
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                      "Fitme will help you track your lifestyle,make positive changes and achieve your goals")
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 2),
            child: SizedBox(
              height: 20,
              child: Text(
                "What You Need From",
                style: GoogleFonts.poppins(color: Colors.black),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: names.length,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MyBox(
                            img: pngs[index],
                            title: names[index],
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Dietplan()));
                            },
                          ));
                    } else if (index == 1) {
                      return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MyBox(
                            img: pngs[index],
                            title: names[index],
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CaloriesCount()));
                            },
                          ));
                    } else if (index == 2) {
                      return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MyBox(
                            img: pngs[index],
                            title: names[index],
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HealthyFood()));
                            },
                          ));
                    } else if (index == 3) {
                      return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MyBox(
                            img: pngs[index],
                            title: names[index],
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Fitnessplan()));
                            },
                          ));
                    } else if (index == 4) {
                      return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MyBox(
                            img: pngs[index],
                            title: names[index],
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => does()));
                            },
                          ));
                    } else if (index == 5) {
                      return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MyBox(
                            img: pngs[index],
                            title: names[index],
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Personal_task()));
                            },
                          ));
                    }
                  }))
        ],
      ),
    );
  }
}
