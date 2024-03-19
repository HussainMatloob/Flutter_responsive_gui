import 'package:flutter/material.dart';
import 'package:flutter_responsive_gui/helper/responsive.dart';
import 'package:get/get.dart';

import '../controller/menu_app_controller.dart';

class HeaderMenu extends StatelessWidget {
  HeaderMenu({Key? key}) : super(key: key); // Corrected constructor syntax

  final MenuAppController menuAppController = Get.put(MenuAppController());

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              menuAppController.controllerMenu();
            }, //context.read<MenuAppController>().con,
          ),
      ],
    );
  }
}
