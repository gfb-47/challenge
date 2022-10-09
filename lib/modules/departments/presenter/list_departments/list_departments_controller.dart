import 'package:get/get.dart';
import '../../../../app/app_routes.dart';
import '../../../../components/core/snackbar.dart';
import '../../domain/entities/department.dart';
import '../../domain/usecases/delete_department.dart';
import '../../domain/usecases/get_all_departments_name.dart';
import '../../infra/models/department_model.dart';

class ListDepartmentsController extends GetxController {
  ListDepartmentsController({
    required this.getAllDepartments,
    required this.deleteDepartment,
  });
  final GetAllDepartmentsImpl getAllDepartments;
  final DeleteDepartmentImpl deleteDepartment;
  var departmentsList = <DepartmentModel>[].obs;

  @override
  Future<void> onInit() async {
    getDepartments();
    super.onInit();
  }

  Future<void> removeDepartment(String uuid) async {
    final result = await deleteDepartment(uuid);
    result.fold((l) => errorSnackBar(l.message), (r) {
      departmentsList.obs.update(
        (list) => list?.removeWhere(
          (element) => element.runtimeType == Department,
        ),
      );
    });
    getDepartments();
  }

  Future<void> getDepartments() async {
    departmentsList.clear();
    final result = await getAllDepartments();
    result.fold((l) => errorSnackBar(l.message), (r) {
      departmentsList.obs.update(
        (list) => list?.addAll(r),
      );
    });
  }

  void goToStudentsList(DepartmentModel department) {
    Get.toNamed(AppRoutes.instance.listStudents, arguments: department);
  }

  void goToAddDepartment() {
    Get.toNamed(AppRoutes.instance.addDepartment);
  }
}
