import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_state_manager/tipos/model/model_aluno.dart';

class TiposObsPage extends StatelessWidget {
  TiposObsPage({Key? key}) : super(key: key);
  final nome = 'Gabriel Zorzan'.obs;
  final isWorker = true.obs;
  final qtdHoras = 2.obs;
  final valorSalario = 3000.45.obs;
  final diasTrabalhados = ['Segunda', 'Terça'].obs;
  final trabalhador = <String, dynamic>{
    'id': 1999,
    'nome': 'Gabriel Zorzan',
    'categoria': 'Programador',
  }.obs;
  final alunoModel = Aluno(
    id: 1999,
    nome: 'Gabriel Zorzan',
    curso: 'Alura',
    email: 'gabriel_zds@hotmail.com',
  ).obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tipos Obs'),
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
            Obx(() {
              debugPrint('Montando id do alunoModel');
              return Text(
                'Id do trabalhador: ${alunoModel.value.id}',
              );
            }),
            Obx(() {
              debugPrint('Montando nome do aluno model');
              return Text(
                'nome do aluno model: ${alunoModel.value.nome}',
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
                trabalhador.refresh();
              },
              child: const Text('Alterar ID do trabalhador'),
            ),
            ElevatedButton(
              onPressed: () {
                diasTrabalhados.assign('Quarta');
              },
              child: const Text('Adicionar dias trabalhados'),
            ),
            ElevatedButton(
              onPressed: () {
                alunoModel.value = Aluno(
                  id: 10,
                  nome: 'João Gabriel',
                  curso: 'Qualquer um',
                  email: '@hotmail.com',
                );
                trabalhador.refresh();
              },
              child: const Text('Alterar alunoModel '),
            ),
          ],
        ),
      ),
    );
  }
}
