import 'package:get/get.dart';

class Controller extends GetxController {
  final nome = 'Gabriel Zorzan'.obs;
  @override
  void onInit() {
    print('OnInit');
    super.onInit();
  }

  @override
  void onReady() {
    print('OnRead');
    super.onReady();
  }

  @override
  void onClose() {
    print('onClose');
    super.onClose();
  }

  void alterarDados() {
    nome('Bielzin');
  }
}
