import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controller/HomeController.dart';
import '../../../core/constants/string.dart';
import '../../../core/constants/images.dart';
import '../widgets/JobCardWidget.dart';
import '../widgets/PrepareJobSearchWidget.dart';
import '../widgets/AddButtonWidget.dart';
import '../widgets/HomeBottomNavBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => JobSearchViewModel(),
      child: Consumer<JobSearchViewModel>(
        builder: (context, viewModel, _) {
          return Scaffold(
            appBar: AppBar(
  backgroundColor: Colors.white,
  elevation: 0,
  title: Row(
    children: [
      CircleAvatar(
        backgroundImage: AssetImage(AppImages.userAvatar),
      ),
      const SizedBox(width: 16),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Mon, 08 May 2023',
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
          Text(
            AppStrings.searchJob,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ],
      ),
    ],
  ),
  actions: const [
    Padding(
      padding: EdgeInsets.only(right: 16.0),
      child: Icon(Icons.notifications_outlined, color: Colors.black),
    ),
  ],
),

            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search, color: Colors.black54),
                      hintText: AppStrings.searchJob,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                    onChanged: (query) => viewModel.searchJob(query),
                  ),
                  const SizedBox(height: 20),
                  const PrepareJobSearchWidget(
                    progress: 0.5, // Contoh progress
                    progressText: '2/4 Complete',
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Browse jobs that match your experience. Ordered by most relevant.',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: ListView.builder(
                      itemCount: viewModel.jobs.length,
                      itemBuilder: (context, index) {
                        final job = viewModel.jobs[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              '/jobDetails',
                              arguments: {
                                'job': {
                                  'title': job.title,
                                  'companyName': job.companyName,
                                  'description': job.description,
                                  'location': job.location,
                                  'salary': job.salary,
                                  'companyLogo': job.companyLogo,
                                  'jobType': job.jobType,
                                  'qualifications': job.qualifications,
                                },
                              },
                            );
                          },
                          child: JobCardWidget(job: job),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            floatingActionButton: AddButtonWidget(
              onPressed: () {
                // Tambahkan aksi untuk tombol tambah
              },
            ),
            bottomNavigationBar: HomeBottomNavBar(
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
                _handleBottomNavTap(index);
              },
            ),
          );
        },
      ),
    );
  }

  void _handleBottomNavTap(int index) {
    if (index == 0) {
      Navigator.pushReplacementNamed(context, '/home');
    } else if (index == 1) {
      Navigator.pushReplacementNamed(context, '/appliedJobs');
    } // else if (index == 2) {
    //   Navigator.pushReplacementNamed(context, '/messages');
    // } else if (index == 3) {
    //   Navigator.pushReplacementNamed(context, '/account');
    // }
  }
}
