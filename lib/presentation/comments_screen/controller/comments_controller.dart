import '/core/app_export.dart';
import 'package:socio3/presentation/comments_screen/models/comments_model.dart';
import 'package:flutter/material.dart';

class CommentsController extends GetxController {
  TextEditingController frameThirtySixController2 = TextEditingController();

  Rx<CommentsModel> commentsModelObj = CommentsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    frameThirtySixController2.dispose();
  }
}
