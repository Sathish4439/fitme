import 'package:fitme/pages/caloriescount.dart';
import 'package:fitme/pages/diet_pages/Gain_muscle.dart';
import 'package:fitme/pages/diet_pages/get_fit.dart';
import 'package:fitme/pages/diet_pages/lose_weight.dart';
import 'package:fitme/pages/healthy_food/healthyfoo.dart';
import 'package:fitme/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Steps extends StatefulWidget {
  String name;
  Steps({Key? key, required this.name}) : super(key: key);

  @override
  State<Steps> createState() => _StepsState();
}

class _StepsState extends State<Steps> {
  int _currentStep = 0;
  String selectedAge = "Under 20";
  String gender = "Male";
  String issue = "Yes";
  // Updated variable name

  List<String> age = [
    "Under 20",
    "20 - 30",
    "30 - 40",
    "40 - 50",
    "50 - 60",
  ];
  List<String> genders = ["Male", "Female"];

  List<String> issues = ["Yes", "No"];

  @override
  Widget build(BuildContext context) {
    String CurrentOption = age[0];
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new)),
        title: Text(
          "Body parameter",
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Stepper(
            steps: [
              Step(
                isActive: _currentStep == 0,
                title: Text("Step 1"),
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Select your age catagory",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        )),
                    RadioListTile(
                      title: Text(age[0]),
                      value: age[0],
                      groupValue: selectedAge,
                      onChanged: (value) {
                        setState(() {
                          selectedAge = value.toString();
                        });
                      },
                    ),
                    RadioListTile(
                      title: Text(age[1]),
                      value: age[1],
                      groupValue: selectedAge,
                      onChanged: (value) {
                        setState(() {
                          selectedAge = value.toString();
                        });
                      },
                    ),
                    RadioListTile(
                      title: Text(age[2]),
                      value: age[2],
                      groupValue: selectedAge,
                      onChanged: (value) {
                        setState(() {
                          selectedAge = value.toString();
                        });
                      },
                    ),
                    RadioListTile(
                      title: Text(age[3]),
                      value: age[3],
                      groupValue: selectedAge,
                      onChanged: (value) {
                        setState(() {
                          selectedAge = value.toString();
                        });
                      },
                    ),
                    RadioListTile(
                      title: Text(age[4]),
                      value: age[4],
                      groupValue: selectedAge,
                      onChanged: (value) {
                        setState(() {
                          selectedAge = value.toString();
                        });
                      },
                    )
                  ],
                ),
              ),
              Step(
                  isActive: _currentStep == 1,
                  title: Text("Step 2"),
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Kindly select your gender",
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          )),
                      RadioListTile(
                        title: Text(genders[0]),
                        value: genders[0],
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        title: Text(genders[1]),
                        value: genders[1],
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value.toString();
                          });
                        },
                      ),
                    ],
                  )),
              Step(
                  isActive: _currentStep == 2,
                  title: Text("Step 3"),
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Do you have any health issue",
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          )),
                      RadioListTile(
                        title: Text(issues[0]),
                        value: issues[0],
                        groupValue: issue,
                        onChanged: (value) {
                          setState(() {
                            issue = value.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        title: Text(issues[1]),
                        value: issues[1],
                        groupValue: issue,
                        onChanged: (value) {
                          setState(() {
                            issue = value.toString();
                          });
                        },
                      )
                    ],
                  )),
              Step(
                isActive: _currentStep == 3,
                title: Text("Step 4"),
                content: Text("Are you Ready press continue",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    )),
              )
            ],
            currentStep: _currentStep,
            onStepTapped: (int newvalue) {
              setState(() {
                _currentStep = newvalue;
              });
            },
            onStepContinue: () {
              if (_currentStep < 3) {
                setState(() {
                  _currentStep += 1;
                });
              } else if (_currentStep == 3 && widget.name == "Gain Muscle") {
                print(widget.name);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Gain_muscle()));
              } else if (_currentStep == 3 && widget.name == "Lose Weight") {
                print(widget.name);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Lost_weight()));
              } else if (_currentStep == 3 && widget.name == "Get Fit") {
                print(widget.name);
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => GetFit()));
              }
            },
            onStepCancel: () {
              if (_currentStep > 0) {
                setState(() {
                  _currentStep -= 1;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
