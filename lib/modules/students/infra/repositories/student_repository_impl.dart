// ignore_for_file: argument_type_not_assignable

import 'package:dartz/dartz.dart';

import '../../../../core/errors/errors.dart';
import '../../../../core/utils/consts.dart';
import '../../domain/entities/student.dart';
import '../../domain/repositories/students_repository.dart';
import '../datasource/student_datasource.dart';

class StudentsRepositoryImpl implements StudentsRepository {
  StudentsRepositoryImpl({required this.datasource});
  final StudentsDataSource datasource;

  @override
  Future<Either<FailureStudents, Unit>> addStudent(
      {required Student student, required String departmentKey}) async {
    try {
      final result = await datasource.addStudent(
          student: student, departmentKey: departmentKey);
      return Right(result);
    } on StudentDatasourceError catch (e) {
      e.message = "The student couldn't be added to the database";
      return Left(e);
    } on InvalidStudentId catch (e) {
      e.message = 'This ID is already being used';
      return Left(e);
    } catch (e) {
      return Left(GeneralFailureStudents(message: generalError));
    }
  }

  @override
  Future<Either<FailureStudents, Unit>> deleteStudent(String key) async {
    try {
      await datasource.deleteStudent(key);
      return const Right(unit);
    } on StudentDatasourceError catch (e) {
      e.message = "The student couldn't be deleted from the database";
      return Left(e);
    } catch (e) {
      return Left(GeneralFailureStudents(message: generalError));
    }
  }

  @override
  Future<Either<FailureStudents, Unit>> editStudent(
      String key, Student student) async {
    try {
      await datasource.editStudent(key, student);
      return const Right(unit);
    } on StudentDatasourceError catch (e) {
      e.message = "The student couldn't be edited in the database";
      return Left(e);
    } catch (e) {
      return Left(GeneralFailureStudents(message: generalError));
    }
  }

  @override
  Either<FailureStudents, List<Student>> getAllStudents(
      {required List<String> studentsUid}) {
    try {
      final result = datasource.getAllStudents(studentsUid: studentsUid);
      return Right(result);
    } on StudentDatasourceError catch (e) {
      e.message = "It wasn't possible to fetch any student";
      return Left(e);
    } catch (e) {
      return Left(GeneralFailureStudents(message: generalError));
    }
  }

  @override
  Future<Either<FailureStudents, Student>> getStudent(String key) async {
    try {
      final result = await datasource.getStudent(key);
      return Right(result);
    } on StudentDatasourceError catch (e) {
      e.message = "It wasn't possible to fetch this student";
      return Left(e);
    } catch (e) {
      return Left(GeneralFailureStudents(message: generalError));
    }
  }
}
