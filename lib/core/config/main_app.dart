// core/config/main_app.dart

import 'package:flutter/material.dart';
import '../../features/home/screen/HomeScreen.dart';
import 'package:app_jobsearch/features/job_search/screen/JobDetailScreen.dart';
import 'package:app_jobsearch/features/application_management/screen/AppliedJobScreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Job Search App',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/jobDetails': (context) => const JobDetailsScreen(),
        '/appliedJobs': (context) => AppliedJobsScreen(),
      },
    );
  }
}
