// import 'package:date_format/date_format.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';

// import '../../../../core/utils/consts.dart';
// import 'edit_student_controller.dart';
// import '../list_students/list_students_page.dart';

// class EditStudentPage extends GetView<EditStudentController> {
//   static const String routeName = editStudentRoute;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFF68A0A),
//       appBar: buildAppBar(context),
//       body: SingleChildScrollView(
//         child: Column(
//           children: <Widget>[
//             SizedBox(
//               height: Get.height,
//               child: Stack(
//                 children: <Widget>[
//                   Container(
//                     margin: EdgeInsets.only(top: Get.height * 0.1),
//                     padding: EdgeInsets.only(
//                       top: Get.height * 0.05,
//                       left: 20,
//                       right: 20,
//                     ),
//                     // height: 500,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(40),
//                         topRight: Radius.circular(40),
//                       ),
//                     ),
//                     child: Form(
//                       key: controller.editStudentFormKey,
//                       child: Column(
//                         children: <Widget>[
//                           Row(
//                             children: <Widget>[
//                               Expanded(
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: <Widget>[
//                                     Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.spaceBetween,
//                                       children: [
//                                         Text(
//                                           Get.parameters['name'],
//                                           style: GoogleFonts.roboto(
//                                               fontWeight: FontWeight.bold,
//                                               fontSize: 20),
//                                         ),
//                                         IconButton(
//                                           onPressed: () async =>
//                                               await controller.delete(
//                                                   Get.parameters['key']),
//                                           icon: Icon(
//                                             Icons.delete,
//                                           ),
//                                           color: Color(0xFFF68A0A),
//                                         ),
//                                       ],
//                                     ),
//                                     Text(
//                                       formatDate(DateTime.now(), [
//                                         dd,
//                                         '/',
//                                         mm,
//                                         '/',
//                                         yyyy,
//                                         ' ',
//                                         HH,
//                                         ':',
//                                         nn
//                                       ]),
//                                       style: GoogleFonts.roboto(
//                                           fontWeight: FontWeight.normal,
//                                           fontSize: 15),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 15,
//                           ),
//                           Row(
//                             children: <Widget>[
//                               Expanded(
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: <Widget>[
//                                     Container(
//                                       height: 50,
//                                       child: TextField(
//                                         controller: controller.nameController,
//                                         decoration: InputDecoration(
//                                             hintText: name,
//                                             border: OutlineInputBorder()),
//                                       ),
//                                     ),
//                                     SizedBox(height: 10),
//                                     Container(
//                                       height: 50,
//                                       child: TextField(
//                                         controller:
//                                             controller.imagePathController,
//                                         decoration: InputDecoration(
//                                             hintText: imagePath,
//                                             border: OutlineInputBorder()),
//                                       ),
//                                     ),
//                                     SizedBox(height: 10),
//                                     Container(
//                                       height: 50,
//                                       child: TextField(
//                                         controller:
//                                             controller.categoryController,
//                                         decoration: InputDecoration(
//                                             hintText: category,
//                                             border: OutlineInputBorder()),
//                                       ),
//                                     ),
//                                     SizedBox(height: 10),
//                                     Container(
//                                       height: 50,
//                                       child: TextField(
//                                         controller: controller.priceController,
//                                         decoration: InputDecoration(
//                                             hintText: price,
//                                             border: OutlineInputBorder()),
//                                       ),
//                                     ),
//                                     SizedBox(height: 10),
//                                     Container(
//                                       height: 50,
//                                       child: TextField(
//                                         controller: controller.stockController,
//                                         decoration: InputDecoration(
//                                             hintText: stock,
//                                             border: OutlineInputBorder()),
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding: const EdgeInsets.symmetric(
//                                           vertical: 20),
//                                       child: Row(
//                                         children: <Widget>[
//                                           Expanded(
//                                             child: SizedBox(
//                                               height: 50,
//                                               child: TextButton(
//                                                 style: ButtonStyle(
//                                                   backgroundColor:
//                                                       MaterialStateProperty.all(
//                                                           Color(0xFFF68A0A)),
//                                                   shape:
//                                                       MaterialStateProperty.all(
//                                                           RoundedRectangleBorder(
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .circular(
//                                                                           18))),
//                                                 ),
//                                                 onPressed:
//                                                     controller.submitStudent,
//                                                 child: Text(
//                                                   edit.toUpperCase(),
//                                                   style: TextStyle(
//                                                     fontSize: 17,
//                                                     fontWeight: FontWeight.bold,
//                                                     color: Colors.white,
//                                                   ),
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                           SizedBox(height: 20),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   AppBar buildAppBar(BuildContext context) {
//     return AppBar(
//       backgroundColor: Color(0xFFF68A0A),
//       elevation: 0,
//       leading: BackButton(
//         onPressed: () => Get.offAndToNamed(StudentsPage.routeName),
//         color: Colors.white,
//       ),
//     );
//   }
// }
