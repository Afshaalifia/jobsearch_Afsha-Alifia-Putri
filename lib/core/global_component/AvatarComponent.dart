// core/global_component/AvatarComponent.dart

import 'package:flutter/material.dart';

class AvatarComponent extends StatelessWidget {
  final String imageUrl;

  const AvatarComponent({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: NetworkImage(imageUrl),
      radius: 24,
    );
  }
}
