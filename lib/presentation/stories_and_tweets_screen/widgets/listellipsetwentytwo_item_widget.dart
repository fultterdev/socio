import '../controller/stories_and_tweets_controller.dart';
import '../models/listellipsetwentytwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:socio3/core/app_export.dart';

// ignore: must_be_immutable
class ListellipsetwentytwoItemWidget extends StatelessWidget {
  ListellipsetwentytwoItemWidget(this.listellipsetwentytwoItemModelObj);

  ListellipsetwentytwoItemModel listellipsetwentytwoItemModelObj;

  var controller = Get.find<StoriesAndTweetsController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.center,
        child: Container(
          margin: getMargin(
            left: 80,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: getSize(
                    64.00,
                  ),
                  width: getSize(
                    64.00,
                  ),
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    margin: EdgeInsets.all(0),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: ColorConstant.deepPurpleA200,
                        width: getHorizontalSize(
                          2.00,
                        ),
                      ),
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          32.00,
                        ),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              left: 6,
                              top: 5,
                              right: 6,
                              bottom: 5,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  27.00,
                                ),
                              ),
                              child: CommonImageView(
                                imagePath: ImageConstant.imgEllipse22,
                                height: getVerticalSize(
                                  54.00,
                                ),
                                width: getHorizontalSize(
                                  52.00,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 12,
                  top: 11,
                  right: 12,
                ),
                child: Text(
                  "lbl_jordan".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterMedium12.copyWith(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
