import 'controller/detailed_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:socio3/core/app_export.dart';
import 'package:socio3/widgets/custom_icon_button.dart';

class DetailedProfileScreen extends GetWidget<DetailedProfileController> {
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
                      top: 17,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  width: size.width,
                                  margin: getMargin(
                                    left: 16,
                                    right: 16,
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
                                          bottom: 1,
                                        ),
                                        child: CommonImageView(
                                          svgPath: ImageConstant.imgArrowleft,
                                          height: getSize(
                                            15.00,
                                          ),
                                          width: getSize(
                                            15.00,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 1,
                                        ),
                                        child: Text(
                                          "lbl_done".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterSemiBold16
                                              .copyWith(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 16,
                                  top: 40,
                                  right: 16,
                                ),
                                child: Text(
                                  "lbl_profile".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterBold32DeeppurpleA200
                                      .copyWith(
                                    height: 1.00,
                                  ),
                                ),
                              ),
                              Container(
                                height: getVerticalSize(
                                  2.00,
                                ),
                                width: size.width,
                                margin: getMargin(
                                  top: 25,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.deepPurple50,
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: getVerticalSize(
                                    126.00,
                                  ),
                                  width: getHorizontalSize(
                                    124.00,
                                  ),
                                  margin: getMargin(
                                    left: 16,
                                    top: 30,
                                    right: 16,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Padding(
                                          padding: getPadding(
                                            right: 4,
                                            bottom: 10,
                                          ),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(
                                                60.00,
                                              ),
                                            ),
                                            child: CommonImageView(
                                              imagePath:
                                                  ImageConstant.imgEllipse14,
                                              height: getSize(
                                                120.00,
                                              ),
                                              width: getSize(
                                                120.00,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      CustomIconButton(
                                        height: 40,
                                        width: 40,
                                        margin: getMargin(
                                          left: 10,
                                          top: 10,
                                        ),
                                        alignment: Alignment.bottomRight,
                                        child: CommonImageView(
                                          svgPath: ImageConstant.imgEdit,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: getPadding(
                                    left: 16,
                                    top: 46,
                                    right: 16,
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
                                          top: 1,
                                        ),
                                        child: Text(
                                          "lbl_username".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterRegular18
                                              .copyWith(),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          "lbl_rosalia".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtInterRegular18Black901
                                              .copyWith(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: getPadding(
                                    left: 16,
                                    top: 33,
                                    right: 16,
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
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          "lbl_email".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterRegular18
                                              .copyWith(),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 1,
                                        ),
                                        child: Text(
                                          "msg_rosaliah_gmail".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtInterRegular18Black901
                                              .copyWith(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: getPadding(
                                    left: 16,
                                    top: 32,
                                    right: 16,
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
                                          top: 1,
                                        ),
                                        child: Text(
                                          "lbl_phone".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterRegular18
                                              .copyWith(),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          "msg_61_9999_999_99".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtInterRegular18Black901
                                              .copyWith(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: getVerticalSize(
                                  2.00,
                                ),
                                width: size.width,
                                margin: getMargin(
                                  top: 41,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.deepPurple50,
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: getPadding(
                                    left: 16,
                                    top: 32,
                                    right: 16,
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
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          "lbl_gender".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterRegular18
                                              .copyWith(),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 1,
                                        ),
                                        child: Text(
                                          "lbl_male".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtInterRegular18Black901
                                              .copyWith(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: getPadding(
                                    left: 16,
                                    top: 33,
                                    right: 16,
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
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          "lbl_date_of_birth2".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterRegular18
                                              .copyWith(),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 1,
                                        ),
                                        child: Text(
                                          "lbl_21_08_1992".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtInterRegular18Black901
                                              .copyWith(),
                                        ),
                                      ),
                                    ],
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
                                svgPath: ImageConstant.imgHome23X22,
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
                              style: AppStyle.txtInterRegular10.copyWith(),
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
                              svgPath: ImageConstant.imgNotification25X19,
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
                                style: AppStyle.txtInterRegular10DeeppurpleA200
                                    .copyWith(),
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
