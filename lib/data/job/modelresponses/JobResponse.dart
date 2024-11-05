// data/job/modelresponses/JobResponse.dart

class JobResponse {
  final String title;
  final String companyName;
  final String companyLogo;
  final String description;
  final int postedDaysAgo;
  final int applicants;
  final String location;
  final String jobType;
  final String salary;
  final List<String> qualifications;

  JobResponse({
    required this.title,
    required this.companyName,
    required this.companyLogo,
    required this.description,
    required this.postedDaysAgo,
    required this.applicants,
    required this.location,
    required this.jobType,
    required this.salary,
    required this.qualifications,
  });
}

