class ApplicationResponse {
  final String title;
  final String company;
  final String status;
  final String companyLogo; // Tambahkan ini
  final String daysAgo; // Tambahkan ini

  ApplicationResponse({
    required this.title,
    required this.company,
    required this.status,
    required this.companyLogo, // Tambahkan ini
    required this.daysAgo, // Tambahkan ini
  });

  factory ApplicationResponse.fromMap(Map<String, String> map) {
    return ApplicationResponse(
      title: map['title'] ?? '',
      company: map['company'] ?? '',
      status: map['status'] ?? '',
      companyLogo: map['companyLogo'] ?? '', // Tambahkan ini
      daysAgo: map['daysAgo'] ?? '0', // Tambahkan ini
    );
  }
}
