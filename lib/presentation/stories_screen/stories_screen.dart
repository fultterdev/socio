import '../stories_screen/widgets/listellipsefifteen3_item_widget.dart';
import '../stories_screen/widgets/listnineteen1_item_widget.dart';
import 'controller/stories_controller.dart';
import 'models/listellipsefifteen3_item_model.dart';
import 'models/listnineteen1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:socio3/core/app_export.dart';
import 'package:socio3/widgets/custom_icon_button.dart';
import 'package:socio3/widgets/custom_search_view.dart';

class StoriesScreen extends GetWidget<StoriesController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Column(
          children: [
            Expanded(
              child: Container(
                width: size.width,
                child: SingleChildScrollView(
                  child: Container(
                    margin: getMargin(
                      top: 5,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: getMargin(
                              left: 16,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: size.width,
                                  margin: getMargin(
                                    right: 10,
                                  ),
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
                                        controller:
                                            controller.group9020Controller,
                                        hintText: "lbl_search".tr,
                                        suffix: Padding(
                                          padding: EdgeInsets.only(
                                            right: getHorizontalSize(
                                              15.00,
                                            ),
                                          ),
                                          child: IconButton(
                                            onPressed: controller
                                                .group9020Controller.clear,
                                            icon: Icon(
                                              Icons.clear,
                                              color: Colors.grey.shade600,
                                            ),
                                          ),
                                        ),
                                        suffixConstraints: BoxConstraints(
                                          minWidth: getHorizontalSize(
                                            18.00,
                                          ),
                                          minHeight: getVerticalSize(
                                            18.00,
                                          ),
                                        ),
                                      ),
                                      CustomIconButton(
                                        height: 40,
                                        width: 40,
                                        child: CommonImageView(
                                          svgPath: ImageConstant.imgGrid,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 30,
                                    right: 10,
                                  ),
                                  child: Text(
                                    "lbl_stories".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold24.copyWith(),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    height: getVerticalSize(
                                      114.00,
                                    ),
                                    width: getHorizontalSize(
                                      384.00,
                                    ),
                                    child: Obx(
                                      () => ListView.builder(
                                        padding: getPadding(
                                          top: 27,
                                          right: 14,
                                        ),
                                        scrollDirection: Axis.horizontal,
                                        physics: BouncingScrollPhysics(),
                                        itemCount: controller
                                            .storiesModelObj
                                            .value
                                            .listellipsefifteen3ItemList
                                            .length,
                                        itemBuilder: (context, index) {
                                          Listellipsefifteen3ItemModel model =
                                              controller.storiesModelObj.value
                                                      .listellipsefifteen3ItemList[
                                                  index];
                                          return Listellipsefifteen3ItemWidget(
                                            model,
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  margin: getMargin(
                                    top: 24,
                                    right: 10,
                                  ),
                                  decoration:
                                      AppDecoration.outlineBlack90019.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder15,
                                  ),
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
                                            left: 16,
                                            top: 24,
                                            right: 16,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      getHorizontalSize(
                                                        25.00,
                                                      ),
                                                    ),
                                                    child: CommonImageView(
                                                      imagePath: ImageConstant
                                                          .imgEllipse21,
                                                      height: getSize(
                                                        50.00,
                                                      ),
                                                      width: getSize(
                                                        50.00,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: getMargin(
                                                      left: 16,
                                                      top: 10,
                                                      bottom: 6,
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "lbl_rizal_reynaldhi"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterMedium18
                                                              .copyWith(),
                                                        ),
                                                        Padding(
                                                          padding: getPadding(
                                                            top: 3,
                                                            right: 10,
                                                          ),
                                                          child: Text(
                                                            "lbl_35_minutes_ago"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterMedium10
                                                                .copyWith(),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 22,
                                                  bottom: 22,
                                                ),
                                                child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgGroup8916,
                                                  height: getVerticalSize(
                                                    6.00,
                                                  ),
                                                  width: getHorizontalSize(
                                                    30.00,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: getHorizontalSize(
                                          334.00,
                                        ),
                                        margin: getMargin(
                                          left: 16,
                                          top: 24,
                                          right: 16,
                                        ),
                                        child: Text(
                                          "msg_most_people_nev".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterRegular16
                                              .copyWith(),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding: getPadding(
                                            left: 16,
                                            top: 24,
                                            right: 16,
                                            bottom: 21,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: getPadding(
                                                  top: 4,
                                                  bottom: 3,
                                                ),
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Padding(
                                                      padding: getPadding(
                                                        top: 1,
                                                      ),
                                                      child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgLightbulb,
                                                        height: getVerticalSize(
                                                          17.00,
                                                        ),
                                                        width:
                                                            getHorizontalSize(
                                                          19.00,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        left: 8,
                                                        top: 4,
                                                        bottom: 1,
                                                      ),
                                                      child: Text(
                                                        "lbl_2200".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterRegular12
                                                            .copyWith(),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        left: 29,
                                                      ),
                                                      child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgUser,
                                                        height: getVerticalSize(
                                                          18.00,
                                                        ),
                                                        width:
                                                            getHorizontalSize(
                                                          19.00,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        left: 8,
                                                        top: 5,
                                                        bottom: 1,
                                                      ),
                                                      child: Text(
                                                        "lbl_800".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterRegular12
                                                            .copyWith(),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                height: getVerticalSize(
                                                  25.00,
                                                ),
                                                width: getHorizontalSize(
                                                  54.00,
                                                ),
                                                child: Stack(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Padding(
                                                        padding: getPadding(
                                                          right: 10,
                                                        ),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            getHorizontalSize(
                                                              12.50,
                                                            ),
                                                          ),
                                                          child:
                                                              CommonImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgEllipse30,
                                                            height: getSize(
                                                              25.00,
                                                            ),
                                                            width: getSize(
                                                              25.00,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                        padding: getPadding(
                                                          left: 13,
                                                          right: 13,
                                                        ),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            getHorizontalSize(
                                                              12.50,
                                                            ),
                                                          ),
                                                          child:
                                                              CommonImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgEllipse31,
                                                            height: getSize(
                                                              25.00,
                                                            ),
                                                            width: getSize(
                                                              25.00,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                        padding: getPadding(
                                                          left: 10,
                                                        ),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            getHorizontalSize(
                                                              12.50,
                                                            ),
                                                          ),
                                                          child:
                                                              CommonImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgEllipse32,
                                                            height: getSize(
                                                              25.00,
                                                            ),
                                                            width: getSize(
                                                              25.00,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 25,
                                    right: 10,
                                  ),
                                  child: Text(
                                    "lbl_events".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold32DeeppurpleA200
                                        .copyWith(
                                      height: 1.00,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    height: getVerticalSize(
                                      216.00,
                                    ),
                                    width: getHorizontalSize(
                                      473.00,
                                    ),
                                    child: Obx(
                                      () => ListView.builder(
                                        padding: getPadding(
                                          top: 16,
                                        ),
                                        scrollDirection: Axis.horizontal,
                                        physics: BouncingScrollPhysics(),
                                        itemCount: controller.storiesModelObj
                                            .value.listnineteen1ItemList.length,
                                        itemBuilder: (context, index) {
                                          Listnineteen1ItemModel model =
                                              controller.storiesModelObj.value
                                                  .listnineteen1ItemList[index];
                                          return Listnineteen1ItemWidget(
                                            model,
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: ColorConstant.whiteA700,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    getHorizontalSize(
                      12.00,
                    ),
                  ),
                  topRight: Radius.circular(
                    getHorizontalSize(
                      12.00,
                    ),
                  ),
                ),
                boxShadow: [
                  BoxShadow(
                    color: ColorConstant.deepPurpleA20033,
                    spreadRadius: getHorizontalSize(
                      2.00,
                    ),
                    blurRadius: getHorizontalSize(
                      2.00,
                    ),
                    offset: Offset(
                      0,
                      -3,
                    ),
                  ),
                ],
              ),
              child: Padding(
                padding: getPadding(
                  top: 15,
                  bottom: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      margin: getMargin(
                        top: 3,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                left: 3,
                                right: 3,
                              ),
                              child: CommonImageView(
                                svgPath: ImageConstant.imgHome,
                                height: getVerticalSize(
                                  23.00,
                                ),
                                width: getHorizontalSize(
                                  22.00,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 12,
                            ),
                            child: Text(
                              "lbl_home".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular10DeeppurpleA200
                                  .copyWith(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        top: 5,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 7,
                              right: 6,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgVideocamera18X25,
                              height: getVerticalSize(
                                18.00,
                              ),
                              width: getHorizontalSize(
                                25.00,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: getPadding(
                                top: 13,
                              ),
                              child: Text(
                                "lbl_streams".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterRegular10.copyWith(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        top: 4,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 13,
                              right: 13,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgLocation,
                              height: getSize(
                                22.00,
                              ),
                              width: getSize(
                                22.00,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: getPadding(
                                top: 12,
                              ),
                              child: Text(
                                "lbl_messages".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterRegular10.copyWith(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        top: 3,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 20,
                              right: 20,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgNotification,
                              height: getVerticalSize(
                                25.00,
                              ),
                              width: getHorizontalSize(
                                19.00,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: getPadding(
                                top: 9,
                              ),
                              child: Text(
                                "lbl_notifications".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterRegular10.copyWith(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                left: 4,
                                top: 2,
                                right: 4,
                              ),
                              child: CommonImageView(
                                svgPath: ImageConstant.imgUser25X21,
                                height: getVerticalSize(
                                  25.00,
                                ),
                                width: getHorizontalSize(
                                  21.00,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 10,
                            ),
                            child: Text(
                              "lbl_profile".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular10.copyWith(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
