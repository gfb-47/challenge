import 'package:hive/hive.dart';

import '../../domain/entities/student.dart';

part 'student_model.g.dart';

@HiveType(typeId: 2)
class StudentModel extends Student {
  StudentModel({
    required this.uuid,
    required this.firstName,
    required this.lastName,
    required this.dateOfBirth,
  }) : super(
          uuid: '',
          firstName: '',
          lastName: '',
          dateOfBirth: DateTime.now(),
        );
  @HiveField(0)
  String uuid;
  @HiveField(1)
  String firstName;
  @HiveField(2)
  String lastName;
  @HiveField(3)
  DateTime dateOfBirth;
}
