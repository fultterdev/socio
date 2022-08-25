import '/core/app_export.dart';
import 'package:socio3/presentation/sign_up_screen/models/sign_up_model.dart';
import 'package:flutter/material.dart';

class SignUpController extends GetxController {
  TextEditingController frameThirtyController2 = TextEditingController();

  TextEditingController frameThirtyFourController = TextEditingController();

  TextEditingController frameThirtyFiveController = TextEditingController();

  TextEditingController frameThirtySixController1 = TextEditingController();

  TextEditingController frameThirtySevenController = TextEditingController();

  Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

  RxString radioGroup = "".obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    frameThirtyController2.dispose();
    frameThirtyFourController.dispose();
    frameThirtyFiveController.dispose();
    frameThirtySixController1.dispose();
    frameThirtySevenController.dispose();
  }
}
