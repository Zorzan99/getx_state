import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_state_manager/tipos/model/model_aluno.dart';

class TiposGenericosNulo extends StatelessWidget {
  TiposGenericosNulo({Key? key}) : super(key: key);
  final nome = Rxn<String>('Gabriel Zorzan');
  final isWorker = Rxn<bool>(true);
  final qtdHoras = Rxn<int>(24);
  final valorSalario = Rxn<double>(3000.45);
  final diasTrabalhados = Rxn<List<String>>(['Segunda', 'Terça']);
  final trabalhador = Rxn<Map<String, dynamic>>({
    'id': 1999,
    'nome': 'Gabriel Zorzan',
    'categoria': 'Programador',
  });
  final alunoModel = Rxn<Aluno>(Aluno(
    id: 1999,
    nome: 'Gabriel Zorzan',
    curso: 'Alura',
    email: 'gabriel_zds@hotmail.com',
  ));

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
                'Id do trabalhador: ${trabalhador.value?['id']}',
              );
            }),
            Obx(() {
              debugPrint('Montando nome do trabalhador');
              return Text(
                'nome do trabalhador: ${trabalhador.value?['nome']}',
              );
            }),
            Obx(() {
              debugPrint('Montando id do alunoModel');
              return Text(
                'Id do trabalhador: ${alunoModel.value?.id}',
              );
            }),
            Obx(() {
              debugPrint('Montando nome do aluno model');
              return Text(
                'nome do aluno model: ${alunoModel.value?.nome}',
              );
            }),
            Obx(
              () => Column(
                children: diasTrabalhados.value?.map(Text.new).toList() ?? [],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                trabalhador.value?['id'] = 10;
                trabalhador.refresh();
              },
              child: const Text('Alterar ID do trabalhador'),
            ),
            ElevatedButton(
              onPressed: () {
                //    diasTrabalhados.add('Quarta');
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
