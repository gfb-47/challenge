// ignore_for_file: argument_type_not_assignable

import 'package:dartz/dartz.dart';

import '../../../../core/errors/errors.dart';
import '../../../../core/utils/consts.dart';
import '../../domain/entities/department.dart';
import '../../domain/repositories/departments_repository.dart';
import '../datasource/departments_datasource.dart';

class DepartmentsRepositoryImpl implements DepartmentsRepository {
  DepartmentsRepositoryImpl({required this.datasource});

  final DepartmentsDataSource datasource;

  @override
  Future<Either<FailureDepartments, Unit>> addDepartment(
      Department department) async {
    try {
      final result = await datasource.addDepartment(department: department);
      return Right(result);
    } on DepartmentDatasourceError catch (e) {
      e.message = "The department couldn't be added to the database";
      return Left(e);
    } on InvalidDepartmentDescription catch (e) {
      e.message = 'The description is empty';
      return Left(e);
    } catch (e) {
      return Left(GeneralFailureDepartments(message: generalError));
    }
  }

  @override
  Future<Either<FailureDepartments, Unit>> deleteDepartment(String key) async {
    try {
      await datasource.deleteDepartment(key: key);
      return const Right(unit);
    } on DepartmentDatasourceError catch (e) {
      e.message = "The department couldn't be deleted from the database";
      return Left(e);
    } catch (e) {
      return Left(GeneralFailureDepartments(message: generalError));
    }
  }

  @override
  Either<FailureDepartments, List<Department>> getAllDepartments() {
    try {
      final result = datasource.getAllDepartments();

      return Right(result);
    } on DepartmentDatasourceError catch (e) {
      e.message = "It wasn't possible to fetch any department";
      return Left(e);
    } catch (e) {
      return Left(GeneralFailureDepartments(message: generalError));
    }
  }
}
