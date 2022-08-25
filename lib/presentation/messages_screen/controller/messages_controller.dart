import '/core/app_export.dart';
import 'package:socio3/presentation/messages_screen/models/messages_model.dart';

class MessagesController extends GetxController {
  Rx<MessagesModel> messagesModelObj = MessagesModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
