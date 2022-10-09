import 'package:dartz/dartz.dart';

import '../../../../core/errors/errors.dart';
import '../../infra/models/department_model.dart';
import '../../infra/repositories/department_repository_impl.dart';

abstract class AddDepartment {
  Future<Either<FailureDepartments, Unit>> call(DepartmentModel product);
}

class AddDepartmentImpl implements AddDepartment {
  AddDepartmentImpl({required this.repository});

  final DepartmentsRepositoryImpl repository;

  @override
  Future<Either<FailureDepartments, Unit>> call(DepartmentModel product) {
    return repository.addDepartment(product);
  }
}
