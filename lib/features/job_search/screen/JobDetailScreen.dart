

// features/job_search/screen/JobDetailsScreen.dart

import 'package:flutter/material.dart';
import '../widgets/JobDescriptionWidget.dart';
import '../controller/JobDetailController.dart';

class JobDetailsScreen extends StatelessWidget {
  const JobDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Mengambil data dari arguments, jika ada, dan menyediakan nilai default jika null
    final args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>? ?? {};
    final jobData = args['job'] as Map<String, dynamic>? ?? {};

    // Inisialisasi controller dengan data pekerjaan
    final controller = JobDetailsController(jobData);

    return Scaffold(
      body: Stack(
        children: [
          // Background hijau di bagian atas
          Container(
            color: Colors.green,
            height: MediaQuery.of(context).size.height * 0.4, // Mengatur tinggi hijau di 40% dari tinggi layar
          ),
          // Konten job description dengan background putih mengambang di bawah
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.75, // Mengatur tinggi kotak putih
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8.0,
                    offset: Offset(0, -4),
                  ),
                ],
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
                  child: JobDescriptionWidget(
                    companyName: controller.getCompanyName(),
                    companyLogo: jobData['companyLogo'] ?? '',
                    jobTitle: controller.getJobTitle(),
                    jobType: controller.getJobType(),
                    location: controller.getLocation(),
                    salary: controller.getSalary(),
                    qualifications: controller.getQualifications(),
                    jobDescription: controller.getJobDescription(),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

