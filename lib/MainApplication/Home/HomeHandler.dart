import 'package:carpool_fyp22/MainApplication/Home/ListRides.dart';
import 'package:carpool_fyp22/MainApplication/Home/SubPages/ConfirmRide.dart';
import 'package:carpool_fyp22/MainApplication/Home/SubPages/RideStart/SelectDeparture.dart';
import 'package:carpool_fyp22/MainApplication/Home/SubPages/RideStart/ShareRideAvailability.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Peripheral/InputFields.dart';

class HomeHandler extends StatelessWidget {
  const HomeHandler({Key? key}) : super(key: key);

  transferPage(context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ConfirmRide()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(75.0),
            child: Container(
              child: AppBar(
                toolbarHeight: 75,
                shadowColor: Colors.white,
                backgroundColor: Colors.white,
                title: Row(
                  children: [
                    Text('Carpool',
                      style: GoogleFonts.dmSans(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ],
                ),
              ),
            ),            
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20,),
              Text('What are you looking for today?',
                textAlign: TextAlign.center,
                style: GoogleFonts.dmSans(
                    fontSize: 20,
                    color: Colors.black,
                    // fontWeight: FontWeight.w600
                ),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Spacer(),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SelectDepart()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.green,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        child: Center(
                          child: Text('Find a ride',
                            style: GoogleFonts.dmSans(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                  ),
                  Spacer(),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ShareRideAvailability()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.green,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        child: Center(
                          child: Text('Post a ride',
                            style: GoogleFonts.dmSans(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                  ),
                  Spacer(),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(width: 20,),
                  Expanded(
                    child: Text('Available Rides',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.dmSans(
                        fontSize: 20,
                        color: Colors.black,
                        // fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  child: ListView.builder(
                    itemCount: RidesList.length,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          AvailableRideCard(context, () {transferPage(context);}, RidesList[index].Model, RidesList[index].From, RidesList[index].To, RidesList[index].Day, RidesList[index].TND),
                          SizedBox(height: 20,),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}