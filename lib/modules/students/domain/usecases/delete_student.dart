import 'package:dartz/dartz.dart';

import '../../../../core/errors/errors.dart';
import '../../infra/repositories/student_repository_impl.dart';

abstract class DeleteStudent {
  Future<Either<FailureStudents, Unit>> call(String key);
}

class DeleteStudentImpl implements DeleteStudent {
  DeleteStudentImpl({required this.repository});
  final StudentsRepositoryImpl repository;

  @override
  Future<Either<FailureStudents, Unit>> call(String key) {
    return repository.deleteStudent(key);
  }
}
