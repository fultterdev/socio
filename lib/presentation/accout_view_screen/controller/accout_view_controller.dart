import '/core/app_export.dart';
import 'package:socio3/presentation/accout_view_screen/models/accout_view_model.dart';

class AccoutViewController extends GetxController {
  Rx<AccoutViewModel> accoutViewModelObj = AccoutViewModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
