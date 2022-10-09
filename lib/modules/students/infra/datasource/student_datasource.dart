import 'package:dartz/dartz.dart';

import '../models/student_model.dart';

abstract class StudentsDataSource {
  List<StudentModel> getAllStudents({required List<String> studentsUid});
  Future<StudentModel> getStudent(String key);
  Future<Unit> addStudent(
      {required StudentModel student, required String departmentKey});
  Future<Unit> editStudent(String key, StudentModel student);
  Future<Unit> deleteStudent(String key);
}
