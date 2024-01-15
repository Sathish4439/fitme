import 'package:fitme/components/linkes.dart';
import 'package:fitme/image/mybutton.dart';
import 'package:fitme/pages/homepage.dart';
import 'package:fitme/pages/loginpage/newuser.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:intl_phone_field/intl_phone_field.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool ischecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      //
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height / 5,
                      decoration: BoxDecoration(color: Colors.black),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => LoginPage()));
                                  },
                                  child: Text(
                                    "New User?",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text("Already User?",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15)),
                                )
                              ],
                            ),
                          ),
                          // Center(
                          //     child: Image.asset(
                          //   'lib/image/title.png',
                          //   height: 120,
                          // ))
                        ],
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20))),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Create an Account",
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: IntlPhoneField(
                                initialCountryCode: 'IN',
                                decoration: InputDecoration(
                                  label: Text("Enter your phone number"),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Checkbox(
                                  checkColor: Colors.white,
                                  value: ischecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      ischecked = value!;
                                    });
                                  },
                                ),
                                Text(
                                  "Recive updates and remainder on whatapp",
                                  style: GoogleFonts.poppins(),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "By Signing up, I agree to the Terms and service and privacy policy, including usage of cookies",
                              style: GoogleFonts.poppins(),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            mybutton(
                              height: 40,
                              weight: MediaQuery.of(context).size.width,
                              color: Colors.black,
                              content: "Agree & Without signin",
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) => Homepage())));
                              },
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Or continue with"),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Links(
                                  onTap: () {},
                                  img:
                                      'https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png',
                                ),
                                Links(
                                  onTap: () {},
                                  img:
                                      'https://thumbs.dreamstime.com/b/print-204672013.jpg',
                                ),
                                Links(
                                  onTap: () {},
                                  img:
                                      'https://cdn4.iconfinder.com/data/icons/social-media-logos-6/512/112-gmail_email_mail-512.png',
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
