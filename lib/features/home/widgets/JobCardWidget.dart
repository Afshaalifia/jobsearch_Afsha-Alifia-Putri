// features/home/widgets/JobCardWidget.dart

import 'package:flutter/material.dart';
import '../../../data/job/modelresponses/JobResponse.dart';

class JobCardWidget extends StatelessWidget {
  final JobResponse job;

  const JobCardWidget({super.key, required this.job});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(job.companyLogo, width: 40, height: 40),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(job.title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(job.companyName, style: const TextStyle(fontSize: 14, color: Colors.grey)),
                  ],
                ),
                const Spacer(),
                const Icon(Icons.bookmark_border, color: Colors.black54),
              ],
            ),
            const SizedBox(height: 10),
            Text(job.description, maxLines: 2, overflow: TextOverflow.ellipsis),
            const SizedBox(height: 10),
            Row(
              children: [
                const Icon(Icons.access_time, size: 14, color: Colors.grey),
                const SizedBox(width: 4),
                Text('${job.postedDaysAgo} days ago', style: const TextStyle(fontSize: 12, color: Colors.grey)),
                const SizedBox(width: 16),
                const Icon(Icons.people, size: 14, color: Colors.grey),
                const SizedBox(width: 4),
                Text('${job.applicants} Applicants', style: const TextStyle(fontSize: 12, color: Colors.grey)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
