import 'package:carpool_fyp22/MainApplication/MyRides/SubPages/RideInfo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Peripheral/InputFields.dart';

class ConfirmRide extends StatefulWidget {
  const ConfirmRide({Key? key}) : super(key: key);

  @override
  State<ConfirmRide> createState() => _ConfirmRideState();
}

class _ConfirmRideState extends State<ConfirmRide> {

  bool visibleCheckmark = false;

  switchVisibility () {
    if (visibleCheckmark == false) {
      visibleCheckmark = true;
      setState(() {});
      return;
    }
    visibleCheckmark = false;
    setState(() {});
  }

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.black;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Column(
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Icon(Icons.arrow_back,
                        size: 30,
                      ),
                      Spacer(),
                    ],
                  ),
                ),
            ),
            SizedBox(height: 50,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              margin: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width * 0.8,
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: Image.network('https://i.imgur.com/oYICZ0K.png'),
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text('Corolla',
                        style: GoogleFonts.dmSans(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text('Islamabad',
                        style: GoogleFonts.dmSans(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      Text('CGB 689',
                        style: GoogleFonts.dmSans(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      Text('Rs. 3260',
                        style: GoogleFonts.dmSans(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 20,),
                ],
              ),
            ),
            Spacer(),
            Column(
              children: [
                Text('Total Amount to Pay',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSans(
                    fontSize: 30,
                    color: Colors.black,
                    // fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 10,),
                Text('XXXX PKR',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSans(
                    fontSize: 40,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            Spacer(),
            Row(
              children: [
                Spacer(),
                Transform.scale(
                  scale: 2,
                  child: Checkbox(
                    value: visibleCheckmark,
                    onChanged: (bool? value) {
                      switchVisibility();
                    },
                  ),
                ),
                Spacer(),
                Container(
                  width: 250,
                  child: Flexible(
                    child: Text('I confirm and I accept the terms',
                      style: GoogleFonts.dmSans(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
            Spacer(),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RideInfo(Departure: '', Destination: '',)),
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(30))
                  ),
                  child: Center(
                    child: Text('Confirm Ride',
                      style: GoogleFonts.dmSans(
                        fontSize: 30,
                        color: Colors.white,
                        // fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
            ),
            SizedBox(height: 50,),
          ],
        ),
      ),
    );
  }
}
