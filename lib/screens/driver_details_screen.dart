import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DriverDetailsScreen extends StatelessWidget {
  final String name;
  final String imagePath;
  final String joiningDate;
  final String licenseDate;
  final String licenseDetails;
  final int tripsTaken;

  DriverDetailsScreen({
    required this.name,
    required this.imagePath,
    required this.joiningDate,
    required this.licenseDate,
    required this.licenseDetails,
    required this.tripsTaken,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Details', style: GoogleFonts.mulish()),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff1e283a), Color(0xffD6D7DF), Color(0xff1e283a)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(imagePath),
              ),
              SizedBox(height: 20),
              Text(
                name,
                style: GoogleFonts.mulish(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.symmetric(horizontal: 24.0),
                decoration: BoxDecoration(
                  color: Color(0xff1e283a),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Date of Joining : $joiningDate',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'License Issued : $licenseDate',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          'Details of License : ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Handle license details tap
                          },
                          child: Row(
                            children: [
                              Icon(Icons.picture_as_pdf, color: Colors.white),
                              SizedBox(width: 5),
                              Text(
                                licenseDetails,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Total Trips taken : $tripsTaken',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
