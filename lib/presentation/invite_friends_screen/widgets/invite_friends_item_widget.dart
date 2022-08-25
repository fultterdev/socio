import '../controller/invite_friends_controller.dart';
import '../models/invite_friends_item_model.dart';
import 'package:flutter/material.dart';
import 'package:socio3/core/app_export.dart';
import 'package:socio3/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class InviteFriendsItemWidget extends StatelessWidget {
  InviteFriendsItemWidget(this.inviteFriendsItemModelObj);

  InviteFriendsItemModel inviteFriendsItemModelObj;

  var controller = Get.find<InviteFriendsController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        right: 34,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    25.00,
                  ),
                ),
                child: CommonImageView(
                  imagePath: ImageConstant.imgEllipse5,
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
                  left: 24,
                  top: 4,
                  bottom: 1,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(
                        right: 10,
                      ),
                      child: Text(
                        "lbl_kevin_allsrub".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterSemiBold20Black901.copyWith(),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 9,
                      ),
                      child: Text(
                        "msg_your_e_friends".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterRegular14Gray600.copyWith(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          CustomIconButton(
            height: 24,
            width: 24,
            margin: getMargin(
              left: 126,
              top: 13,
              bottom: 13,
            ),
            shape: IconButtonShape.RoundedBorder7,
            padding: IconButtonPadding.PaddingAll6,
            child: CommonImageView(
              svgPath: ImageConstant.imgVectorWhiteA70024X24,
            ),
          ),
        ],
      ),
    );
  }
}
