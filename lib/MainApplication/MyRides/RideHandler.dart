import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Peripheral/InputFields.dart';

class RideHandler extends StatelessWidget {
  const RideHandler({Key? key}) : super(key: key);

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
                  Column(
                    children: [
                      Text('Your available rides',
                        style: GoogleFonts.dmSans(
                          fontSize: 15,
                          color: Colors.blue,
                          // fontWeight: FontWeight.bold
                        ),
                      ),
                      Text('to be shared',
                        style: GoogleFonts.dmSans(
                          fontSize: 15,
                          color: Colors.blue,
                          // fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width * 0.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                children: [
                  Spacer(),
                  Icon(Icons.calendar_month_sharp, color: Colors.blue, size: 40,),
                  SizedBox(width: 15,),
                  Column(
                    children: [
                      Text('Daily',
                        style: GoogleFonts.dmSans(
                          fontSize: 15,
                          color: Colors.black,
                          // fontWeight: FontWeight.bold
                        ),
                      ),
                      Text('ride',
                        style: GoogleFonts.dmSans(
                          fontSize: 15,
                          color: Colors.black,
                          // fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                ],
              ),
            ),
            SizedBox(height: 40,),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    RideCard(context),
                    SizedBox(height: 20,),
                    RideCard(context),
                    SizedBox(height: 20,),
                    RideCard(context),
                    SizedBox(height: 20,),
                    RideCard(context),
                    SizedBox(height: 20,),
                    RideCard(context),
                    SizedBox(height: 20,),
                    RideCard(context),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(30))
              ),
              child: Center(
                child: Text('Post Ride',
                  style: GoogleFonts.dmSans(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}