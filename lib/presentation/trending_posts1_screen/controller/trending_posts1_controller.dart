import '/core/app_export.dart';
import 'package:socio3/presentation/trending_posts1_screen/models/trending_posts1_model.dart';
import 'package:flutter/material.dart';

class TrendingPosts1Controller extends GetxController
    with GetSingleTickerProviderStateMixin {
  TextEditingController group9020Controller = TextEditingController();

  Rx<TrendingPosts1Model> trendingPosts1ModelObj = TrendingPosts1Model().obs;

  late TabController frame9031Controller =
      Get.put(TabController(vsync: this, length: 4));

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
