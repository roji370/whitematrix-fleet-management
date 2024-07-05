import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TripHistoryScreen extends StatelessWidget {
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
                Text(
                  'Trip History',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ],
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(16.0),
                children: [
                  _buildDriverCard(
                      context,
                      'Ravi Varun',
                      'lib/assets/images/ravi.png',
                      'lib/assets/images/Swift.png',
                      '24/08/24',
                      '14/02/14',
                      'deets.pdf',
                      10),
                  _buildDriverCard(
                      context,
                      'Andy Wilson',
                      'lib/assets/images/andy.png',
                      'lib/assets/images/Innova.png',
                      '10/05/15',
                      '01/06/22',
                      'deets_andy.pdf',
                      20),
                  _buildDriverCard(
                      context,
                      'Tanya Ravi',
                      'lib/assets/images/tanya.png',
                      'lib/assets/images/Ertiga.png',
                      '08/03/16',
                      '15/11/23',
                      'deets_tanya.pdf',
                      15),
                  _buildDriverCard(
                      context,
                      'Jade Thomas',
                      'lib/assets/images/jade.png',
                      'lib/assets/images/Swift.png',
                      '12/07/17',
                      '20/02/25',
                      'deets_jade.pdf',
                      8),
                  _buildDriverCard(
                      context,
                      'Aiswarya',
                      'lib/assets/images/ais.png',
                      'lib/assets/images/Innova.png',
                      '15/01/13',
                      '30/09/21',
                      'deets_ais.pdf',
                      25), // Add more driver cards as needed
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDriverCard(
      BuildContext context,
      String name,
      String imagePath,
      String vehicleImagePath,
      String joiningDate,
      String licenseDate,
      String licenseDetails,
      int tripsTaken) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DriverDetailsScreen(
              name: name,
              imagePath: imagePath,
              joiningDate: joiningDate,
              licenseDate: licenseDate,
              licenseDetails: licenseDetails,
              tripsTaken: tripsTaken,
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10),
        width: double.infinity,
        height: 200, // Make the container more square
        decoration: BoxDecoration(
          color: Color(0xff1e283a),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 10,
              left: 10,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(imagePath),
                  ),
                  SizedBox(width: 20),
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(vehicleImagePath),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 10,
              left: 300,
              child: Text(
                name,
                style: GoogleFonts.mulish(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Positioned(
              top: 40,
              left: 300,
              child: Row(
                children: [
                  Text(
                    'Status: ',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Text(
                    'Approved',
                    style: TextStyle(color: Colors.green, fontSize: 16),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 10,
              left: 300,
              child: Row(
                children: [
                  Text(
                    'From: $joiningDate',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'To: $licenseDate',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: Icon(Icons.favorite_border_outlined, color: Colors.white),
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: Icon(Icons.arrow_forward_ios, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

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
        title: Text(name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(imagePath),
            ),
            SizedBox(height: 20),
            Text(
              'Date of Joining : $joiningDate',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'License Issued : $licenseDate',
              style: TextStyle(fontSize: 18),
            ),
            Row(
              children: [
                Text(
                  'Details of License : ',
                  style: TextStyle(fontSize: 18),
                ),
                GestureDetector(
                  onTap: () {
                    // Handle license details tap
                  },
                  child: Icon(Icons.picture_as_pdf),
                ),
              ],
            ),
            Text(
              'Total Trips taken : $tripsTaken',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
