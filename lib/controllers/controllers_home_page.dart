import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllersHomePage extends StatelessWidget {
  const ControllersHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Controllers Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/controllers/getxcontroller');
                },
                child: const Text('GetxControllers'))
          ],
        ),
      ),
    );
  }
}
