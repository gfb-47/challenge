import 'package:dartz/dartz.dart';

import '../../../../core/errors/errors.dart';
import '../entities/department.dart';
import '../repositories/departments_repository.dart';

abstract class AddDepartment {
  Future<Either<FailureDepartments, Unit>> call(Department department);
}

class AddDepartmentImpl implements AddDepartment {
  AddDepartmentImpl({required this.repository});

  final DepartmentsRepository repository;

  @override
  Future<Either<FailureDepartments, Unit>> call(Department department) {
    return repository.addDepartment(department);
  }
}
