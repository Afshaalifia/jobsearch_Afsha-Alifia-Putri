
// features/job_search/screen/JobDescriptionWidget.dart

import 'package:flutter/material.dart';
import '../../../core/constants/color.dart';

class JobDescriptionWidget extends StatelessWidget {
  final String companyName;
  final String companyLogo;
  final String jobTitle;
  final String jobType;
  final String location;
  final String salary;
  final List<String> qualifications;
  final String jobDescription;

  const JobDescriptionWidget({
    Key? key,
    required this.companyName,
    required this.companyLogo,
    required this.jobTitle,
    required this.jobType,
    required this.location,
    required this.salary,
    required this.qualifications,
    required this.jobDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Logo Perusahaan
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage(companyLogo),
              radius: 40,
              backgroundColor: Colors.white, // Background putih di sekitar logo
            ),
          ),
          const SizedBox(height: 16),
          // Judul Pekerjaan
          Center(
            child: Column(
              children: [
                Text(
                  jobTitle,
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 4),
                // Nama Perusahaan di bawah Judul Pekerjaan
                Text(
                  companyName,
                  style: const TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          // Lokasi
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on, color: Colors.grey, size: 16),
                const SizedBox(width: 4),
                Text(location, style: const TextStyle(color: Colors.grey)),
              ],
            ),
          ),
          const SizedBox(height: 16),
          // Job Type dan Salary
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _InfoTile(icon: Icons.work_outline, label: 'Job type', value: jobType),
              _InfoTile(icon: Icons.attach_money, label: 'Salary', value: salary),
            ],
          ),
          const SizedBox(height: 24),
          // Kualifikasi
          const Text(
            'Preferred qualifications',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          ...qualifications.map((qual) => Row(
            children: [
              const Icon(Icons.check, color: Colors.green, size: 16),
              const SizedBox(width: 8),
              Expanded(child: Text(qual)),
            ],
          )),
          const SizedBox(height: 24),
          // Deskripsi Pekerjaan
          const Text(
            'About the job',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(jobDescription),
          const SizedBox(height: 16),
          // Tombol Apply
          Center(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              ),
              child: const Text('Apply for this job', style: TextStyle(fontSize: 16)),
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _InfoTile({
    Key? key,
    required this.icon,
    required this.label,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.grey),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(color: Colors.grey)),
        const SizedBox(height: 4),
        Text(value, style: const TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }
}

