import 'package:flutter/material.dart';
import '../models/trip_model.dart';
import '../widgets/image_carousel.dart';
import '../widgets/review_list.dart';
import '../widgets/map_preview.dart';
import '../dummy_data/dummy_trips.dart';

class TripDetailScreen extends StatelessWidget {
  final String tripId;

  const TripDetailScreen({super.key, required this.tripId});

  Trip get trip {
    return dummyTrips.firstWhere((trip) => trip.id == tripId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 300,
            backgroundColor: Colors.black,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.of(context).pop(),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.share, color: Colors.white),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.favorite_border, color: Colors.white),
                onPressed: () {},
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: ImageCarousel(images: trip.photos),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(trip.title,
                      style: const TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(Icons.location_on,
                          size: 16, color: Colors.grey),
                      const SizedBox(width: 4),
                      Text(trip.location,
                          style: const TextStyle(color: Colors.grey)),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.orange, size: 16),
                      const SizedBox(width: 4),
                      Text('${trip.rating} (${trip.reviewsCount} reviews)',
                          style: const TextStyle(fontSize: 14)),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '\$${trip.discountPrice}',
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                          const SizedBox(height: 4),
                          if (trip.discountPrice < trip.price)
                            Text(
                              '\$${trip.price}',
                              style: const TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  color: Colors.grey),
                            ),
                          const SizedBox(height: 4),
                          Text('${trip.pax} Pax',
                              style: const TextStyle(
                                  fontSize: 12, color: Colors.grey)),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Book Now'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Divider(),
                  Text('Includes',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: trip.include
                        .map((inc) => Row(
                              children: [
                                const Icon(Icons.check,
                                    color: Colors.green, size: 16),
                                const SizedBox(width: 8),
                                Text(inc),
                              ],
                            ))
                        .toList(),
                  ),
                  const SizedBox(height: 16),
                  Text('Excludes',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: trip.exclude
                        .map((exc) => Row(
                              children: [
                                const Icon(Icons.close,
                                    color: Colors.red, size: 16),
                                const SizedBox(width: 8),
                                Text(exc),
                              ],
                            ))
                        .toList(),
                  ),
                  const SizedBox(height: 16),
                  const Divider(),
                  Text('About',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Text(trip.summary),
                  const SizedBox(height: 16),
                  Text('Terms & Conditions',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Text(trip.termsAndConditions),
                  const SizedBox(height: 16),
                  const Divider(),
                  Text('Location',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: MapPreview(
                        location: trip.location,
                        latitude: trip.coordinates['latitude'] ?? 0,
                        longitude: trip.coordinates['longitude'] ?? 0,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Divider(),
                  Text('Reviews',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  ReviewList(tripId: trip.id),
                  const SizedBox(height: 80),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 80,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '\$${trip.discountPrice}',
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                if (trip.discountPrice < trip.price)
                  Text(
                    '\$${trip.price}',
                    style: const TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough),
                  ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
              ),
              child: const Text('Book Now'),
            )
          ],
        ),
      ),
    );
  }
}
