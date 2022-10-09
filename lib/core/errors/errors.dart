//Login
abstract class FailureLogin implements Exception {
  String get message;
}

class InvalidLoginCredentials implements FailureLogin {
  InvalidLoginCredentials({required this.message});
  @override
  String message;
}

class LoginDatasourceError implements FailureLogin {
  LoginDatasourceError({required this.message});
  @override
  String message;
}

//Get User
abstract class FailureGetUser implements Exception {
  String get message;
}

class NullUserError implements FailureGetUser {
  NullUserError({required this.message});
  String message;
}

//Students
abstract class FailureStudents implements Exception {
  String get message;
}

class GeneralFailureStudents implements FailureStudents {
  GeneralFailureStudents({required this.message});
  @override
  String message;
}

class InvalidStudentId implements FailureStudents {
  InvalidStudentId({required this.message});
  @override
  String message;
}

class StudentDatasourceError implements FailureStudents {
  StudentDatasourceError({required this.message});
  @override
  String message;
}

//Department
abstract class FailureDepartments implements Exception {
  String get message;
}

class GeneralFailureDepartments implements FailureDepartments {
  GeneralFailureDepartments({required this.message});
  @override
  String message;
}

class InvalidDepartmentDescription implements FailureDepartments {
  InvalidDepartmentDescription({required this.message});
  @override
  String message;
}

class DepartmentDatasourceError implements FailureDepartments {
  DepartmentDatasourceError({required this.message});
  @override
  String message;
}
