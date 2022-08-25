import '../stories_and_tweets_screen/widgets/listellipsetwelve_item_widget.dart';
import '../stories_and_tweets_screen/widgets/listellipsetwentytwo_item_widget.dart';
import 'controller/stories_and_tweets_controller.dart';
import 'models/listellipsetwelve_item_model.dart';
import 'models/listellipsetwentytwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:socio3/core/app_export.dart';
import 'package:socio3/widgets/custom_icon_button.dart';
import 'package:socio3/widgets/custom_search_view.dart';

class StoriesAndTweetsScreen extends GetWidget<StoriesAndTweetsController> {
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
                              margin: getMargin(top: 5),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                        width: size.width,
                                        margin: getMargin(left: 16, right: 16),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              CustomSearchView(
                                                  width: 323,
                                                  focusNode: FocusNode(),
                                                  controller: controller
                                                      .group9020Controller,
                                                  hintText: "lbl_search".tr,
                                                  suffix: Padding(
                                                      padding: EdgeInsets.only(
                                                          right:
                                                              getHorizontalSize(
                                                                  15.00)),
                                                      child: IconButton(
                                                          onPressed: controller
                                                              .group9020Controller
                                                              .clear,
                                                          icon: Icon(Icons.clear,
                                                              color: Colors.grey
                                                                  .shade600))),
                                                  suffixConstraints: BoxConstraints(
                                                      minWidth:
                                                          getHorizontalSize(
                                                              18.00),
                                                      minHeight:
                                                          getVerticalSize(18.00))),
                                              CustomIconButton(
                                                  height: 40,
                                                  width: 40,
                                                  padding: IconButtonPadding
                                                      .PaddingAll9,
                                                  onTap: () {
                                                    onTapBtntf();
                                                  },
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgCamera))
                                            ])),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            width: double.infinity,
                                            margin: getMargin(top: 36),
                                            decoration:
                                                AppDecoration.fillWhiteA700,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 16, right: 16),
                                                      child: Text(
                                                          "lbl_stories".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterBold24
                                                              .copyWith())),
                                                  Align(
                                                      alignment: Alignment
                                                          .center,
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  114.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  384.00),
                                                          child: Obx(() =>
                                                              ListView.builder(
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              16,
                                                                          top:
                                                                              27,
                                                                          right:
                                                                              14),
                                                                  scrollDirection:
                                                                      Axis
                                                                          .horizontal,
                                                                  physics:
                                                                      BouncingScrollPhysics(),
                                                                  itemCount: controller
                                                                      .storiesAndTweetsModelObj
                                                                      .value
                                                                      .listellipsetwentytwoItemList
                                                                      .length,
                                                                  itemBuilder:
                                                                      (context,
                                                                          index) {
                                                                    ListellipsetwentytwoItemModel
                                                                        model =
                                                                        controller
                                                                            .storiesAndTweetsModelObj
                                                                            .value
                                                                            .listellipsetwentytwoItemList[index];
                                                                    return ListellipsetwentytwoItemWidget(
                                                                        model);
                                                                  })))),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 24),
                                                      child: Obx(() =>
                                                          ListView.separated(
                                                              physics:
                                                                  BouncingScrollPhysics(),
                                                              shrinkWrap: true,
                                                              separatorBuilder:
                                                                  (context,
                                                                      index) {
                                                                return Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            2.00),
                                                                    width: size
                                                                        .width,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                            color:
                                                                                ColorConstant.deepPurple50));
                                                              },
                                                              itemCount: controller
                                                                  .storiesAndTweetsModelObj
                                                                  .value
                                                                  .listellipsetwelveItemList
                                                                  .length,
                                                              itemBuilder:
                                                                  (context,
                                                                      index) {
                                                                ListellipsetwelveItemModel
                                                                    model =
                                                                    controller
                                                                        .storiesAndTweetsModelObj
                                                                        .value
                                                                        .listellipsetwelveItemList[index];
                                                                return ListellipsetwelveItemWidget(
                                                                    model);
                                                              })))
                                                ])))
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
                                                  svgPath:
                                                      ImageConstant.imgHome,
                                                  height:
                                                      getVerticalSize(23.00),
                                                  width: getHorizontalSize(
                                                      22.00)))),
                                      Padding(
                                          padding: getPadding(top: 12),
                                          child: Text("lbl_home".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtInterRegular10DeeppurpleA200
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
                                              svgPath:
                                                  ImageConstant.imgLocation,
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
                                                      .txtInterRegular10
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

  onTapBtntf() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
//TODO: Permission - use imageList for using selected images
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }
}
