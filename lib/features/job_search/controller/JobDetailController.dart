
// features/job_search/controller/JobDetailsController.dart

class JobDetailsController {
  final Map<String, dynamic> job;

  JobDetailsController(this.job);

  String getJobTitle() => job['title'] ?? '';
  String getCompanyName() => job['company'] ?? '';
  String getLocation() => job['location'] ?? '';
  String getSalary() => job['salary'] ?? '';
  String getJobType() => job['jobType'] ?? 'Permanent';
  List<String> getQualifications() => job['qualifications'] ?? [];
  String getJobDescription() => job['description'] ?? 'No description available';
}

