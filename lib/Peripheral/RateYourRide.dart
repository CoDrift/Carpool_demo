import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../Peripheral/InputFields.dart';

class RateYourRide extends StatelessWidget {
  const RateYourRide({Key? key}) : super(key: key);

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
                  Text('Rate your ride',
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
            SizedBox(height: 30,),
            Row(
              children: [
                SizedBox(width: 20,),
                Expanded(
                  child: Text('Your rider',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.dmSans(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                ),
              ],
            ),
            HistoryRideCard(context),
            SizedBox(height: 30,),
            Row(
              children: [
                SizedBox(width: 20,),
                Expanded(
                  child: Text('Rate',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.dmSans(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 20,),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  height: 50,
                  width: 50,
                  child: Center(
                    child: Text('1',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.dmSans(
                          fontSize: 30,
                          color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  height: 50,
                  width: 50,
                  child: Center(
                    child: Text('2',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.dmSans(
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  height: 50,
                  width: 50,
                  child: Center(
                    child: Text('3',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.dmSans(
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  height: 50,
                  width: 50,
                  child: Center(
                    child: Text('4',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.dmSans(
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  height: 50,
                  width: 50,
                  child: Center(
                    child: Text('5',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.dmSans(
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20,),
              ],
            ),
            Spacer(),
            Row(
              children: [
                SizedBox(width: 20,),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  height: 50,
                  width: 170,
                  child: Center(
                    child: Text('Excellent',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.dmSans(
                        fontSize: 22,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  height: 50,
                  width: 170,
                  child: Center(
                    child: Text('Very Good',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.dmSans(
                        fontSize: 22,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20,),
              ],
            ),
            Spacer(),
            Row(
              children: [
                SizedBox(width: 20,),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  height: 50,
                  width: 170,
                  child: Center(
                    child: Text('Safe driving',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.dmSans(
                        fontSize: 22,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  height: 50,
                  width: 170,
                  child: Center(
                    child: Text('Good',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.dmSans(
                        fontSize: 22,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20,),
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
                  height: 50,
                  width: 200,
                  child: Center(
                    child: Text('Enjoy full ride',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.dmSans(
                        fontSize: 22,
                        color: Colors.black,
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
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(100))
              ),
              child: Center(
                child: Text('Done',
                  style: GoogleFonts.dmSans(
                    fontSize: 22,
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