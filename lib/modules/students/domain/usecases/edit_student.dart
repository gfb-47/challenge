import 'package:dartz/dartz.dart';

import '../../../../core/errors/errors.dart';
import '../../infra/models/student_model.dart';
import '../repositories/students_repository.dart';

abstract class EditStudent {
  Future<Either<FailureStudents, Unit>> call(String key, StudentModel student);
}

class EditStudentImpl implements EditStudent {
  final StudentsRepository repository;

  EditStudentImpl({required this.repository});
  @override
  Future<Either<FailureStudents, Unit>> call(String key, StudentModel student) {
    return repository.editStudent(key, student);
  }
}
