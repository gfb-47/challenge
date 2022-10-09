import 'package:challenge/modules/students/presenter/list_students/list_students_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/utils/consts.dart';
import 'add_student_controller.dart';

class AddStudentPage extends GetView<AddStudentController> {
  const AddStudentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF68A0A),
      appBar: AppBar(
        backgroundColor: Color(0xFFF68A0A),
        elevation: 0,
        title: const Text(
          'Add Student',
        ),
        leading: BackButton(
          onPressed: () => Get.back(),
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Obx(
          () => Column(
            children: <Widget>[
              SizedBox(
                height: Get.height,
                child: Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: Get.height * 0.1),
                      padding: EdgeInsets.only(
                        top: Get.height * 0.05,
                        left: 20,
                        right: 20,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                      child: Form(
                        key: controller.addStudentFormKey,
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        height: 50,
                                        child: TextField(
                                          controller:
                                              controller.firstNameController,
                                          decoration: const InputDecoration(
                                            hintText: firstName,
                                            border: OutlineInputBorder(),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      SizedBox(
                                        height: 50,
                                        child: TextField(
                                          controller:
                                              controller.lastNameController,
                                          decoration: const InputDecoration(
                                            hintText: lastName,
                                            border: OutlineInputBorder(),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      InkWell(
                                        onTap: controller.pickInitialDate,
                                        child: SizedBox(
                                          height: 50,
                                          child: TextField(
                                            enabled: false,
                                            decoration: InputDecoration(
                                                disabledBorder:
                                                    OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Theme.of(
                                                                    context)
                                                                .primaryColor,
                                                            width: 0.7)),
                                                hintText: controller.dateOfBirth
                                                            .value.year ==
                                                        0
                                                    ? dateOfBirth
                                                    : controller
                                                        .formattedDate()),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 20),
                                        child: Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: SizedBox(
                                                height: 50,
                                                child: TextButton(
                                                  style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all(Color(
                                                                0xFFF68A0A)),
                                                    shape: MaterialStateProperty
                                                        .all(
                                                      RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      18)),
                                                    ),
                                                  ),
                                                  onPressed:
                                                      controller.submitStudent,
                                                  child: Text(
                                                    add.toUpperCase(),
                                                    style: const TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
