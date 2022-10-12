// ignore_for_file: return_of_invalid_type

import 'package:dartz/dartz.dart';

import '../../../../core/errors/errors.dart';
import '../entities/student.dart';
import '../repositories/students_repository.dart';

abstract class GetAllStudents {
  Either<FailureStudents, List<Student>> call(
      {required List<String> studentsUid});
}

class GetAllStudentsImpl implements GetAllStudents {
  GetAllStudentsImpl({required this.repository});

  final StudentsRepository repository;

  @override
  Either<FailureStudents, List<Student>> call(
      {required List<String> studentsUid}) {
    return repository.getAllStudents(studentsUid: studentsUid);
  }
}
