import 'package:dartz/dartz.dart';

import '../../../../core/errors/errors.dart';
import '../../infra/models/department_model.dart';

abstract class DepartmentsRepository {
  Either<FailureDepartments, List<DepartmentModel>> getAllDepartments();
  Future<Either<FailureDepartments, Unit>> addDepartment(
      DepartmentModel department);
  Future<Either<FailureDepartments, Unit>> deleteDepartment(String key);
}
