import 'package:get/get.dart';

class WorkersController extends GetxController {
  final _workers = <Worker>[];
  final _nome = 'Gabriel Zorzan'.obs;

  String get nome => _nome.value;

  @override
  void onInit() {
    final everWorker = ever(
      _nome,
      (nome) {
        print('Executando o work ever');
        print(nome);
      },
      cancelOnError: true,
      condition: () => _nome.value == 'Gabriel Zorzan',
    );
    _workers.add(everWorker);

    super.onInit();
  }

  @override
  void onClose() {
    for (var worker in _workers) {
      worker();
    }
    super.onClose();
  }

  void alterarNome(String value) {
    _nome(value);
  }
}
