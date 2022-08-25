import '/core/app_export.dart';
import 'package:socio3/presentation/discover_screen/models/discover_model.dart';
import 'package:flutter/material.dart';

class DiscoverController extends GetxController {
  TextEditingController group9020Controller = TextEditingController();

  Rx<DiscoverModel> discoverModelObj = DiscoverModel().obs;

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
