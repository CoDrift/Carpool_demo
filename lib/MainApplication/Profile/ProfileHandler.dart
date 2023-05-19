import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Peripheral/InputFields.dart';

class ProfileHandler extends StatelessWidget {
  const ProfileHandler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Container(
              height: 100,
              width: 100,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                border: Border.all(color: Colors.black),
                image: DecorationImage(
                    image: NetworkImage('https://illustoon.com/photo/thum/9483.png'),
                    fit: BoxFit.cover),
              ),
            ),
            Text('First and Last name',
              style: GoogleFonts.dmSans(
                fontSize: 25,
                color: Colors.black,
                // fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 50,),
            SimpleSelector("My personal information", Colors.black),
            SizedBox(height: 50,),
            SimpleSelector("My car information", Colors.black),
            SizedBox(height: 50,),
            SimpleSelector("My rides schedule", Colors.black),
            SizedBox(height: 50,),
            SimpleSelector("My history", Colors.black),
            SizedBox(height: 50,),
            SimpleSelector("Logout", Colors.purple[700]!),
          ],
        ),
      ),
    );
  }
}
