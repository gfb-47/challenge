// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:meta/meta.dart';

// import '../../../auth/presenter/widgets/error_snack_bar.dart';
// import '../../domain/usecases/delete_student.dart';
// import '../../domain/usecases/edit_student.dart';
// import '../../infra/models/student_model.dart';
// import '../list_students/list_students_page.dart';

// class EditStudentController extends GetxController {
//   final EditStudent editStudent;
//   final DeleteStudent deleteStudent;

//   final nameController = TextEditingController();
//   final imagePathController = TextEditingController();
//   final categoryController = TextEditingController();
//   final priceController = TextEditingController();
//   final stockController = TextEditingController();

//   var currentKey = '';
//   var editStudentFormKey = GlobalKey<FormState>();

//   EditStudentController({
//     required this.editStudent,
//     required this.deleteStudent,
//   });

//   @override
//   void onInit() async {
//     getStudent();
//     super.onInit();
//   }

//   delete(String key) async {
//     final result = await deleteStudent(key);
//     result.fold(
//       (l) => errorSnackBar(l.message as String),
//       (r) {
//         Get.offAllNamed(StudentsPage.routeName);
//         currentKey = '';
//       },
//     );
//   }

//   getStudent() {
//     final result = Get.parameters;
//     currentKey = result['key'];
//     nameController.text = result['name'];
//     categoryController.text = result['category'];
//     imagePathController.text = result['image'];
//     priceController.text = result['price'];
//     stockController.text = result['stock'];
//   }

//   submitStudent() async {
//     final form = editStudentFormKey.currentState;

//     form.save();
//     final product = StudentModel(
//       key: Get.parameters['key'],
//       firstName: nameController.text,
//       lastName: imagePathController.text,
//       dateOfBirth: null,
//     );

//     final result = await editStudent(product.key, product);

//     result.fold((l) => errorSnackBar(l.message as String), (r) {
//       Get.offAllNamed(StudentsPage.routeName);
//     });
//   }
// }
