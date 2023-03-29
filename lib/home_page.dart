import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Get.toNamed('/basicoReatividade');
              },
              child: const Text(
                'Básico reatividade',
              ),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed('/tiposReativos');
              },
              child: const Text(
                'Tipos Reativos',
              ),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed('/tiposReativosGenericos');
              },
              child: const Text(
                'Tipos Genericos Reativos',
              ),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed('/tiposGenericoNulo');
              },
              child: const Text(
                'Tipos Genericos Nulos',
              ),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed('/tiposObsPage');
              },
              child: const Text(
                'Tipos tiposObs',
              ),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed('/atualizacaoObjetos');
              },
              child: const Text(
                'Atualização de objetos',
              ),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed('/controllers');
              },
              child: const Text(
                'Controllers',
              ),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed('/localstate');
              },
              child: const Text(
                'Local State Widget',
              ),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed('/workerspage');
              },
              child: const Text(
                'Workers Page',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
