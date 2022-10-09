import 'package:dartz/dartz.dart';

import '../../../../core/errors/errors.dart';
import '../../infra/repositories/department_repository_impl.dart';

abstract class DeleteDepartment {
  Future<Either<FailureDepartments, Unit>> call(String key);
}

class DeleteDepartmentImpl implements DeleteDepartment {
  DeleteDepartmentImpl({required this.repository});
  final DepartmentsRepositoryImpl repository;

  @override
  Future<Either<FailureDepartments, Unit>> call(String key) {
    return repository.deleteDepartment(key);
  }
}
