import 'package:flutter/material.dart';
import '../widgets/HomeBottomNavBar.dart';
import '../controller/ApplicationController.dart';
import '../widgets/ApplicationCardWidget.dart';
import '../widgets/ApplicationSearchWidget.dart';
import '../../../data/applications/modelresponses/ApplicationResponse.dart';

class AppliedJobsScreen extends StatefulWidget {
  @override
  _AppliedJobsScreenState createState() => _AppliedJobsScreenState();
}

class _AppliedJobsScreenState extends State<AppliedJobsScreen> {
  final ApplicationsController applicationsController = ApplicationsController();
  late List<ApplicationResponse> applications;
  late List<ApplicationResponse> filteredApplications;

  @override
  void initState() {
    super.initState();
    applications = applicationsController.getApplications();
    filteredApplications = applications;
  }

  void _filterApplications(String query) {
    setState(() {
      filteredApplications = applications
          .where((app) =>
              app.title.toLowerCase().contains(query.toLowerCase()) ||
              app.company.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  void _onNavBarTap(BuildContext context, int index) {
    if (index == 0) {
      Navigator.pushReplacementNamed(context, '/');
    // } else if (index == 2) {
    //   Navigator.pushReplacementNamed(context, '/messages');
    // } else if (index == 3) {
    //   Navigator.pushReplacementNamed(context, '/account');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Applied Jobs"),
      ),
      body: Column(
        children: [
          ApplicationSearchWidget(onSearch: _filterApplications),
          Expanded(
            child: ListView.builder(
              itemCount: filteredApplications.length,
              itemBuilder: (context, index) {
                final application = filteredApplications[index];
                return ApplicationCardWidget(
                  title: application.title,
                  company: application.company,
                  status: application.status,
                  companyLogo: application.companyLogo, // Tambahkan ini
                  daysAgo: application.daysAgo, // Tambahkan ini
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: HomeBottomNavBar(
        currentIndex: 1,
        onTap: (index) => _onNavBarTap(context, index),
      ),
    );
  }
}
