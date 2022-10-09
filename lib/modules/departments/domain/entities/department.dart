import 'package:hive/hive.dart';

class Department extends HiveObject {
  Department({
    required this.uuid,
    required this.description,
    required this.studentsUidList,
  });
  String uuid;
  String description;
  List<String> studentsUidList;
}
