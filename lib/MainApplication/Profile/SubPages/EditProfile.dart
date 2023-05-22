import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Peripheral/InputFields.dart';

class EditProfile extends StatelessWidget {
  EditProfile({Key? key}) : super(key: key);

  TextEditingController Fname = new TextEditingController();
  TextEditingController LName = new TextEditingController();

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
                    image: NetworkImage('https://i.imgur.com/RHZkoW5.png'),
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
            inputField("First Name", Fname, false),
            SizedBox(height: 20,),
            inputField("Last Name", LName, false),
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
