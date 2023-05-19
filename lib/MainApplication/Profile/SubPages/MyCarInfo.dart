import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Peripheral/InputFields.dart';

class MyCarInfo extends StatelessWidget {
  const MyCarInfo({Key? key}) : super(key: key);

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
                  Text('My car information',
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
            Container(
              margin: EdgeInsets.all(60),
              child: Image.network('https://illustoon.com/photo/thum/9483.png'),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Car No',
                        style: GoogleFonts.dmSans(
                          fontSize: 25,
                          color: Colors.blue,
                          // fontWeight: FontWeight.bold
                        ),
                      ),
                      Spacer(),
                      Text('Car Number Here',
                        style: GoogleFonts.dmSans(
                          fontSize: 25,
                          color: Colors.black,
                          // fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Text('Car Model',
                        style: GoogleFonts.dmSans(
                          fontSize: 25,
                          color: Colors.blue,
                          // fontWeight: FontWeight.bold
                        ),
                      ),
                      Spacer(),
                      Text('Car Model Here',
                        style: GoogleFonts.dmSans(
                          fontSize: 25,
                          color: Colors.black,
                          // fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Text('Car Color',
                        style: GoogleFonts.dmSans(
                          fontSize: 25,
                          color: Colors.blue,
                          // fontWeight: FontWeight.bold
                        ),
                      ),
                      Spacer(),
                      Text('Car Color Here',
                        style: GoogleFonts.dmSans(
                          fontSize: 25,
                          color: Colors.black,
                          // fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
