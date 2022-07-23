import 'package:get/get.dart';

class ControllerHomepage extends GetxController {
  String saldo = 'R\$ 873.244,00';
  bool eyesValue = true;
  String creditValue = 'R\$ 56.244,00';

  void showValue() {
    eyesValue = !eyesValue;

    update();
  }
}
