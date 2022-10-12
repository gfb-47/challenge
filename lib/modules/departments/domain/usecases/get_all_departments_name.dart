// ignore_for_file: return_of_invalid_type

import 'package:dartz/dartz.dart';

import '../../../../core/errors/errors.dart';
import '../entities/department.dart';
import '../repositories/departments_repository.dart';

abstract class GetAllDepartments {
  Either<FailureDepartments, List<Department>> call();
}

class GetAllDepartmentsImpl implements GetAllDepartments {
  GetAllDepartmentsImpl({required this.repository});

  final DepartmentsRepository repository;

  @override
  Either<FailureDepartments, List<Department>> call() {
    return repository.getAllDepartments();
  }
}
