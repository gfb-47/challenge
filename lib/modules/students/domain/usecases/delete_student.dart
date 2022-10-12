import 'package:dartz/dartz.dart';

import '../../../../core/errors/errors.dart';
import '../repositories/students_repository.dart';

abstract class DeleteStudent {
  Future<Either<FailureStudents, Unit>> call(String key);
}

class DeleteStudentImpl implements DeleteStudent {
  DeleteStudentImpl({required this.repository});
  final StudentsRepository repository;

  @override
  Future<Either<FailureStudents, Unit>> call(String key) {
    return repository.deleteStudent(key);
  }
}
