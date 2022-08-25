import '../messages_screen/widgets/listellipsefifteen2_item_widget.dart';
import '../messages_screen/widgets/listellipsetwentytwo_one_item_widget.dart';
import 'controller/messages_controller.dart';
import 'models/listellipsefifteen2_item_model.dart';
import 'models/listellipsetwentytwo_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:socio3/core/app_export.dart';

class MessagesScreen extends GetWidget<MessagesController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Column(children: [
              Expanded(
                  child: Container(
                      width: size.width,
                      child: SingleChildScrollView(
                          child: Container(
                              margin: getMargin(top: 17),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  width: size.width,
                                                  margin: getMargin(
                                                      left: 16, right: 16),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        GestureDetector(
                                                            onTap: () {
                                                              onTapImgArrowleft();
                                                            },
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgArrowleft,
                                                                height: getSize(
                                                                    15.00),
                                                                width: getSize(
                                                                    15.00))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 1,
                                                                bottom: 1),
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgPlus,
                                                                height: getSize(
                                                                    14.00),
                                                                width: getSize(
                                                                    14.00)))
                                                      ]))),
                                          Padding(
                                              padding: getPadding(
                                                  left: 16, top: 46, right: 16),
                                              child: Text("lbl_messages".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterBold32DeeppurpleA200
                                                      .copyWith(height: 1.00))),
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Container(
                                                  height:
                                                      getVerticalSize(102.00),
                                                  width:
                                                      getHorizontalSize(413.00),
                                                  child: Obx(() =>
                                                      ListView.builder(
                                                          padding: getPadding(
                                                              left: 10,
                                                              top: 21),
                                                          scrollDirection:
                                                              Axis.horizontal,
                                                          physics:
                                                              BouncingScrollPhysics(),
                                                          itemCount: controller
                                                              .messagesModelObj
                                                              .value
                                                              .listellipsefifteen2ItemList
                                                              .length,
                                                          itemBuilder:
                                                              (context, index) {
                                                            Listellipsefifteen2ItemModel
                                                                model =
                                                                controller
                                                                    .messagesModelObj
                                                                    .value
                                                                    .listellipsefifteen2ItemList[index];
                                                            return Listellipsefifteen2ItemWidget(
                                                                model);
                                                          })))),
                                          Container(
                                              height: getVerticalSize(2.00),
                                              width: size.width,
                                              margin: getMargin(top: 24),
                                              decoration: BoxDecoration(
                                                  color: ColorConstant
                                                      .deepPurple50)),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 10,
                                                      top: 24,
                                                      right: 10),
                                                  child: Obx(() =>
                                                      ListView.separated(
                                                          physics:
                                                              BouncingScrollPhysics(),
                                                          shrinkWrap: true,
                                                          separatorBuilder:
                                                              (context, index) {
                                                            return Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        2.00),
                                                                width:
                                                                    size.width,
                                                                decoration:
                                                                    BoxDecoration(
                                                                        color: ColorConstant
                                                                            .deepPurple50));
                                                          },
                                                          itemCount: controller
                                                              .messagesModelObj
                                                              .value
                                                              .listellipsetwentytwoOneItemList
                                                              .length,
                                                          itemBuilder:
                                                              (context, index) {
                                                            ListellipsetwentytwoOneItemModel
                                                                model =
                                                                controller
                                                                    .messagesModelObj
                                                                    .value
                                                                    .listellipsetwentytwoOneItemList[index];
                                                            return ListellipsetwentytwoOneItemWidget(
                                                                model);
                                                          }))))
                                        ]))
                                  ]))))),
              Container(
                  decoration: BoxDecoration(
                      color: ColorConstant.whiteA700,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(getHorizontalSize(12.00)),
                          topRight: Radius.circular(getHorizontalSize(12.00))),
                      boxShadow: [
                        BoxShadow(
                            color: ColorConstant.deepPurpleA20033,
                            spreadRadius: getHorizontalSize(2.00),
                            blurRadius: getHorizontalSize(2.00),
                            offset: Offset(0, -3))
                      ]),
                  child: Padding(
                      padding: getPadding(top: 15, bottom: 15),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                                margin: getMargin(top: 3),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                              padding:
                                                  getPadding(left: 3, right: 3),
                                              child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgHome23X22,
                                                  height:
                                                      getVerticalSize(23.00),
                                                  width: getHorizontalSize(
                                                      22.00)))),
                                      Padding(
                                          padding: getPadding(top: 12),
                                          child: Text("lbl_home".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterRegular10
                                                  .copyWith()))
                                    ])),
                            Container(
                                margin: getMargin(top: 5),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding:
                                              getPadding(left: 7, right: 6),
                                          child: CommonImageView(
                                              svgPath: ImageConstant
                                                  .imgVideocamera18X25,
                                              height: getVerticalSize(18.00),
                                              width: getHorizontalSize(25.00))),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: getPadding(top: 13),
                                              child: Text("lbl_streams".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular10
                                                      .copyWith())))
                                    ])),
                            Container(
                                margin: getMargin(top: 4),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding:
                                              getPadding(left: 13, right: 13),
                                          child: CommonImageView(
                                              svgPath: ImageConstant.imgVector,
                                              height: getSize(22.00),
                                              width: getSize(22.00))),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: getPadding(top: 12),
                                              child: Text("lbl_messages".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular10DeeppurpleA200
                                                      .copyWith())))
                                    ])),
                            Container(
                                margin: getMargin(top: 3),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding:
                                              getPadding(left: 20, right: 20),
                                          child: CommonImageView(
                                              svgPath:
                                                  ImageConstant.imgNotification,
                                              height: getVerticalSize(25.00),
                                              width: getHorizontalSize(19.00))),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: getPadding(top: 9),
                                              child: Text(
                                                  "lbl_notifications".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular10
                                                      .copyWith())))
                                    ])),
                            Container(
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                  Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                          padding: getPadding(
                                              left: 4, top: 2, right: 4),
                                          child: CommonImageView(
                                              svgPath:
                                                  ImageConstant.imgUser25X21,
                                              height: getVerticalSize(25.00),
                                              width:
                                                  getHorizontalSize(21.00)))),
                                  Padding(
                                      padding: getPadding(top: 10),
                                      child: Text("lbl_profile".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterRegular10
                                              .copyWith()))
                                ]))
                          ])))
            ])));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}