import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../Peripheral/InputFields.dart';

class ShareRideAvailability extends StatelessWidget {
  const ShareRideAvailability({Key? key}) : super(key: key);

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
            inputField("From where?"),
            SizedBox(height: 20,),
            inputField("To where?"),
            SizedBox(height: 20,),
            inputField("What time?"),
            SizedBox(height: 20,),
            inputField("What date?"),
            Spacer(),
            Row(
              children: [
                Spacer(),
                Container(
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
                Spacer(),
                Container(
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
