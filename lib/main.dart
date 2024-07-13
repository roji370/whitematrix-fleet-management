<<<<<<< HEAD
import 'package:fleett/backend/mongodb.dart';
=======
>>>>>>> origin/main
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'utils/app_theme.dart';

<<<<<<< HEAD
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MongoDatabase.connect();
=======
void main() {
>>>>>>> origin/main
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
