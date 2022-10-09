import 'package:get/get.dart';

import '../../../departments/external/departments_local_datasource.dart';
import '../../domain/usecases/delete_student.dart';
import '../../domain/usecases/get_all_students.dart';
import '../../external/students_local_datasource.dart';
import '../../infra/repositories/student_repository_impl.dart';
import 'list_students_controller.dart';

class ListStudentsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DepartmentsLocalDatasource(appBoxes: Get.find()));
    Get.lazyPut(() => StudentsLocalDatasource(
          appBoxes: Get.find(),
          departmentsLocalDatasource: Get.find(),
        ));
    Get.lazyPut(() => StudentsRepositoryImpl(datasource: Get.find()));
    Get.lazyPut(() => GetAllStudentsImpl(repository: Get.find()));
    Get.lazyPut(() => DeleteStudentImpl(repository: Get.find()));
    Get.lazyPut(() => ListStudentsController(
          getAllStudents: Get.find(),
          deleteStudent: Get.find(),
        ));
  }
}
