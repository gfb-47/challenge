// ignore_for_file: avoid_dynamic_calls
// ignore_for_file: argument_type_not_assignable

import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';

import '../../../app/app_boxes.dart';
import '../../../core/errors/errors.dart';
import '../../students/domain/entities/student.dart';
import '../domain/entities/department.dart';
import '../infra/datasource/departments_datasource.dart';
import '../infra/models/department_model.dart';

class DepartmentsLocalDatasource implements DepartmentsDataSource {
  DepartmentsLocalDatasource({required this.appBoxes}) {
    departmentsBox = appBoxes.mapBoxes['departments']!;
  }

  AppBoxes appBoxes;
  late Box<dynamic> departmentsBox;

  @override
  Future<Unit> addDepartment({required Department department}) async {
    if (department.description == null || department.description == '') {
      throw InvalidDepartmentDescription(message: 'Invalid description');
    }
    await departmentsBox.put(department.uuid, department);
    return unit;
  }

  @override
  Future<Unit> deleteDepartment({required String key}) async {
    await departmentsBox.delete(key);
    return unit;
  }

  @override
  List<DepartmentModel> getAllDepartments() {
    final result = departmentsBox.values.map((e) {
      return DepartmentModel(
          uuid: e.uuid, description: e.description, studentsUidList: []);
    }).toList();
    final List<DepartmentModel> departmentList = result;
    return departmentList;
  }

  @override
  Future<Unit> addStudentToDepartment({
    required Student student,
    required String departmentKey,
  }) async {
    final result =
        departmentsBox.values.singleWhere((e) => e.uuid == departmentKey);

    final department = DepartmentModel(
        description: result.description,
        uuid: result.uuid,
        studentsUidList: result.studentsList as List<String>);

    department.studentsUidList.add(student.uuid);
    await deleteDepartment(key: departmentKey);
    await departmentsBox.put(departmentKey, department);

    return unit;
  }
}
