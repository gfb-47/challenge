// import 'package:get/get.dart';

// import '../../../../app/app_boxes.dart';
// import '../../domain/usecases/delete_student.dart';
// import '../../domain/usecases/edit_student.dart';
// import '../../domain/usecases/get_student.dart';
// import '../../external/students_local_datasource.dart';
// import '../../infra/repositories/student_repository_impl.dart';
// import 'edit_student_controller.dart';

// class EditStudentsBinding extends Bindings {
//   @override
//   void dependencies() {
//     Get.lazyPut(() {
//       Get.put(StudentsLocalDatasource(
//           studentsBox: Get.find<AppBoxes>().mapBoxes['students']));
//       Get.put(StudentsRepositoryImpl(
//           datasource: Get.find<StudentsLocalDatasource>()));

//       Get.put(
//           DeleteStudentImpl(repository: Get.find<StudentsRepositoryImpl>()));
//       Get.put(EditStudentImpl(repository: Get.find<StudentsRepositoryImpl>()));
//       Get.put(GetStudentImpl(repository: Get.find<StudentsRepositoryImpl>()));
//       return EditStudentController(
//         deleteStudent: Get.find<DeleteStudentImpl>(),
//         editStudent: Get.find<EditStudentImpl>(),
//       );
//     });
//   }
// }
