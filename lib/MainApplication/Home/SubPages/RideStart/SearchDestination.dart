import 'package:carpool_fyp22/MainApplication/Home/SubPages/RideStart/SelectDestination.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../Peripheral/InputFields.dart';
import '../../../MyRides/SubPages/RideInfo.dart';

class SearchDestination extends StatefulWidget {

  final String departure;

  SearchDestination({Key? key, required this.departure}) : super(key: key);

  @override
  State<SearchDestination> createState() => _SearchDestinationState();
}

class _SearchDestinationState extends State<SearchDestination> {

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
                  Text('Search Desination',
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
            SearchField("Search your desination"),
            Expanded(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RideInfo(Departure: widget.departure, Destination: 'Rawalpindi',)),
                      );
                    },
                    child: ResultBox("Rawalpindi"),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RideInfo(Departure: widget.departure, Destination: 'Islamabad',)),
                      );
                    },
                    child: ResultBox("Islamabad"),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RideInfo(Departure: widget.departure, Destination: 'Peshawar',)),
                      );
                    },
                    child: ResultBox("Peshawar"),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RideInfo(Departure: widget.departure, Destination: 'Quetta',)),
                      );
                    },
                    child: ResultBox("Quetta"),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RideInfo(Departure: "Multan", Destination: 'Multan',)),
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
