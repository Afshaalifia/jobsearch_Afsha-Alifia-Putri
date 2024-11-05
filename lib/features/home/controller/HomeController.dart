// features/home/controller/HomeController.dart

import 'package:flutter/material.dart';
import '../../../data/job/dummy/DummyJobs.dart';
import '../../../data/job/modelresponses/JobResponse.dart';

class JobSearchViewModel extends ChangeNotifier {
  List<JobResponse> jobs = DummyJobs.jobs;

  void searchJob(String query) {
    jobs = DummyJobs.jobs.where((job) => job.title.toLowerCase().contains(query.toLowerCase())).toList();
    notifyListeners();
  }

  void onTabChange(int index) {
    // Logika perubahan tab
    notifyListeners();
  }
}
