import 'package:hive/hive.dart';

class Student extends HiveObject {
  Student({
    required this.uuid,
    required this.firstName,
    required this.lastName,
    required this.dateOfBirth,
  });

  @override
  String uuid;
  String firstName;
  String lastName;
  DateTime dateOfBirth;
}
