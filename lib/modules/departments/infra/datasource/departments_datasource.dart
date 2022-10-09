import 'package:dartz/dartz.dart';

import '../../../students/domain/entities/student.dart';
import '../../domain/entities/department.dart';

abstract class DepartmentsDataSource {
  List<Department> getAllDepartments();
  Future<Unit> addDepartment({required Department department});
  Future<Unit> deleteDepartment({required String key});
  Future<Unit> addStudentToDepartment({
    required Student student,
    required String departmentKey,
  });
}
