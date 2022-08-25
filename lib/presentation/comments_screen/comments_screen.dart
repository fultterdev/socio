import '../comments_screen/widgets/comments_item_widget.dart';
import 'controller/comments_controller.dart';
import 'models/comments_item_model.dart';
import 'package:flutter/material.dart';
import 'package:socio3/core/app_export.dart';
import 'package:socio3/widgets/custom_floating_button.dart';
import 'package:socio3/widgets/custom_text_form_field.dart';

class CommentsScreen extends GetWidget<CommentsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              height: getVerticalSize(
                852.00,
              ),
              width: size.width,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      decoration: AppDecoration.fillWhiteA700,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 19,
                              top: 16,
                              right: 19,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgClose,
                              height: getSize(
                                18.00,
                              ),
                              width: getSize(
                                18.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 16,
                              top: 41,
                              right: 16,
                            ),
                            child: Text(
                              "lbl_comments".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold32DeeppurpleA200
                                  .copyWith(
                                height: 1.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 24,
                            ),
                            child: Obx(
                              () => ListView.separated(
                                physics: BouncingScrollPhysics(),
                                shrinkWrap: true,
                                separatorBuilder: (context, index) {
                                  return Container(
                                    height: getVerticalSize(
                                      2.00,
                                    ),
                                    width: size.width,
                                    decoration: BoxDecoration(
                                      color: ColorConstant.deepPurple50,
                                    ),
                                  );
                                },
                                itemCount: controller.commentsModelObj.value
                                    .commentsItemList.length,
                                itemBuilder: (context, index) {
                                  CommentsItemModel model = controller
                                      .commentsModelObj
                                      .value
                                      .commentsItemList[index];
                                  return CommentsItemWidget(
                                    model,
                                  );
                                },
                              ),
                            ),
                          ),
                          CustomTextFormField(
                            width: 316,
                            focusNode: FocusNode(),
                            controller: controller.frameThirtySixController2,
                            hintText: "lbl_write_a_comment".tr,
                            margin: getMargin(
                              left: 16,
                              top: 41,
                              right: 16,
                              bottom: 39,
                            ),
                            variant: TextFormFieldVariant.FillGray100,
                            fontStyle:
                                TextFormFieldFontStyle.InterMedium14Gray501,
                            textInputAction: TextInputAction.done,
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomFloatingButton(
                    height: 50,
                    width: 50,
                    margin: getMargin(
                      left: 16,
                      top: 20,
                      right: 16,
                      bottom: 20,
                    ),
                    alignment: Alignment.bottomRight,
                    child: CommonImageView(
                      svgPath: ImageConstant.imgSend,
                      height: getVerticalSize(
                        25.00,
                      ),
                      width: getHorizontalSize(
                        25.00,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}