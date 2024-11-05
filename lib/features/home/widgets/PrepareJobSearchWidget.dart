// features/home/widgets/PrepareJobSearchWidget.dart

import 'package:flutter/material.dart';

class PrepareJobSearchWidget extends StatelessWidget {
  final double progress;
  final String progressText;

  const PrepareJobSearchWidget({required this.progress, required this.progressText, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Prepare for your job search',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Icon(Icons.more_vert, color: Colors.black),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: LinearProgressIndicator(
                value: progress,
                backgroundColor: Colors.grey[300],
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
              ),
            ),
            const SizedBox(width: 10),
            Text(progressText),
          ],
        ),
      ],
    );
  }
}
