import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';

import '../../../../components/core/snackbar.dart';
import '../../../departments/infra/models/department_model.dart';
import '../../domain/usecases/add_student.dart';
import '../../infra/models/student_model.dart';

class AddStudentController extends GetxController {
  AddStudentController({
    required this.addStudent,
  });
  final AddStudent addStudent;
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  Rx<DateTime> dateOfBirth = DateTime(0).obs;
  var addStudentFormKey = GlobalKey<FormState>();

  Future<bool> pickInitialDate() async {
    var pickedDate = await showDatePicker(
      context: Get.key.currentContext!,
      locale: Get.deviceLocale,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900, 1, 1),
      lastDate: DateTime.now(),
      confirmText: 'OK',
    );

    if (pickedDate != null) {
      dateOfBirth.value = pickedDate;
    }

    return true;
  }

  String formattedDate() {
    return '${dateOfBirth.value.month}/${dateOfBirth.value.day}/${dateOfBirth.value.year}';
  }

  Future<void> submitStudent() async {
    final form = addStudentFormKey.currentState;

    form?.save();
    final student = StudentModel(
      uuid: const Uuid().v4(),
      firstName: firstNameController.text,
      lastName: lastNameController.text,
      dateOfBirth: dateOfBirth.value,
    );

    final result = await addStudent(
        student: student,
        departmentKey: (Get.arguments as DepartmentModel).uuid);

    result.fold((l) => errorSnackBar(l.message), (r) {
      Get.back();
    });
  }
}
