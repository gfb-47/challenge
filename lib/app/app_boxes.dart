import 'package:hive/hive.dart';

import '../modules/departments/infra/models/department_model.dart';
import '../modules/students/infra/models/student_model.dart';

///It manages the first boxes of the database,
///by closing and opening them
class AppBoxes {
  AppBoxes() {
    _openBox();
  }

  ///That's a way to get boxes through dependency injection
  final Map<String, Box<dynamic>> mapBoxes = <String, Box>{};

  Future<Map<String, Box>> _openBox() async {
    //Departments Box
    Hive.registerAdapter(DepartmentModelAdapter());
    final Box<dynamic> boxDepartments = await Hive.openBox('departments');
    mapBoxes['departments'] = boxDepartments;

    //Students Box
    Hive.registerAdapter(StudentModelAdapter());
    final Box<dynamic> boxStudents = await Hive.openBox('students');
    mapBoxes['students'] = boxStudents;
    return mapBoxes;
  }
}
