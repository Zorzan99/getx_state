import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalStateWidgetPage extends StatelessWidget {
  const LocalStateWidgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LocalStateWidgetPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ValueBuilder<bool?>(
              initialValue: true,
              builder: (obscureValue, updater) {
                return TextFormField(
                  obscureText: obscureValue!,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        updater(!obscureValue);
                      },
                      icon: const Icon(
                        Icons.remove_red_eye_outlined,
                      ),
                    ),
                  ),
                );
              },
              onUpdate: (p0) {
                print('Aleterado para $p0');
              },
              onDispose: () {
                print('Removido da arvore de widget');
              },
            ),
            ObxValue<RxBool>((obscureData) {
              return TextFormField(
                obscureText: obscureData.value,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      obscureData.toggle();
                    },
                    icon: const Icon(
                      Icons.remove_red_eye_outlined,
                    ),
                  ),
                ),
              );
            }, true.obs),
          ],
        ),
      ),
    );
  }
}
