// ignore_for_file: return_of_invalid_type

import 'package:dartz/dartz.dart';

import '../../../../core/errors/errors.dart';
import '../../infra/models/department_model.dart';
import '../../infra/repositories/department_repository_impl.dart';

abstract class GetAllDepartments {
  Either<FailureDepartments, List<DepartmentModel>> call();
}

class GetAllDepartmentsImpl implements GetAllDepartments {
  GetAllDepartmentsImpl({required this.repository});

  final DepartmentsRepositoryImpl repository;

  @override
  Either<FailureDepartments, List<DepartmentModel>> call() {
    return repository.getAllDepartments();
  }
}
