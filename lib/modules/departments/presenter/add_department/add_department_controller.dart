import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:uuid/uuid.dart';

import '../../../../app/app_routes.dart';
import '../../../../components/core/snackbar.dart';
import '../../../students/domain/entities/student.dart';
import '../../domain/usecases/add_department.dart';
import '../../infra/models/department_model.dart';

class AddDepartmentController extends GetxController {
  AddDepartmentController({
    required this.addDepartment,
  });
  final AddDepartmentImpl addDepartment;
  final descriptionController = TextEditingController();
  var addDepartmentFormKey = GlobalKey<FormState>();

  @override
  void onInit() async {
    super.onInit();
  }

  Future<void> submitDepartment() async {
    final form = addDepartmentFormKey.currentState;

    form?.save();
    final product = DepartmentModel(
      uuid: const Uuid().v4(),
      description: descriptionController.text,
      studentsUidList: ['q2e', 'q3we'],
    );

    final result = await addDepartment(product);

    result.fold((l) => errorSnackBar(l.message), (r) {
      Get.offAllNamed(AppRoutes.instance.listDepartments);
    });
  }
}
