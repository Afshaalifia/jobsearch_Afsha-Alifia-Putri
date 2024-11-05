// core/global_component/ProgressBarComponent.dart

import 'package:flutter/material.dart';

class ProgressBarComponent extends StatelessWidget {
  final double progress;

  const ProgressBarComponent({super.key, required this.progress});

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: progress,
      backgroundColor: Colors.grey[300],
      valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
    );
  }
}
