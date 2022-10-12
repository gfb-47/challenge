import 'package:get/get.dart';

import '../../domain/repositories/departments_repository.dart';
import '../../domain/usecases/add_department.dart';
import '../../external/departments_local_datasource.dart';
import '../../infra/datasource/departments_datasource.dart';
import '../../infra/repositories/department_repository_impl.dart';
import 'add_department_controller.dart';

class AddDepartmentsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DepartmentsDataSource>(
        () => DepartmentsLocalDatasource(appBoxes: Get.find()));
    Get.lazyPut<DepartmentsRepository>(
        () => DepartmentsRepositoryImpl(datasource: Get.find()));
    Get.lazyPut<AddDepartment>(() => AddDepartmentImpl(repository: Get.find()));
    Get.lazyPut(() => AddDepartmentController(addDepartment: Get.find()));
  }
}
