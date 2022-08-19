import 'package:flutter/material.dart';
import 'package:menu_float/menu_float.dart';
import 'package:menu_float_demo/__mock__/menu_float.mock.dart';

void main() {
  runApp(const MenuFloatDemo());
}

final menusOptions = productMock.map<MenuFloatOption<Product>>((e) {
  return MenuFloatOption<Product>(label: e.name, value: e);
}).toList();

class MenuFloatDemo extends StatelessWidget {
  const MenuFloatDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MenuFloatDemoPage(title: 'Menu Float Demo Page'),
    );
  }
}

class MenuFloatDemoPage extends StatefulWidget {
  const MenuFloatDemoPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MenuFloatDemoPage> createState() => _MenuFloatDemoPageState();
}

class _MenuFloatDemoPageState extends State<MenuFloatDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null,
        body: Flex(
          direction: Axis.vertical,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MenuFloat<Product>(
              title: 'Hello menu float',
              items: menusOptions,
              child: const Text('Click me'),
            ),
            MenuFloat<Product>(
              title: 'Hello menu float top',
              top: true,
              items: menusOptions,
              child: const Text('Click me'),
            ),
            MenuFloat<Product>(
              title: 'Hello menu float Left',
              left: true,
              items: menusOptions,
              child: const Text('Click me'),
            ),
            MenuFloat(
              title: 'Hello menu float Right',
              right: true,
              items: menusOptions,
              child: const Text('Click me'),
            )
          ],
        ));
  }
}
