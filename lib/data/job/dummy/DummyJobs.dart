// data/job/dummy/DummyJobs.dart

import '../modelresponses/JobResponse.dart';
import '../../../core/constants/images.dart';

class DummyJobs {
  static List<JobResponse> jobs = [
    JobResponse(
      title: 'Agency Business Lead',
      companyName: 'Google Inc.',
      companyLogo: AppImages.googleLogo, // Path ke logo Google
      description: 'Businesses that partner with Google come in all shapes...',
      postedDaysAgo: 4,
      applicants: 240,
      location: 'Jakarta, Indonesia',
      jobType: 'Permanent work',
      salary: '\$130k/Yr',
      qualifications: [
        'Agency experience with knowledge of how and where decisions are made.',
        'Knowledge of business performance.',
        'Ability to take initiative and deliver value.',
        'Excellent project management and organizational skills.',
      ],
    ),
    JobResponse(
      title: 'Senior Product Manager',
      companyName: 'Twitter Inc.',
      companyLogo: AppImages.twitterLogo, // Path ke logo Twitter
      description: 'Twitter promotes and protects the public conversation...',
      postedDaysAgo: 6,
      applicants: 125,
      location: 'San Francisco, USA',
      jobType: 'Full-time',
      salary: '\$150k/Yr',
      qualifications: [
        '5+ years experience in product management.',
        'Strong understanding of social media trends.',
        'Proven track record of managing complex projects.',
        'Excellent analytical and communication skills.',
      ],
    ),
  ];
}

