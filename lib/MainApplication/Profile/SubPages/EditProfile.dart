import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Peripheral/InputFields.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

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
                  Text('Edit Profile',
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
              height: 200,
              width: 200,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                border: Border.all(color: Colors.black),
                image: DecorationImage(
                    image: NetworkImage('https://illustoon.com/photo/thum/9483.png'),
                    fit: BoxFit.cover),
              ),
            ),
            Text('Change Photo',
              style: GoogleFonts.dmSans(
                decoration: TextDecoration.underline,
                fontSize: 30,
                color: Colors.black,
                // fontWeight: FontWeight.bold
              ),
            ),
            Spacer(),
            inputField("First Name"),
            SizedBox(height: 20,),
            inputField("Last Name"),
            Spacer(),
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(30))
              ),
              child: Center(
                child: Text('Save Changes',
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
