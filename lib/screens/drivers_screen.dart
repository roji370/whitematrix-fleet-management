import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
<<<<<<< HEAD

class DriversScreen extends StatelessWidget {
=======
import 'package:mongo_dart/mongo_dart.dart' as mongo;

class DriversScreen extends StatefulWidget {
  @override
  _DriversScreenState createState() => _DriversScreenState();
}

class _DriversScreenState extends State<DriversScreen> {
  List<Map<String, dynamic>> drivers = [];

  @override
  void initState() {
    super.initState();
    fetchDrivers();
  }

  Future<void> fetchDrivers() async {
    var db = await mongo.Db.create("mongodb://<your-mongodb-url>");
    await db.open();
    var collection = db.collection('drivers');
    var result = await collection.find().toList();
    setState(() {
      drivers = result;
    });
    await db.close();
  }

>>>>>>> origin/main
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
                  'Drivers',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ],
            ),
            Expanded(
<<<<<<< HEAD
              child: ListView(
                padding: EdgeInsets.all(16.0),
                children: [
                  _buildDriverCard(
                      context,
                      'Ravi Varun',
                      'lib/assets/images/ravi.png',
                      '24/08/24',
                      '14/02/14',
                      'deets.pdf',
                      10),
                  _buildDriverCard(
                      context,
                      'Andy Wilson',
                      'lib/assets/images/andy.png',
                      '01/06/22',
                      '10/05/15',
                      'deets_andy.pdf',
                      20),
                  _buildDriverCard(
                      context,
                      'Tanya Ravi',
                      'lib/assets/images/tanya.png',
                      '15/11/23',
                      '08/03/16',
                      'deets_tanya.pdf',
                      15),
                  _buildDriverCard(
                      context,
                      'Jade Thomas',
                      'lib/assets/images/jade.png',
                      '20/02/25',
                      '12/07/17',
                      'deets_jade.pdf',
                      8),
                  _buildDriverCard(
                      context,
                      'Aiswarya',
                      'lib/assets/images/ais.png',
                      '30/09/21',
                      '15/01/13',
                      'deets_ais.pdf',
                      25), // Add more driver cards as needed
                ],
=======
              child: ListView.builder(
                padding: EdgeInsets.all(16.0),
                itemCount: drivers.length,
                itemBuilder: (context, index) {
                  var driver = drivers[index];
                  return _buildDriverCard(
                    context,
                    driver,
                  );
                },
>>>>>>> origin/main
              ),
            ),
          ],
        ),
      ),
    );
  }

<<<<<<< HEAD
  Widget _buildDriverCard(
      BuildContext context,
      String name,
      String imagePath,
      String joiningDate,
      String licenseDate,
      String licenseDetails,
      int tripsTaken) {
=======
  Widget _buildDriverCard(BuildContext context, Map<String, dynamic> driver) {
>>>>>>> origin/main
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DriverDetailsScreen(
<<<<<<< HEAD
              name: name,
              imagePath: imagePath,
              joiningDate: joiningDate,
              licenseDate: licenseDate,
              licenseDetails: licenseDetails,
              tripsTaken: tripsTaken,
=======
              name: driver['name'],
              imagePath: driver['imagePath'],
              joiningDate: driver['joiningDate'],
              licenseDate: driver['licenseDate'],
              licenseDetails: driver['licenseDetails'],
              tripsTaken: driver['tripsTaken'],
              username: driver['username'],
              password: driver['password'],
              mobileNumber: driver['mobileNumber'],
              location: driver['location'],
              driverPin: driver['driverPin'],
              licenseNumber: driver['licenseNumber'],
              licenseExpiryDate: driver['licenseExpiryDate'],
              notes: driver['notes'],
>>>>>>> origin/main
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10),
        width: double.infinity,
<<<<<<< HEAD
        height: 200, // Make the container more square
=======
        height: 200,
>>>>>>> origin/main
        decoration: BoxDecoration(
          color: Color(0xff1e283a),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ClipOval(
<<<<<<< HEAD
                    child: Image.asset(
                      imagePath,
=======
                    child: Image.network(
                      driver['imagePath'],
>>>>>>> origin/main
                      width: 120,
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
<<<<<<< HEAD
                    name,
=======
                    driver['name'],
>>>>>>> origin/main
                    style: GoogleFonts.mulish(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
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
<<<<<<< HEAD

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
=======
>>>>>>> origin/main
