import 'package:carpool_fyp22/AccountManagement/Login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'SignUp.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

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
            Container(
              margin: EdgeInsets.all(60),
              child: Image.network('https://i.imgur.com/sUVVvQi.png'),
            ),
            // Text('DEMO MADE BY\nMUHAMMAD ARSLAN\n201298',
            //   textAlign: TextAlign.center,
            //   style: GoogleFonts.dmSans(
            //     fontSize: 30,
            //     color: Colors.black,
            //     // fontWeight: FontWeight.bold
            //   ),
            // ),
            Spacer(),
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(30))
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                child: Center(
                  child: Text('GO',
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
          ],
        ),
      ),
    );
  }
}
