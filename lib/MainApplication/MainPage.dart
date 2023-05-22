import 'package:carpool_fyp22/MainApplication/MyRides/RideHandler.dart';
import 'package:carpool_fyp22/MainApplication/MyRides/SubPages/DailyRides.dart';
import 'package:carpool_fyp22/MainApplication/Profile/ProfileHandler.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Home/HomeHandler.dart';
import 'Home/SubPages/RideStart/AddACar.dart';
import 'Profile/SubPages/RideHistory.dart';
import 'Profile/SubPages/MyCarInfo.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int _selectedIndex = 1;

  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.grey);
  static List<Widget> _widgetOptions = <Widget>[
    RideHandler(),
    HomeHandler(),
    ProfileHandler(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.car_crash_outlined, size: 40,),
            label: 'My Rides',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 40,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined, size: 40,),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        selectedIconTheme: const IconThemeData(color: Colors.blue),
        selectedLabelStyle: GoogleFonts.dmSans(
          fontSize: 15,
          color: Colors.blue,
        ),
        unselectedFontSize: 15,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }

}
