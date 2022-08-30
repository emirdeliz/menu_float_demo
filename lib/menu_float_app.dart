// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:menu_float/menu_float.dart';

import '__mock__/menu_float.mock.dart';

final menusOptions = productMock.map<MenuFloatOption<Product>>((e) {
  return MenuFloatOption<Product>(
      label: Text(e.name),
      value: e,
      onClick: (Product v) {
        print(v.name);
      });
}).toList();

class MenuFloatAppTest extends StatelessWidget {
  final Widget trigger;
  final bool top;
  final bool left;
  final bool right;
  final double x;
  final double y;

  const MenuFloatAppTest({
    Key? key,
    required this.trigger,
    this.top = false,
    this.left = false,
    this.right = false,
    required this.x,
    required this.y,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MenuFloatAppTestPage(
        trigger: trigger, x: x, y: y, top: top, left: left, right: right);
  }
}

class MenuFloatAppTestPage extends StatefulWidget {
  final bool top;
  final bool left;
  final bool right;
  final double x;
  final double y;
  final Widget trigger;

  const MenuFloatAppTestPage(
      {Key? key,
      required this.trigger,
      required this.x,
      required this.y,
      this.top = false,
      this.left = false,
      this.right = false})
      : super(key: key);

  @override
  State<MenuFloatAppTestPage> createState() => _MenuFloatAppTestPageState();
}

class _MenuFloatAppTestPageState extends State<MenuFloatAppTestPage> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: widget.x,
      top: widget.y,
      child: Container(
          alignment: Alignment.center,
          child: MenuFloat<Product>(
            title: 'Hello menu float',
            items: menusOptions,
            top: widget.top,
            left: widget.left,
            right: widget.right,
            child: widget.trigger,
          )),
    );
  }
}
