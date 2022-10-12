import 'package:get/get.dart';

import '../core/core_modules/presenter/pages/splash_page.dart';
import '../modules/departments/presenter/add_department/add_department_binding.dart';
import '../modules/departments/presenter/add_department/add_department_page.dart';
import '../modules/departments/presenter/list_departments/list_departments_binding.dart';
import '../modules/departments/presenter/list_departments/list_departments_page.dart';
import '../modules/students/presenter/add_student/add_student_binding.dart';
import '../modules/students/presenter/add_student/add_student_page.dart';
import '../modules/students/presenter/list_students/list_students_binding.dart';
import '../modules/students/presenter/list_students/list_students_page.dart';

class AppRoutes {
  AppRoutes._();

  static final AppRoutes instance = AppRoutes._();

  final String splash = '/splash';
  final String listDepartments = '/list_departments';
  final String addDepartment = '/add_department';
  final String listStudents = '/list_students';
  final String addStudent = '/add_student';

  GetPage get splashPage => GetPage(
        name: splash,
        page: () => const SplashPage(),
        transition: Transition.cupertino,
      );

  GetPage get listDepartmentsPage => GetPage(
        name: listDepartments,
        page: () => const ListDepartmentsPage(),
        binding: ListDepartmentsBinding(),
        transition: Transition.cupertino,
      );

  GetPage get addDepartmentsPage => GetPage(
        name: addDepartment,
        page: () => const AddDepartmentPage(),
        binding: AddDepartmentsBinding(),
        transition: Transition.cupertino,
      );

  GetPage get listStudentsPage => GetPage(
        name: listStudents,
        page: () => const ListStudentsPage(),
        binding: ListStudentsBinding(),
        transition: Transition.cupertino,
      );

  GetPage get addStudentPage => GetPage(
        name: addStudent,
        page: () => const AddStudentPage(),
        binding: AddStudentBinding(),
        transition: Transition.cupertino,
      );

  List<GetPage<dynamic>>? get getPagesList => [
        listDepartmentsPage,
        addDepartmentsPage,
        splashPage,
        listStudentsPage,
        addStudentPage,
      ];
}
