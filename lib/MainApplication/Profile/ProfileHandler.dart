import 'package:carpool_fyp22/AccountManagement/Intro.dart';
import 'package:carpool_fyp22/AccountManagement/SharedPref.dart';
import 'package:carpool_fyp22/MainApplication/MyRides/RideHandler.dart';
import 'package:carpool_fyp22/MainApplication/Profile/SubPages/EditProfile.dart';
import 'package:carpool_fyp22/MainApplication/Profile/SubPages/MyCarInfo.dart';
import 'package:carpool_fyp22/MainApplication/Profile/SubPages/RideHistory.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
                    image: NetworkImage('https://i.imgur.com/RHZkoW5.png'),
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
            SimpleSelector("My personal information", Colors.black, () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EditProfile()),
              );
            }),
            SizedBox(height: 50,),
            SimpleSelector("My car information", Colors.black, () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyCarInfo()),
              );
            }),
            SizedBox(height: 50,),
            SimpleSelector("My rides schedule", Colors.black, () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RideHandler()),
              );
            }),
            SizedBox(height: 50,),
            SimpleSelector("My history", Colors.black, () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RideHistory()),
              );
            }),
            SizedBox(height: 50,),
            SimpleSelector("Logout", Colors.purple[700]!, () {
              SharedPref.clear();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Intro()),
              );
            }),
          ],
        ),
      ),
    );
  }
}
