import 'package:flutter/material.dart';
import '../dummy_data/dummy_trips.dart';
import '../widgets/trip_card.dart';
import 'trip_detail_screen.dart';

class TripListScreen extends StatelessWidget {
  const TripListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Available Trips'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: dummyTrips.length,
        itemBuilder: (ctx, index) {
          final trip = dummyTrips[index];
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => TripDetailScreen(tripId: trip.id),
                ),
              );
            },
            child: TripCard(trip: trip),
          );
        },
      ),
    );
  }
}
