import 'package:get/get.dart';

import '../../domain/usecases/add_department.dart';
import '../../external/departments_local_datasource.dart';
import '../../infra/repositories/department_repository_impl.dart';
import 'add_department_controller.dart';

class AddDepartmentsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DepartmentsLocalDatasource(appBoxes: Get.find()));
    Get.lazyPut(() => DepartmentsRepositoryImpl(datasource: Get.find()));
    Get.lazyPut(() => AddDepartmentImpl(repository: Get.find()));
    Get.lazyPut(() => AddDepartmentController(addDepartment: Get.find()));
  }
}
