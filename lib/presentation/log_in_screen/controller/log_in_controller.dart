import '/core/app_export.dart';
import 'package:socio3/presentation/log_in_screen/models/log_in_model.dart';
import 'package:flutter/material.dart';

class LogInController extends GetxController {
  TextEditingController frameThirtyController = TextEditingController();

  TextEditingController frameThirtyOneController = TextEditingController();

  Rx<LogInModel> logInModelObj = LogInModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    frameThirtyController.dispose();
    frameThirtyOneController.dispose();
  }
}
