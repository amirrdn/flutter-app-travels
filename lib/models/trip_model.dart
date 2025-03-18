class Trip {
  final String id;
  final String title;
  final String location;
  final String locationName;
  final Map<String, double> coordinates;
  final List<String> photos;
  final double rating;
  final int reviewsCount;
  final String summary;
  final List<String> include;
  final List<String> exclude;
  final String termsAndConditions;
  final double price;
  final double discountPrice;
  final int pax;

  Trip({
    required this.id,
    required this.title,
    required this.location,
    required this.locationName,
    required this.coordinates,
    required this.photos,
    required this.rating,
    required this.reviewsCount,
    required this.summary,
    required this.include,
    required this.exclude,
    required this.termsAndConditions,
    required this.price,
    required this.discountPrice,
    required this.pax,
  });
}
