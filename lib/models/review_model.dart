class Review {
  final String id;
  final String tripId;
  final String userId;
  final String userName;
  final String userPhoto;
  final double rating;
  final String comment;
  final DateTime date;

  Review({
    required this.id,
    required this.tripId,
    required this.userId,
    required this.userName,
    required this.userPhoto,
    required this.rating,
    required this.comment,
    required this.date,
  });
}
