import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_state_manager/atualizacao/usuario_model.dart';

class AtualizacaoObjetosPage extends StatelessWidget {
  final usuarioModel = UsuarioModel(
          id: 1, nome: 'Gabriel Zorzan', email: 'gabriel_zds@hotmail.com')
      .obs;
  AtualizacaoObjetosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Atualizacao de objetos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return Text(
                usuarioModel.value.id.toString(),
              );
            }),
            Obx(() {
              return Text(
                usuarioModel.value.nome,
              );
            }),
            Obx(() {
              return Text(
                usuarioModel.value.email,
              );
            }),
            ElevatedButton(
              onPressed: () {
                usuarioModel.value.nome = 'Biel';
                usuarioModel.refresh();
              },
              child: const Text('Atualizando com refresh'),
            ),
            ElevatedButton(
              onPressed: () {
                usuarioModel.update((usuario) {
                  usuario?.nome = 'Bielzin';
                });
              },
              child: const Text('Atualizando com update'),
            ),
          ],
        ),
      ),
    );
  }
}
