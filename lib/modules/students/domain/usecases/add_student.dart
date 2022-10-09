import 'package:dartz/dartz.dart';

import '../../../../core/errors/errors.dart';
import '../../infra/models/student_model.dart';
import '../repositories/students_repository.dart';

abstract class AddStudent {
  Future<Either<FailureStudents, Unit>> call(
      {required StudentModel student, required String departmentKey});
}

class AddStudentImpl implements AddStudent {
  AddStudentImpl({required this.repository});

  final StudentsRepository repository;

  @override
  Future<Either<FailureStudents, Unit>> call(
      {required StudentModel student, required String departmentKey}) {
    return repository.addStudent(
      student: student,
      departmentKey: departmentKey,
    );
  }
}
