import 'dart:developer';

import 'package:carpool_fyp22/AccountManagement/Intro.dart';
import 'package:carpool_fyp22/AccountManagement/Login.dart';
import 'package:carpool_fyp22/AccountManagement/SignUp.dart';
import 'package:carpool_fyp22/MainApplication/Home/ListRides.dart';
import 'package:carpool_fyp22/MainApplication/Home/SubPages/PostRide.dart';
import 'package:carpool_fyp22/MainApplication/Home/SubPages/RideStart/SelectACar.dart';
import 'package:carpool_fyp22/MainApplication/MainPage.dart';
import 'package:carpool_fyp22/Peripheral/RateYourRide.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'AccountManagement/SharedPref.dart';
import 'MainApplication/Home/SubPages/ConfirmRide.dart';
import 'MainApplication/Home/SubPages/RideStart/SelectDeparture.dart';
import 'MainApplication/MyRides/SubPages/RideInfo.dart';

void main() async {

  RidesList.add(Rides("Corolla", "Peshawar", "Sialkot", "Today", "3"));
  RidesList.add(Rides("Civic", "Quetta", "Karachi", "Tom", "1"));
  RidesList.add(Rides("Elantra", "Istanbul", "Islamabad", "Today", "2"));
  RidesList.add(Rides("Khyber", "Sialkot", "Peshawar", "Tom", "3"));
  RidesList.add(Rides("Liana", "Karachi", "Istanbul", "Tom", "5"));

  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp]
  );

  await SharedPref.getter(SharedPref.UserEmail).then((value2) => {
    log(value2.toString()),
    if (value2 == null) {
      runApp(MaterialApp(home: Intro()))
    }
    else {
      runApp(const MaterialApp(home: MainPage()))
    }
  });

}