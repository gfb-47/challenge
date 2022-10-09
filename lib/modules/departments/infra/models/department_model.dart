import 'package:hive/hive.dart';

import '../../domain/entities/department.dart';

part 'department_model.g.dart';

@HiveType(typeId: 1)
class DepartmentModel extends Department {
  DepartmentModel({
    required this.uuid,
    required this.description,
    required this.studentsUidList,
  }) : super(description: '', uuid: '', studentsUidList: []);

  @HiveField(0)
  String uuid;
  @HiveField(1)
  String description;
  @HiveField(2)
  List<String> studentsUidList;
}
