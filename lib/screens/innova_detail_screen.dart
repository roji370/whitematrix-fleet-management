import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InnovaDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff1e283a), Color(0xffD6D7DF), Color(0xff1e283a)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 40.0),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Text('Swift', style: TextStyle(color: Colors.white, fontSize: 22)),
              ],
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(16.0),
                children: [
                  Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Color(0xff1e283a),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Image.asset('lib/assets/images/Innova.png', fit: BoxFit.cover),
                              height: 160,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Features', style: GoogleFonts.mulish(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w400)),
                                  Text('Manual', style: GoogleFonts.mulish(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w300)),
                                  Text('4 seats', style: GoogleFonts.mulish(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w300)),
                                  Text('6.4L', style: GoogleFonts.mulish(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w300)),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Maintenance', style: GoogleFonts.mulish(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w400)),
                                  Text('Wiper Status: 57%', style: GoogleFonts.mulish(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w300)),
                                  Text('Oil Change: 86%', style: GoogleFonts.mulish(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w300)),
                                  Text('Tire Repair: 27%', style: GoogleFonts.mulish(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w300)),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Maintenance History', style: GoogleFonts.mulish(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w400)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
