import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Peripheral/InputFields.dart';

class RideHistory extends StatelessWidget {
  const RideHistory({Key? key}) : super(key: key);

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
                  Text('History of Rides',
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
            SizedBox(height: 40,),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    HistoryRideCard(context),
                    SizedBox(height: 20,),
                    HistoryRideCard(context),
                    SizedBox(height: 20,),
                    HistoryRideCard(context),
                    SizedBox(height: 20,),
                    HistoryRideCard(context),
                    SizedBox(height: 20,),
                    HistoryRideCard(context),
                    SizedBox(height: 20,),
                    HistoryRideCard(context),
                  ],
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