import 'package:dartz/dartz.dart';

import '../../../../core/errors/errors.dart';
import '../repositories/departments_repository.dart';

abstract class DeleteDepartment {
  Future<Either<FailureDepartments, Unit>> call(String key);
}

class DeleteDepartmentImpl implements DeleteDepartment {
  DeleteDepartmentImpl({required this.repository});
  final DepartmentsRepository repository;

  @override
  Future<Either<FailureDepartments, Unit>> call(String key) {
    return repository.deleteDepartment(key);
  }
}
