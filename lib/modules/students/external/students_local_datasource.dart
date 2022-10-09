// ignore_for_file: avoid_dynamic_calls
// ignore_for_file: argument_type_not_assignable

import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';

import '../../../app/app_boxes.dart';
import '../../../core/utils/consts.dart';
import '../../departments/external/departments_local_datasource.dart';
import '../domain/entities/student.dart';
import '../infra/datasource/student_datasource.dart';
import '../infra/models/student_model.dart';

class StudentsLocalDatasource implements StudentsDataSource {
  StudentsLocalDatasource({
    required this.appBoxes,
    required this.departmentsLocalDatasource,
  }) {
    studentsBox = appBoxes.mapBoxes['students']!;
  }
  AppBoxes appBoxes;
  DepartmentsLocalDatasource departmentsLocalDatasource;
  late Box<dynamic> studentsBox;

  @override
  Future<Unit> addStudent(
      {required StudentModel student, required String departmentKey}) async {
    final result = departmentsLocalDatasource.addStudentToDepartment(
        student: student, departmentKey: departmentKey);
    studentsBox.put(student.uuid, student);
    return unit;
  }

  @override
  Future<Unit> deleteStudent(String key) async {
    studentsBox.delete(key);
    return unit;
  }

  @override
  Future<Unit> editStudent(String key, Student student) async {
    await studentsBox.put(key, student);
    return unit;
  }

  @override
  List<StudentModel> getAllStudents({required List<String> studentsUid}) {
    // var list = studentsBox.values
    //     .where((e) => studentsUid.contains(e.uuid as String))
    //     .toList();
    final result = studentsBox.values.map((e) {
      return StudentModel(
        uuid: e.uuid,
        firstName: e.firstName,
        lastName: e.lastName,
        dateOfBirth: e.dateOfBirth,
      );
    }).toList();
    final List<StudentModel> studentsList = result;
    return studentsList;
  }

  @override
  // ignore: missing_return
  Future<StudentModel> getStudent(String key) async {
    var student = await studentsBox.get(key);
    return StudentModel(
        uuid: student.uuid,
        firstName: student.firstName,
        lastName: student.lastName,
        dateOfBirth: student.dateOfBirth);
  }
}
