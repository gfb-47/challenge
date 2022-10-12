import 'package:get/get.dart';

import '../../../../app/app_routes.dart';
import '../../../../components/core/snackbar.dart';
import '../../../departments/domain/entities/department.dart';
import '../../../departments/infra/models/department_model.dart';
import '../../domain/usecases/delete_student.dart';
import '../../domain/usecases/get_all_students.dart';
import '../../infra/models/student_model.dart';

class ListStudentsController extends GetxController {
  ListStudentsController({
    required this.deleteStudent,
    required this.getAllStudents,
  });

  final GetAllStudents getAllStudents;
  final DeleteStudent deleteStudent;
  var studentsList = <StudentModel?>[].obs;
  Department department = Get.arguments as DepartmentModel;

  @override
  Future<void> onInit() async {
    getStudents();
    super.onInit();
  }

  void getStudents() {
    studentsList.clear();
    final List<String> studentsUid = department.studentsUidList;
    final result = getAllStudents(studentsUid: studentsUid);
    result.fold((l) => errorSnackBar(l.message), (r) {
      studentsList.obs.update(
        (list) => r.forEach((element) {
          list!.add(element as StudentModel);
        }),
      );
    });
  }

  Future<void> delete(String key) async {
    final result = await deleteStudent(key);
    result.fold((l) => errorSnackBar(l.message), (r) => null);
    getStudents();
  }

  String calculateAge(DateTime birthDate) {
    final DateTime currentDate = DateTime.now();
    int age = currentDate.year - birthDate.year;
    final int month1 = currentDate.month;
    final int month2 = birthDate.month;
    if (month2 > month1) {
      age--;
    } else if (month1 == month2) {
      final int day1 = currentDate.day;
      final int day2 = birthDate.day;
      if (day2 > day1) {
        age--;
      }
    }
    return age.toString();
  }

  Future<void> goToAddStudent() async {
    await Get.toNamed(AppRoutes.instance.addStudent, arguments: department);
    getStudents();
  }
}
