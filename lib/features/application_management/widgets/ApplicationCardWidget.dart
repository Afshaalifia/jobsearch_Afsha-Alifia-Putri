import 'package:flutter/material.dart';

class ApplicationCardWidget extends StatelessWidget {
  final String title;
  final String company;
  final String status;
  final String companyLogo;
  final String daysAgo;

  const ApplicationCardWidget({
    super.key,
    required this.title,
    required this.company,
    required this.status,
    required this.companyLogo,
    required this.daysAgo,
  });

  @override
  Widget build(BuildContext context) {
    Color statusColor;
    switch (status) {
      case "Sent":
        statusColor = Colors.green;
        break;
      case "Pending":
        statusColor = Colors.orange;
        break;
      case "Rejected":
        statusColor = Colors.red;
        break;
      default:
        statusColor = Colors.grey;
    }

    return Card(
      margin: const EdgeInsets.all(8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                companyLogo,
                height: 40,
                width: 40,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 12.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  Row(
                    children: [
                      Icon(Icons.business, size: 16, color: Colors.grey),
                      const SizedBox(width: 4.0),
                      Text(
                        company,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4.0),
                  Row(
                    children: [
                      Icon(Icons.access_time, size: 16, color: Colors.grey),
                      const SizedBox(width: 4.0),
                      Text(
                        '$daysAgo days ago',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
              decoration: BoxDecoration(
                color: statusColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Text(
                status,
                style: TextStyle(
                  color: statusColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
