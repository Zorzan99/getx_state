import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TiposReativosPage extends StatelessWidget {
  TiposReativosPage({Key? key}) : super(key: key);
  final nome = RxString('Gabriel Zorzan');
  final isWorker = RxBool(true);
  final qtdHoras = RxInt(24);
  final valorSalario = RxDouble(3000.45);
  final diasTrabalhados = RxList(['Segunda', 'Terça']);
  final trabalhador = RxMap({
    'id': 1999,
    'nome': 'Gabriel Zorzan',
    'categoria': 'Programador',
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tipos Reativos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              debugPrint('Montando id do trabalhador');
              return Text(
                'Id do trabalhador: ${trabalhador['id']}',
              );
            }),
            Obx(() {
              debugPrint('Montando nome do trabalhador');
              return Text(
                'nome do trabalhador: ${trabalhador['nome']}',
              );
            }),
            Obx(
              () => Column(
                children: diasTrabalhados.map(Text.new).toList(),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                trabalhador['id'] = 10;
              },
              child: const Text('Alterar ID do trabalhador'),
            ),
            ElevatedButton(
              onPressed: () {
                diasTrabalhados.add('Quarta');
              },
              child: const Text('Adicionar dias trabalhados'),
            ),
          ],
        ),
      ),
    );
  }
}
