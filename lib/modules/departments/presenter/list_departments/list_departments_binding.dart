import 'package:get/get.dart';

import '../../domain/usecases/delete_department.dart';
import '../../domain/usecases/get_all_departments_name.dart';
import '../../external/departments_local_datasource.dart';
import '../../infra/repositories/department_repository_impl.dart';
import 'list_departments_controller.dart';

class ListDepartmentsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DepartmentsLocalDatasource(appBoxes: Get.find()));
    Get.lazyPut(() => DepartmentsRepositoryImpl(datasource: Get.find()));
    Get.lazyPut(() => GetAllDepartmentsImpl(repository: Get.find()));
    Get.lazyPut(() => DeleteDepartmentImpl(repository: Get.find()));
    Get.lazyPut(() => ListDepartmentsController(
          getAllDepartments: Get.find(),
          deleteDepartment: Get.find(),
        ));
  }
}
