import 'package:dartz/dartz.dart';

import '../../domain/entities/student.dart';

abstract class StudentsDataSource {
  List<Student> getAllStudents({required List<String> studentsUid});
  Future<Student> getStudent(String key);
  Future<Unit> addStudent(
      {required Student student, required String departmentKey});
  Future<Unit> editStudent(String key, Student student);
  Future<Unit> deleteStudent(String key);
}
