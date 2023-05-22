import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../Peripheral/InputFields.dart';

class AddACar extends StatelessWidget {
  AddACar({Key? key}) : super(key: key);

  TextEditingController brand = new TextEditingController();
  TextEditingController model = new TextEditingController();
  TextEditingController regNo = new TextEditingController();
  TextEditingController color = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(Icons.arrow_back,
                    size: 30,
                  ),
                  Spacer(),
                  Text('Add a car',
                    style: GoogleFonts.dmSans(
                      fontSize: 25,
                      color: Colors.blue,
                      // fontWeight: FontWeight.bold
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
            Spacer(),
            Container(
              height: 100,
              child: Image.network('https://i.imgur.com/pltnpr3.png'),
            ),
            Spacer(),
            inputField("What is your car brand?", brand, false),
            SizedBox(height: 20,),
            inputField("What is your car model?", model, false),
            Spacer(),
            inputField("What is the color of your car?", color, false),
            Spacer(),
            inputField("What is your registration number", regNo, false),
            Spacer(),
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(30))
              ),
              child: Center(
                child: Text('Confirm',
                  style: GoogleFonts.dmSans(
                    fontSize: 30,
                    color: Colors.white,
                    // fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}