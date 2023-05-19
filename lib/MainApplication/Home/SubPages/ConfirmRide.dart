import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Peripheral/InputFields.dart';

class ConfirmRide extends StatelessWidget {
  const ConfirmRide({Key? key}) : super(key: key);

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
                  // Spacer(),
                  // Text('Publish a ride',
                  //   style: GoogleFonts.dmSans(
                  //     fontSize: 25,
                  //     color: Colors.blue,
                  //     // fontWeight: FontWeight.bold
                  //   ),
                  // ),
                  Spacer(),
                ],
              ),
            ),
            SizedBox(height: 50,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              margin: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width * 0.8,
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: Image.network('https://illustoon.com/photo/thum/9483.png'),
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text('BMW',
                        style: GoogleFonts.dmSans(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text('bdbdbdbdbdbd',
                        style: GoogleFonts.dmSans(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      Text('bdbdbdbd',
                        style: GoogleFonts.dmSans(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      Text('Rs. XXXX',
                        style: GoogleFonts.dmSans(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 20,),
                ],
              ),
            ),
            Spacer(),
            Column(
              children: [
                Text('Total Amount to Pay',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSans(
                    fontSize: 30,
                    color: Colors.black,
                    // fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 10,),
                Text('XXXX PKR',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSans(
                    fontSize: 40,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            Spacer(),
            Row(
              children: [
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  height: 30,
                  width: 30,
                ),
                Spacer(),
                Container(
                  width: 250,
                  child: Flexible(
                    child: Text('I confirm and I accept the terms',
                      style: GoogleFonts.dmSans(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
            Spacer(),
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(30))
              ),
              child: Center(
                child: Text('Confirm Ride',
                  style: GoogleFonts.dmSans(
                    fontSize: 30,
                    color: Colors.white,
                    // fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            SizedBox(height: 50,),
          ],
        ),
      ),
    );
  }
}
