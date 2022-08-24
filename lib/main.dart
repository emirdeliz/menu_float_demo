// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:menu_float/menu_float.dart';
import 'package:menu_float_demo/__mock__/menu_float.mock.dart';
import 'package:menu_float_demo/menu_float_app.dart';

const String TITLE_WIDGET_TARGET = 'Click me';
const String TITLE_OPTION_MENU = 'Telefone';
const double LANDSCAPE_WIDTH = 1024;
const double LANDSCAPE_HEIGHT = 769;

void main() {
  runApp(const MenuFloatDemo());
}

Widget makeTargetButton() {
  return ElevatedButton(
      onPressed: () => {}, child: const Text(TITLE_WIDGET_TARGET));
}

final target = makeTargetButton();

class MenuFloatDemo extends StatelessWidget {
  const MenuFloatDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MenuFloatAppTest(target: target, x: 0, y: 0),
    );
  }
}
