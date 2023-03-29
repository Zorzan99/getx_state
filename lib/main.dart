import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_state_manager/atualizacao/atualizacao_objetos_page.dart';
import 'package:get_state_manager/basico/reatividade_page.dart';
import 'package:get_state_manager/controllers/controllers_home_page.dart';
import 'package:get_state_manager/controllers/getx_controller_example/controller.dart';
import 'package:get_state_manager/controllers/getx_controller_example/getx_controller_example_home_page.dart';
import 'package:get_state_manager/home_page.dart';
import 'package:get_state_manager/local_state_widget/local_state_widget_page.dart';
import 'package:get_state_manager/tipos/tipos_obs_page.dart';
import 'package:get_state_manager/tipos/tipos_reativos_genericos_nulos_page.dart';
import 'package:get_state_manager/tipos/tipos_reativos_genericos_page%20.dart';
import 'package:get_state_manager/tipos/tipos_reativos_page.dart';
import 'package:get_state_manager/workers/workers_controller.dart';
import 'package:get_state_manager/workers/workers_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(
          name: '/',
          page: () => const HomePage(),
        ),
        GetPage(
          name: '/basicoReatividade',
          page: () => ReatividadePage(),
        ),
        GetPage(
          name: '/tiposReativos',
          page: () => TiposReativosPage(),
        ),
        GetPage(
          name: '/tiposReativosGenericos',
          page: () => TiposReativosGenericosPage(),
        ),
        GetPage(
          name: '/tiposGenericoNulo',
          page: () => TiposGenericosNulo(),
        ),
        GetPage(
          name: '/tiposObsPage',
          page: () => TiposObsPage(),
        ),
        GetPage(
          name: '/atualizacaoObjetos',
          page: () => AtualizacaoObjetosPage(),
        ),
        GetPage(
          name: '/controllers',
          page: () => const ControllersHomePage(),
          children: [
            GetPage(
              name: '/getxcontroller',
              binding: BindingsBuilder.put(
                () => Controller(),
              ),
              page: () => const GetxControllerExampleHomePage(),
            ),
          ],
        ),
        GetPage(
          name: '/localstate',
          page: () => const LocalStateWidgetPage(),
        ),
        GetPage(
          name: '/workerspage',
          binding: BindingsBuilder.put(() => WorkersController()),
          page: () => const WorkersPage(),
        ),
      ],
    );
  }
}
