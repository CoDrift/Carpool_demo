import 'package:carpool_fyp22/MainApplication/Home/SubPages/RideStart/SelectDestination.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../Peripheral/InputFields.dart';

class SearchDeparture extends StatefulWidget {
  SearchDeparture({Key? key}) : super(key: key);

  @override
  State<SearchDeparture> createState() => _SearchDepartureState();
}

class _SearchDepartureState extends State<SearchDeparture> {

  late GoogleMapController _controller;
  late LatLng tempLoc = LatLng(33.664577, 73.087150);

  initState() {
    setState(() {});
  }


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
                  Text('Search departure',
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
            SearchField("Search your departure"),
            Expanded(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SelectDestination(Departure: "Rawalpindi",)),
                      );
                    },
                    child: ResultBox("Rawalpindi"),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SelectDestination(Departure: "Islamabad",)),
                      );
                    },
                    child: ResultBox("Islamabad"),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SelectDestination(Departure: "Peshawar",)),
                      );
                    },
                    child: ResultBox("Peshawar"),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SelectDestination(Departure: "Quetta",)),
                      );
                    },
                    child: ResultBox("Quetta"),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SelectDestination(Departure: "Multan",)),
                      );
                    },
                    child: ResultBox("Multan"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            SizedBox(height: 50,),
          ],
        ),
      ),
    );
  }
}
