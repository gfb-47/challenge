import 'package:dartz/dartz.dart';

import '../../../../core/errors/errors.dart';
import '../entities/student.dart';

abstract class StudentsRepository {
  Either<FailureStudents, List<Student>> getAllStudents(
      {required List<String> studentsUid});
  Future<Either<FailureStudents, Student>> getStudent(String key);
  Future<Either<FailureStudents, Unit>> addStudent(
      {required Student student, required String departmentKey});
  Future<Either<FailureStudents, Unit>> editStudent(
      String key, Student student);
  Future<Either<FailureStudents, Unit>> deleteStudent(String key);
}
