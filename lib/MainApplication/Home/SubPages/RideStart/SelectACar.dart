import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../Peripheral/InputFields.dart';

class SelectACar extends StatelessWidget {
  const SelectACar({Key? key}) : super(key: key);

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
                  Text('Select a car',
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
                margin: EdgeInsets.symmetric(horizontal: 20),
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