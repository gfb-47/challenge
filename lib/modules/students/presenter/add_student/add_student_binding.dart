import 'package:get/get.dart';

import '../../domain/usecases/add_student.dart';
import '../../external/students_local_datasource.dart';
import '../../infra/repositories/student_repository_impl.dart';
import 'add_student_controller.dart';

class AddStudentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() {
      Get.put(StudentsLocalDatasource(
        appBoxes: Get.find(),
        departmentsLocalDatasource: Get.find(),
      ));
      Get.put(StudentsRepositoryImpl(
          datasource: Get.find<StudentsLocalDatasource>()));
      Get.put(AddStudentImpl(repository: Get.find<StudentsRepositoryImpl>()));
      return AddStudentController(
        addStudent: Get.find<AddStudentImpl>(),
      );
    });
  }
}
