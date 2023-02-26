
import 'package:get/get.dart';
import '../../service/api/api_client.dart';
import '../model/projects.dart';
import 'error_controller.dart';

class HomeController extends GetxController with ErrorController {
  var projectList = [].obs;

  Future<void> getAllProjects() async {
    try {
      var response =
          await ApiClient().get('api/project').catchError(handleApiError);
      projectList.value = projectListFromJson(response);
    } catch (err) {
      print(err);
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getAllProjects();
  }
}
