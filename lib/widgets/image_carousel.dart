import 'package:flutter/material.dart';

class ImageCarousel extends StatelessWidget {
  final List<String> images;

  const ImageCarousel({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: images.length,
      itemBuilder: (ctx, index) {
        return Image.network(
          images[index],
          fit: BoxFit.cover,
        );
      },
    );
  }
}
