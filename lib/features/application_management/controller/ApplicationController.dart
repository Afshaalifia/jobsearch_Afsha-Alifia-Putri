// features/application_management/controller/ApplicationsController.dart

import '../../../data/applications/dummy/DummyAplications.dart';
import '../../../data/applications/modelresponses/ApplicationResponse.dart';

class ApplicationsController {
  List<ApplicationResponse> getApplications() {
    return DummyApplications.applications.map((app) => ApplicationResponse.fromMap(app)).toList();
  }
}

