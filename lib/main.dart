// ignore_for_file: avoid_print, constant_identifier_names

import 'package:flutter/material.dart';
import 'package:menu_float_demo/menu_float_app.dart';

const String titleWidgetTarget = 'Click me';
// const String titleOptionMenu = 'Telefone';
const double landscapeWidth = 1024;
const double landscapeHeight = 769;

void main() {
  runApp(const MenuFloatDemo());
}

Widget makeTargetButton() {
  return ElevatedButton(
      onPressed: () => {}, child: const Text(titleWidgetTarget));
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
        home: Container(
          decoration:
              BoxDecoration(border: Border.all(color: Colors.red, width: 3)),
          child: Stack(
            children: [
              // y: 0
              MenuFloatAppTest(target: target, x: 0, y: 0),
              MenuFloatAppTest(target: target, x: 500, y: 0),
              MenuFloatAppTest(target: target, x: 930, y: 0),
              // y: 400
              MenuFloatAppTest(target: target, x: 0, y: 400),
              MenuFloatAppTest(target: target, x: 500, y: 400),
              MenuFloatAppTest(target: target, x: 930, y: 400),
              // y: 730
              MenuFloatAppTest(target: target, x: 0, y: 730),
              MenuFloatAppTest(target: target, x: 500, y: 730),
              MenuFloatAppTest(target: target, x: 930, y: 730),
            ],
          ),
        ));
  }
}
