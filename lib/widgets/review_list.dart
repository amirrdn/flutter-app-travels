import 'package:flutter/material.dart';
import '../dummy_data/dummy_trips.dart';
import '../dummy_data/dummy_reviews.dart';

class ReviewList extends StatelessWidget {
  final String tripId;

  const ReviewList({
    super.key,
    required this.tripId,
  });

  @override
  Widget build(BuildContext context) {
    final trip = dummyTrips.firstWhere((trip) => trip.id == tripId);
    final tripReviews =
        dummyReviews.where((review) => review.tripId == tripId).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(Icons.star, color: Colors.orange, size: 16),
            const SizedBox(width: 4),
            Text('${trip.rating} (${tripReviews.length} reviews)'),
          ],
        ),
        const SizedBox(height: 16),
        ...tripReviews.map((review) => Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(review.userPhoto),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              review.userName,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Row(
                              children: [
                                const Icon(Icons.star,
                                    color: Colors.orange, size: 16),
                                const SizedBox(width: 4),
                                Text(review.rating.toString()),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Text(
                          review.comment,
                          style: const TextStyle(color: Colors.grey),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '${review.date.day}/${review.date.month}/${review.date.year}',
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
