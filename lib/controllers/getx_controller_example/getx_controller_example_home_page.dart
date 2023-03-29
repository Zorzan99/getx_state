import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_state_manager/controllers/getx_controller_example/controller.dart';

class GetxControllerExampleHomePage extends StatefulWidget {
  const GetxControllerExampleHomePage({Key? key}) : super(key: key);

  @override
  State<GetxControllerExampleHomePage> createState() =>
      _GetxControllerExampleHomePageState();
}

class _GetxControllerExampleHomePageState
    extends State<GetxControllerExampleHomePage> {
  @override
  void dispose() {
    print('print dispose do GetxControllerExampleHomePage');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('Build GetxControllerExampleHomePage');
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Controller'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return Text(
                Get.find<Controller>().nome.value,
              );
            }),
            ElevatedButton(
              onPressed: () {
                Get.find<Controller>().alterarDados();
              },
              child: const Text('Alterar nome'),
            ),
          ],
        ),
      ),
    );
  }
}
