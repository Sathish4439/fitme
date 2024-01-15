import 'package:fitme/image/mybutton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CaloriesCount extends StatefulWidget {
  CaloriesCount({Key? key}) : super(key: key);

  @override
  State<CaloriesCount> createState() => _CaloriesCountState();
}

class _CaloriesCountState extends State<CaloriesCount> {
  String gender = "Male";
  String activityLevel = "Sedentary"; // Added activity level
  double calculatedCalories = 0.0;

  List<String> genders = ["Male", "Female"];
  List<String> activityLevels = [
    "Sedentary",
    "Lightly Active",
    "Moderately Active",
    "Very Active",
    "Extra Active"
  ];

  TextEditingController ageController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();

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
            "Calories count",
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      body: Center(
        child: SizedBox(
          height: 700,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Form(
                      child: TextField(
                        controller: ageController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: "Age",
                          hintText: "Year",
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Form(
                      child: TextField(
                        controller: heightController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: "Height",
                          hintText: "cm",
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Form(
                      child: TextField(
                        controller: weightController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: "Weight",
                          hintText: "Kg",
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Kindly select your gender",
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
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
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Select your activity level",
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        DropdownButton<String>(
                          value: activityLevel,
                          icon: const Icon(Icons.arrow_downward),
                          iconSize: 24,
                          elevation: 16,
                          style: const TextStyle(color: Colors.deepPurple),
                          onChanged: (String? newValue) {
                            setState(() {
                              activityLevel = newValue!;
                            });
                          },
                          items: activityLevels
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),

                  mybutton(
                      content: "Calculate",
                      onTap: () {
                        calculateCalories();
                      },
                      color: Colors.black,
                      height: 40,
                      weight: double.infinity),
                  // ElevatedButton(
                  //   onPressed: () {

                  //   },
                  //   child: Text("Calculate"),
                  //   style: ElevatedButton.styleFrom(
                  //     primary: Colors.black,
                  //   ),
                  // ),
                  // Display the calculated calories
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Total Calories: ${calculatedCalories.toStringAsFixed(2)}",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void calculateCalories() {
    // Replace this with your actual calorie calculation logic
    double age = double.tryParse(ageController.text) ?? 0.0;
    double height = double.tryParse(heightController.text) ?? 0.0;
    double weight = double.tryParse(weightController.text) ?? 0.0;

    // Just a simple example of calorie calculation
    double al;
    if (gender == "male") {
      if (activityLevel == "Sedentary") {
        al = 1.2;
        calculatedCalories =
            66.47 + (13.75 * weight) + (5.003 * height) - (6.755 * age) + al;
      } else if (activityLevel == "Lightly Active") {
        al = 1.375;
        calculatedCalories =
            66.47 + (13.75 * weight) + (5.003 * height) - (6.755 * age) + al;
      } else if (activityLevel == "Moderately Active") {
        al = 1.55;
        calculatedCalories =
            66.47 + (13.75 * weight) + (5.003 * height) - (6.755 * age) + al;
      } else if (activityLevel == "Very Active") {
        al = 1.725;
        calculatedCalories =
            66.47 + (13.75 * weight) + (5.003 * height) - (6.755 * age) + al;
      } else {
        al = 1.9;
        calculatedCalories =
            66.47 + (13.75 * weight) + (5.003 * height) - (6.755 * age) + al;
      }
    } else {
      if (activityLevel == "Sedentary") {
        al = 1.2;
        calculatedCalories = calculatedCalories =
            655.1 + (9.563 * weight) + (1.850 * height) - (4.676 * age) + al;
      } else if (activityLevel == "Lightly Active") {
        al = 1.375;
        calculatedCalories = calculatedCalories =
            655.1 + (9.563 * weight) + (1.850 * height) - (4.676 * age) + al;
      } else if (activityLevel == "Moderately Active") {
        al = 1.55;
        ;
        calculatedCalories = calculatedCalories =
            655.1 + (9.563 * weight) + (1.850 * height) - (4.676 * age) + al;
      } else if (activityLevel == "Very Active") {
        al = 1.725;
        calculatedCalories = calculatedCalories =
            655.1 + (9.563 * weight) + (1.850 * height) - (4.676 * age) + al;
      } else {
        al = 1.9;
        calculatedCalories = calculatedCalories =
            655.1 + (9.563 * weight) + (1.850 * height) - (4.676 * age) + al;
      }
    }

    setState(() {});
  }
}
// calculatedCalories = 655.1 +(9.563*weight)  + (1.850 * height) - (4.676 * age) + al;
// calculatedCalories = 10 * weight + 6.25 * height - 5 * age + 5;