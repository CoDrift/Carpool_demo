import 'dart:ffi';

import 'package:carpool_fyp22/AccountManagement/Login.dart';
import 'package:carpool_fyp22/MainApplication/MainPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Peripheral/InputFields.dart';
import 'SharedPref.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);

  TextEditingController Fname = new TextEditingController();
  TextEditingController LName = new TextEditingController();
  TextEditingController emailAdd = new TextEditingController();
  TextEditingController mobNo = new TextEditingController();
  TextEditingController Pass = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Column(
          children: [
            Spacer(),
            inputField("First Name", Fname, false),
            Spacer(),
            inputField("Last Name", LName, false),
            Spacer(),
            inputField("Email Address", emailAdd, false),
            Spacer(),
            inputField("Mobile Number", mobNo, false),
            SizedBox(height: 20,),
            inputField("Password", Pass, true),
            Spacer(),
            GestureDetector(
                onTap: () async {
                  if(emailAdd.text != '' && Pass.text != '' && Fname.text != '' && LName.text != '' && mobNo.text != '') {
                    await SharedPref.setter(SharedPref.UserEmail, emailAdd.text);
                    await SharedPref.setter(SharedPref.UserPassword, Pass.text);
                    await SharedPref.setter(SharedPref.FirstName, Fname.text);
                    await SharedPref.setter(SharedPref.LastName, LName.text);
                    await SharedPref.setter(SharedPref.MobileNumber, mobNo.text);

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
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
                    child: Text('Sign Up',
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
                Text('Already have an account? ',
                  style: GoogleFonts.dmSans(
                    fontSize: 20,
                    color: Colors.black,
                    // fontWeight: FontWeight.bold
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text('Login here',
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
