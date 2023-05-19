import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Peripheral/InputFields.dart';

class RideInfo extends StatelessWidget {
  const RideInfo({Key? key}) : super(key: key);

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
                  Text('Your ride',
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
                    child: Image.network('https://illustoon.com/photo/thum/9483.png'),
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
            ),
            Spacer(),
            Row(
              children: [
                SizedBox(width: 20,),
                Flexible(
                  child: RichText(
                    text: TextSpan(
                      // Note: Styles for TextSpans must be explicitly defined.
                      // Child text spans will inherit styles from parent
                      style: GoogleFonts.dmSans(
                        fontSize: 22.0,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(text: 'Pick up: '),
                        TextSpan(text: '4/12/2022 at 6:00 PM at XYZ', style: const TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20,),
              ],
            ),
            Spacer(),
            Row(
              children: [
                SizedBox(width: 20,),
                Flexible(
                  child: RichText(
                    text: TextSpan(
                      // Note: Styles for TextSpans must be explicitly defined.
                      // Child text spans will inherit styles from parent
                      style: GoogleFonts.dmSans(
                        fontSize: 22.0,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(text: 'Drop off: '),
                        TextSpan(text: '6/12/2022 at 6:00 PM at XYZ', style: const TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20,),
              ],
            ),
            Spacer(),
            Row(
              children: [
                SizedBox(width: 20,),
                Flexible(
                  child: RichText(
                    text: TextSpan(
                      // Note: Styles for TextSpans must be explicitly defined.
                      // Child text spans will inherit styles from parent
                      style: GoogleFonts.dmSans(
                        fontSize: 22.0,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(text: 'Amount to be paid: '),
                        TextSpan(text: 'XXXX PKR', style: const TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20,),
              ],
            ),
            Spacer(),
            Row(
              children: [
                SizedBox(width: 20,),
                Text('Car owner data',
                  style: GoogleFonts.dmSans(
                    decoration: TextDecoration.underline,
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(width: 20,),
              ],
            ),
            Spacer(),
            Row(
              children: [
                SizedBox(width: 20,),
                Flexible(
                  child: RichText(
                    text: TextSpan(
                      // Note: Styles for TextSpans must be explicitly defined.
                      // Child text spans will inherit styles from parent
                      style: GoogleFonts.dmSans(
                        fontSize: 22.0,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(text: 'Cars owner: '),
                        TextSpan(text: 'Mr. Foulen', style: const TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20,),
              ],
            ),
            Spacer(),
            Row(
              children: [
                SizedBox(width: 20,),
                Flexible(
                  child: RichText(
                    text: TextSpan(
                      // Note: Styles for TextSpans must be explicitly defined.
                      // Child text spans will inherit styles from parent
                      style: GoogleFonts.dmSans(
                        fontSize: 22.0,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(text: 'Contact Number: '),
                        TextSpan(text: '22 222 222', style: const TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20,),
              ],
            ),
            Spacer(),
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(35))
              ),
              child: Center(
                child: Text('Done',
                  style: GoogleFonts.dmSans(
                    fontSize: 30,
                    color: Colors.white,
                    // fontWeight: FontWeight.bold
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
