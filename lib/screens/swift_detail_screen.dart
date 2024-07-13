import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SwiftDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff1e283a), Color(0xffd1d6de), Color(0xff1e283a)],
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
<<<<<<< HEAD
                Text('Swift',
                    style: TextStyle(color: Colors.white, fontSize: 22)),
=======
                Text('Swift', style: TextStyle(color: Colors.white, fontSize: 22)),
>>>>>>> origin/main
              ],
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(16.0),
                children: [
                  Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Image.asset(
                            'lib/assets/images/file.png', // Add the image of Swift here
<<<<<<< HEAD
                            height:
                                250, // Adjusted height for better visibility
=======
                            height: 250, // Adjusted height for better visibility
>>>>>>> origin/main
                            fit: BoxFit.contain,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
<<<<<<< HEAD
                              Text('Features',
                                  style: GoogleFonts.mulish(
                                      color: Colors.black,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w400)),
                              SizedBox(height: 5), // Reduced space here
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  _buildFeatureCard('manual', Icons.drive_eta),
                                  _buildFeatureCard(
                                      '4 seats', Icons.event_seat),
                                  _buildFeatureCard(
                                      '6.4L', Icons.local_gas_station),
=======
                              Text('Features', style: GoogleFonts.mulish(color: Colors.black, fontSize: 25, fontWeight: FontWeight.w400)),
                              SizedBox(height: 5), // Reduced space here
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  _buildFeatureCard('manual', Icons.drive_eta),
                                  _buildFeatureCard('4 seats', Icons.event_seat),
                                  _buildFeatureCard('6.4L', Icons.local_gas_station),
>>>>>>> origin/main
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10), // Reduced space here
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
<<<<<<< HEAD
                              Text('Maintenance',
                                  style: GoogleFonts.mulish(
                                      color: Colors.black,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w400)),
                              SizedBox(height: 5), // Reduced space here
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
=======
                              Text('Maintenance', style: GoogleFonts.mulish(color: Colors.black, fontSize: 25, fontWeight: FontWeight.w400)),
                              SizedBox(height: 5), // Reduced space here
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
>>>>>>> origin/main
                                children: [
                                  _buildStatusCard('Wiper Status', '57%'),
                                  _buildStatusCard('Oil Change', '86%'),
                                  _buildStatusCard('Tire Repair', '27%'),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {
                              // Add navigation or functionality here if needed
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff1e283a),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                            child: Padding(
<<<<<<< HEAD
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 10.0),
                              child: Text('Maintenance History',
                                  style: GoogleFonts.mulish(
                                      color: Colors.white, fontSize: 16)),
=======
                              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                              child: Text('Maintenance History', style: GoogleFonts.mulish(color: Colors.white, fontSize: 16)),
>>>>>>> origin/main
                            ),
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

  Widget _buildFeatureCard(String title, IconData icon) {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        color: Color(0xff1e283a),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white, size: 45),
            SizedBox(height: 10),
<<<<<<< HEAD
            Text(title,
                style: GoogleFonts.mulish(color: Colors.white, fontSize: 20)),
=======
            Text(title, style: GoogleFonts.mulish(color: Colors.white, fontSize: 20)),
>>>>>>> origin/main
          ],
        ),
      ),
    );
  }

  Widget _buildStatusCard(String title, String status) {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        color: Color(0xff1e283a),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
<<<<<<< HEAD
            Text(title,
                style: GoogleFonts.mulish(color: Colors.white, fontSize: 16)),
=======
            Text(title, style: GoogleFonts.mulish(color: Colors.white, fontSize: 16)),
>>>>>>> origin/main
            SizedBox(height: 10),
            Container(
              width: 80, // Set the width of the LinearProgressIndicator
              child: LinearProgressIndicator(
                value: 0.65,
                backgroundColor: Colors.grey,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
              ),
            ),
            SizedBox(height: 10),
<<<<<<< HEAD
            Text(status,
                style: GoogleFonts.mulish(color: Colors.white, fontSize: 16)),
=======
            Text(status, style: GoogleFonts.mulish(color: Colors.white, fontSize: 16)),
>>>>>>> origin/main
          ],
        ),
      ),
    );
  }
}
