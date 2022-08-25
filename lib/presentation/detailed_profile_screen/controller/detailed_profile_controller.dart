import '/core/app_export.dart';
import 'package:socio3/presentation/detailed_profile_screen/models/detailed_profile_model.dart';

class DetailedProfileController extends GetxController {
  Rx<DetailedProfileModel> detailedProfileModelObj = DetailedProfileModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
