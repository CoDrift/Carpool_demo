import 'dart:developer';
import 'dart:ffi';

import 'package:carpool_fyp22/MainApplication/Home/HomeHandler.dart';
import 'package:carpool_fyp22/MainApplication/MainPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Peripheral/InputFields.dart';
import 'SharedPref.dart';
import 'SignUp.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  late TextEditingController emailAdd = new TextEditingController();
  late TextEditingController pass = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Column(
          children: [
            Spacer(),
            Text('Carpool',
              style: GoogleFonts.dmSans(
                fontSize: 90,
                color: Colors.black,
                // fontWeight: FontWeight.bold
              ),
            ),
            Text('Air University',
              style: GoogleFonts.dmSans(
                fontSize: 40,
                color: Colors.blue,
                // fontWeight: FontWeight.bold
              ),
            ),
            Spacer(),
            inputField("Email Address", emailAdd, false),
            SizedBox(height: 20,),
            inputField("Password", pass, true),
            Spacer(),
            GestureDetector(
              onTap: () async {
                if(emailAdd.text != '' && pass.text != '') {
                  String? actualEmail = await SharedPref.getter(SharedPref.UserEmail);
                  String? actualPass = await SharedPref.getter(SharedPref.UserPassword);

                  log(actualPass.toString());
                  log(actualEmail.toString());

                  if (emailAdd.text == actualEmail && pass.text == actualPass) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MainPage()),
                    );
                  }
                  else {
                    Fluttertoast.showToast(
                      msg: "Wrong Password or Email",
                    );
                  }
                }
                else {
                  Fluttertoast.showToast(
                    msg: "Empty Fields Detected",
                  );
                }
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.6,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(30))
                ),
                child: Center(
                  child: Text('Login',
                    style: GoogleFonts.dmSans(
                      fontSize: 30,
                      color: Colors.white,
                      // fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),
            Row(
              children: [
                Spacer(),
                Text('Not a registered user? ',
                  style: GoogleFonts.dmSans(
                    fontSize: 20,
                    color: Colors.black,
                    // fontWeight: FontWeight.bold
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUp()),
                    );
                  },
                  child: Text('SignUp here',
                    style: GoogleFonts.dmSans(
                      decoration: TextDecoration.underline,
                      fontSize: 20,
                      color: Colors.black,
                      // fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
