import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/core_modules/presenter/widgets/home/market_card_widget.dart';
import '../../../../core/utils/consts.dart';
import 'list_students_controller.dart';

///Class HomePage
class ListStudentsPage extends GetView<ListStudentsController> {
  const ListStudentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final productHeight = (Get.height - kToolbarHeight - 24) / 2;
    final productWidht = Get.width / 2;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF68A0A),
        elevation: 0,
        leading: BackButton(
          onPressed: () => Get.back(),
          color: Colors.white,
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xFFF68A0A),
          onPressed: controller.goToAddStudent,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          )),
      backgroundColor: const Color(0xFFF4F5Fc),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return <Widget>[
            CupertinoSliverNavigationBar(
              border: null,
              backgroundColor: const Color(0xFFF4F5Fc),
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
                students,
                style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
              ),
              // trailing: GestureDetector(
              //   onTap: controller.logout,
              //   child: Icon(
              //     Icons.logout,
              //     size: 23,
              //     color: Colors.grey,
              //   ),
              // ),
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
                  child: Obx(
                () => controller.studentsList.isEmpty
                    ? Center(
                        child: Text(
                        'There is not students',
                        style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
                      ))
                    : GridView.count(
                        crossAxisSpacing: 16,
                        childAspectRatio: productWidht / productHeight,
                        mainAxisSpacing: 16,
                        crossAxisCount: 2,
                        children: controller.studentsList
                            .map((e) => MarketCardWidget(
                                  title: '${e?.firstName} ${e?.lastName}',
                                  imageUrl: avatarPath,
                                  age: controller.calculateAge(e != null
                                      ? e.dateOfBirth
                                      : DateTime.now()),
                                  onDeleteTap: () async {
                                    await controller.delete(e!.uuid);
                                  },
                                  onTap: () => null,
                                ))
                            .toList(),
                      ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
