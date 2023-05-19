import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Peripheral/InputFields.dart';

class PostRide extends StatelessWidget {
  const PostRide({Key? key}) : super(key: key);

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
                  Text('Publish a ride',
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
            Row(
              children: [
                Expanded(
                  child: Text('Not a registered user? ',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSans(
                      fontSize: 20,
                      color: Colors.black,
                      // fontWeight: FontWeight.bold
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Expanded(
                  child: Text('Please add one to share a ride',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSans(
                      fontSize: 20,
                      color: Colors.purple[700],
                      // fontWeight: FontWeight.bold
                    ),
                  ),
                )
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
                child: Text('Add a car',
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
