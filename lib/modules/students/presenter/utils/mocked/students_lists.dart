import '../../../infra/models/student_model.dart';

List<StudentModel> productsModelList = [
  StudentModel(
    uuid: '0',
    firstName: 'Lucas',
    lastName: 'Martins',
    dateOfBirth: DateTime.now().subtract(
      const Duration(days: 30000),
    ),
  ),
  StudentModel(
    uuid: '1',
    firstName: 'Emanoel',
    lastName: 'Lustosa',
    dateOfBirth: DateTime.now().subtract(
      const Duration(days: 40000),
    ),
  ),
  StudentModel(
    uuid: '2',
    firstName: 'Gabriela',
    lastName: 'Ferreira',
    dateOfBirth: DateTime.now().subtract(
      const Duration(days: 25000),
    ),
  ),
  StudentModel(
    uuid: '3',
    firstName: 'Yhan',
    lastName: 'Nunes',
    dateOfBirth: DateTime.now().subtract(
      const Duration(days: 160000),
    ),
  ),
  StudentModel(
    uuid: '4',
    firstName: 'Marco',
    lastName: 'Teles',
    dateOfBirth: DateTime.now().subtract(
      const Duration(days: 17000),
    ),
  ),
  StudentModel(
    uuid: '5',
    firstName: 'Juliana',
    lastName: 'Martins',
    dateOfBirth: DateTime.now().subtract(
      const Duration(days: 10000),
    ),
  ),
  StudentModel(
    uuid: '6',
    firstName: 'Carlos',
    lastName: 'Lacerda',
    dateOfBirth: DateTime.now().subtract(
      const Duration(days: 12000),
    ),
  ),
  StudentModel(
    uuid: '7',
    firstName: 'Junior',
    lastName: 'Donald',
    dateOfBirth: DateTime.now().subtract(
      const Duration(days: 15000),
    ),
  ),
];
