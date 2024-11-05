// core/global_component/NetworkImageLoader.dart

import 'package:flutter/material.dart';

class NetworkImageLoader extends StatelessWidget {
  final String imageUrl;
  final double width;
  final double height;

  const NetworkImageLoader({super.key, required this.imageUrl, this.width = 100, this.height = 100});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      width: width,
      height: height,
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) {
        return Icon(Icons.broken_image, size: width);
      },
    );
  }
}
