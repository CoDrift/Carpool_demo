import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Peripheral/InputFields.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Column(
          children: [
            Spacer(),
            inputField("First Name"),
            Spacer(),
            inputField("Last Name"),
            Spacer(),
            inputField("Email Address"),
            Spacer(),
            inputField("Mobile Number"),
            SizedBox(height: 20,),
            inputField("Password"),
            Spacer(),
            Container(
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
                Text('Login here',
                  style: GoogleFonts.dmSans(
                    decoration: TextDecoration.underline,
                    fontSize: 20,
                    color: Colors.black,
                    // fontWeight: FontWeight.bold
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
