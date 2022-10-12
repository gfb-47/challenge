import 'package:dartz/dartz.dart';

import '../../../../core/errors/errors.dart';
import '../entities/department.dart';

abstract class DepartmentsRepository {
  Either<FailureDepartments, List<Department>> getAllDepartments();
  Future<Either<FailureDepartments, Unit>> addDepartment(Department department);
  Future<Either<FailureDepartments, Unit>> deleteDepartment(String key);
}
