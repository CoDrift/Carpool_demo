import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

inputField(String title, TextEditingController controllerHere, bool Obsecure) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(title,
          textAlign: TextAlign.left,
          style: GoogleFonts.dmSans(
            fontSize: 20,
            color:
            Colors.blue,
            // fontWeight: FontWeight.bold
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 5),
          padding: EdgeInsets.symmetric(horizontal: 15),
          height: 65,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Center(
            child: TextField(
              controller: controllerHere,
              obscureText: Obsecure,
              decoration: InputDecoration(
                border: InputBorder.none
              ),
            ),
          ),
        )
      ],
    ),
  );
}

SearchField(String title) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          height: 65,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)
            ),
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
              SizedBox(width: 5,),
              Expanded(
                child: Text(title,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.dmSans(
                    fontSize: 18,
                    color: Colors.black,
                    // fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Icon(Icons.search, size: 30,),
              SizedBox(width: 10,),
            ],
          ),
        )
      ],
    ),
  );
}

ResultBox(String title) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)
            ),
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
              SizedBox(width: 5,),
              Expanded(
                child: Text(title,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSans(
                    fontSize: 18,
                    color: Colors.black,
                    // fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(width: 10,),
            ],
          ),
        )
      ],
    ),
  );
}

SimpleSelector(String title, Color mainColor, Function F) {
  return GestureDetector(
    onTap: () {
      F();
    },
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Expanded(
            child: Text(title,
              textAlign: TextAlign.left,
              style: GoogleFonts.dmSans(
                fontSize: 20,
                color: mainColor,
                // fontWeight: FontWeight.bold
              ),
            ),
          )
        ],
      ),
    ),
  );
}

RideCard (context) {
  return Container(
    padding: EdgeInsets.all(10),
    width: MediaQuery.of(context).size.width * 0.7,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      border: Border.all(color: Colors.purple[700]!),
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
    child: Column(
      children: [
        InfoLine("Departure location:    ", "XXXXX"),
        SizedBox(height: 10,),
        InfoLine("Destination:    ", "XXXXX"),
        SizedBox(height: 10,),
        InfoLine("Date of pick up:    ", "XXXXX"),
        SizedBox(height: 10,),
        InfoLine("Time of pick up:    ", "XXXXX"),
        SizedBox(height: 10,),
        InfoLine("Fees:    ", "XXXXX"),
      ],
    ),
  );
}

InfoLine(String starter, String data) {
  return Row(
    children: [
      Text(starter,
        style: GoogleFonts.dmSans(
            fontSize: 14,
            color: Colors.black,
            fontWeight: FontWeight.bold
        ),
      ),
      Text(data,
        style: GoogleFonts.dmSans(
          fontSize: 14,
          color: Colors.black,
        ),
      ),
      Spacer(),
    ],
  );
}

AvailableRideCard (context, Function F, String Model, String From, String To, String Day, String TND, ) {
  return GestureDetector(
    onTap: () {F();},
    child: Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width * 0.7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 100,
                width: 100,
                child: Image.network('https://illustoon.com/photo/thum/9483.png'),
              ),
              SizedBox(width: 30,),
              Text(Model,
                style: GoogleFonts.dmSans(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 20,),
              Icon(Icons.pin_drop_outlined),
              SizedBox(width: 20,),
              Text('From:',
                style: GoogleFonts.dmSans(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              Spacer(),
              Text(From,
                style: GoogleFonts.dmSans(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 20,),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 20,),
              Icon(Icons.pin_drop_outlined),
              SizedBox(width: 20,),
              Text('To:',
                style: GoogleFonts.dmSans(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              Spacer(),
              Text(To,
                style: GoogleFonts.dmSans(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 20,),
            ],
          ),
          SizedBox(height: 5,),
          Divider(
            height: 20,
            thickness: 1,
            color: Colors.black,
          ),
          Row(
            children: [
              SizedBox(width: 20,),
              Icon(Icons.more_time_rounded, color: Colors.blue,),
              SizedBox(width: 20,),
              Text(Day,
                style: GoogleFonts.dmSans(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              Spacer(),
              SizedBox(width: 20,),
              Icon(Icons.more_time_rounded, color: Colors.blue,),
              SizedBox(width: 20,),
              Text('${TND} TND',
                style: GoogleFonts.dmSans(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 20,),
            ],
          ),
          SizedBox(height: 10,),
        ],
      ),
    ),
  );
}

HistoryRideCard (context) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
    margin: EdgeInsets.all(10),
    width: MediaQuery.of(context).size.width * 0.8,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3),
        ),
      ],
    ),
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
              Text('BMW',
                style: GoogleFonts.dmSans(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 20,),
              Text('bdbdbdbdbdbd',
                style: GoogleFonts.dmSans(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              Text('bdbdbdbd',
                style: GoogleFonts.dmSans(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              Text('Rs. XXXX',
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
  );
}