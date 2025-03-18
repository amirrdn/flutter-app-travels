import 'package:flutter/material.dart';
import 'screens/trip_list_screen.dart';

void main() {
  runApp(const WizhTripApp());
}

class WizhTripApp extends StatelessWidget {
  const WizhTripApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wizh Trips',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ),
      home: const TripListScreen(),
    );
  }
}
