import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/utils/consts.dart';
import '../../infra/models/department_model.dart';
import 'list_departments_controller.dart';

///Class HomePage
class ListDepartmentsPage extends GetView<ListDepartmentsController> {
  const ListDepartmentsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: controller.goToAddDepartment,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        body: NestedScrollView(
          physics: const BouncingScrollPhysics(),
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return <Widget>[
              CupertinoSliverNavigationBar(
                border: null,
                padding: const EdgeInsetsDirectional.only(
                    top: 8, start: 15, end: 15, bottom: 8),
                leading: Container(
                  width: 40,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(900),
                    image: const DecorationImage(
                        image: AssetImage(avatarPath), fit: BoxFit.fitHeight),
                  ),
                ),
                largeTitle: Text(
                  'Distributions',
                  style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
                ),
                trailing: GestureDetector(
                  onTap: () => null,
                  child: const Icon(
                    Icons.logout,
                    size: 23,
                    color: Colors.grey,
                  ),
                ),
              )
            ];
          },
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                const SizedBox(
                  height: 24,
                ),
                Expanded(
                  child: controller.departmentsList.isEmpty
                      ? Center(
                          child: Text(
                          'There is no department',
                          style:
                              GoogleFonts.roboto(fontWeight: FontWeight.bold),
                        ))
                      : ListView.builder(
                          itemCount: controller.departmentsList.length,
                          itemBuilder: (_, index) {
                            final DepartmentModel department =
                                controller.departmentsList[index];
                            return Card(
                              child: ListTile(
                                onTap: () =>
                                    controller.goToStudentsList(department),
                                title: Text(department.description),
                                trailing: IconButton(
                                  icon: const Icon(Icons.delete),
                                  color: Colors.red,
                                  onPressed: () => controller
                                      .removeDepartment(department.uuid),
                                ),
                              ),
                            );
                          }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
