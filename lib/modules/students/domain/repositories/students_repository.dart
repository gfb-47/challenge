import 'package:dartz/dartz.dart';

import '../../../../core/errors/errors.dart';
import '../../infra/models/student_model.dart';

abstract class StudentsRepository {
  Either<FailureStudents, List<StudentModel?>> getAllStudents(
      {required List<String> studentsUid});
  Future<Either<FailureStudents, StudentModel>> getStudent(String key);
  Future<Either<FailureStudents, Unit>> addStudent(
      {required StudentModel student, required String departmentKey});
  Future<Either<FailureStudents, Unit>> editStudent(
      String key, StudentModel student);
  Future<Either<FailureStudents, Unit>> deleteStudent(String key);
}
