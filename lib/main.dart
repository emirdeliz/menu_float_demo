// ignore_for_file: avoid_print, constant_identifier_names

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:menu_float_demo/menu_float_app.dart';

const String titleWidgetTrigger = 'Click me';
// const String titleOptionMenu = 'Telefone';
const double landscapeWidth = 1024;
const double landscapeHeight = 769;

void main() {
  runApp(const MenuFloatDemo());
}

Widget makeTriggerButton() {
  return ElevatedButton(
      onPressed: () => {}, child: const Text(titleWidgetTrigger));
}

final trigger = makeTriggerButton();

class MenuFloatDemo extends StatelessWidget {
  const MenuFloatDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: MouseRegion(
            onHover: (event) {
              final dx = event.localPosition.dx;
              final dy = event.localPosition.dy;
              print("dx $dx dy $dy");
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black87, width: 1)),
              child: Stack(
                children: [
                  // y: 0
                  MenuFloatAppTest(trigger: trigger, x: 0, y: 0),
                  MenuFloatAppTest(trigger: trigger, x: 500, y: 0),
                  MenuFloatAppTest(trigger: trigger, x: 930, y: 0),
                  // y: 400
                  MenuFloatAppTest(trigger: trigger, x: 0, y: 400),
                  MenuFloatAppTest(trigger: trigger, x: 500, y: 400),
                  MenuFloatAppTest(trigger: trigger, x: 930, y: 400),
                  // y: 730
                  MenuFloatAppTest(trigger: trigger, x: 0, y: 730),
                  MenuFloatAppTest(trigger: trigger, x: 500, y: 730),
                  MenuFloatAppTest(trigger: trigger, x: 930, y: 730),
                ],
              ),
            )));
  }
}
