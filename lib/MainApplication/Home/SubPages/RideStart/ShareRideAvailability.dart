import 'dart:ffi';

import 'package:carpool_fyp22/MainApplication/MyRides/RideHandler.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../Peripheral/InputFields.dart';

class ShareRideAvailability extends StatelessWidget {
  ShareRideAvailability({Key? key}) : super(key: key);

  TextEditingController from = new TextEditingController();
  TextEditingController to = new TextEditingController();
  TextEditingController time = new TextEditingController();
  TextEditingController date = new TextEditingController();

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
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back,
                      size: 30,
                    ),
                  ),
                  Spacer(),
                  Text('Share ride availability',
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
            SizedBox(height: 20,),
            inputField("From where?", from, false),
            SizedBox(height: 20,),
            inputField("To where?", to, false),
            SizedBox(height: 20,),
            inputField("What time?", time, false),
            SizedBox(height: 20,),
            inputField("What date?", date, false),
            Spacer(),
            Row(
              children: [
                Spacer(),
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                      child: Center(
                        child: Text('Deny',
                          style: GoogleFonts.dmSans(
                            fontSize: 16,
                            color: Colors.white,
                            // fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                ),
                Spacer(),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const RideHandler()),
                      );
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                      child: Center(
                        child: Text('Confirm',
                          style: GoogleFonts.dmSans(
                            fontSize: 16,
                            color: Colors.white,
                            // fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                ),
                Spacer(),
              ],
            ),
            SizedBox(height: 50,),
          ],
        ),
      ),
    );
  }
}
