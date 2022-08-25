import '/core/app_export.dart';
import 'package:socio3/presentation/daily_new_screen/models/daily_new_model.dart';
import 'package:flutter/material.dart';

class DailyNewController extends GetxController {
  TextEditingController group9020Controller = TextEditingController();

  Rx<DailyNewModel> dailyNewModelObj = DailyNewModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group9020Controller.dispose();
  }
}
