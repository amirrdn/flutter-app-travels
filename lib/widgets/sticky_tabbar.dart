import 'package:flutter/material.dart';
import '../models/trip_model.dart';
import 'review_list.dart';
import 'map_preview.dart';

class StickyTabBar extends StatelessWidget {
  final Trip trip;

  const StickyTabBar({super.key, required this.trip});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          const TabBar(
            tabs: [
              Tab(text: 'Details'),
              Tab(text: 'Reviews'),
              Tab(text: 'Map'),
            ],
          ),
          SizedBox(
            height: 500,
            child: TabBarView(
              children: [
                detailsTab(trip),
                ReviewList(tripId: trip.id),
                MapPreview(
                  location: trip.location,
                  latitude: trip.coordinates['latitude'] ?? 0,
                  longitude: trip.coordinates['longitude'] ?? 0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget detailsTab(Trip trip) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: [
        Text(trip.summary),
        const SizedBox(height: 12),
        Text('Includes: ${trip.include.join(', ')}'),
        Text('Excludes: ${trip.exclude.join(', ')}'),
        const SizedBox(height: 12),
        const Text('Terms & Conditions:'),
        Text(trip.termsAndConditions),
      ],
    );
  }
}
