// ignore_for_file: return_of_invalid_type

import 'package:dartz/dartz.dart';

import '../../../../core/errors/errors.dart';
import '../../infra/models/student_model.dart';
import '../../infra/repositories/student_repository_impl.dart';

abstract class GetAllStudents {
  Either<FailureStudents, List<StudentModel>> call(
      {required List<String> studentsUid});
}

class GetAllStudentsImpl implements GetAllStudents {
  GetAllStudentsImpl({required this.repository});

  final StudentsRepositoryImpl repository;

  @override
  Either<FailureStudents, List<StudentModel>> call(
      {required List<String> studentsUid}) {
    return repository.getAllStudents(studentsUid: studentsUid);
  }
}
