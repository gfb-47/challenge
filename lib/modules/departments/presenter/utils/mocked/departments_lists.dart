import 'package:uuid/uuid.dart';

import '../../../infra/models/department_model.dart';

List<DepartmentModel> productsModelList = [
  DepartmentModel(
    uuid: const Uuid().v4(),
    description: 'Medicine',
    studentsUidList: [],
  ),
  DepartmentModel(
    uuid: const Uuid().v4(),
    description: 'Computer Science',
    studentsUidList: [],
  ),
  DepartmentModel(
    uuid: const Uuid().v4(),
    description: 'Business',
    studentsUidList: [],
  ),
  DepartmentModel(
    uuid: const Uuid().v4(),
    description: 'Psychology',
    studentsUidList: [],
  ),
];
