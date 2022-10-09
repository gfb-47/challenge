import 'package:flutter/material.dart';
import 'package:get/get.dart';

void errorSnackBar(String error) {
  Get.rawSnackbar(
    message: error.toString(),
    backgroundColor: Colors.red[300]!,
  );
}
