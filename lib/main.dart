// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:menu_float/menu_float.dart';
import 'package:menu_float_demo/__mock__/menu_float.mock.dart';
import 'package:menu_float_demo/menu_float_app.dart';

void main() {
  runApp(const MenuFloatDemo());
}

final menusOptions = productMock.map<MenuFloatOption<Product>>((e) {
  return MenuFloatOption<Product>(
      label: e.name,
      value: e,
      onClick: (Product v) {
        print(v.name);
      });
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
      home: const MenuFloatAppTestPage(target: ),
    );
  }
}

// class MenuFloatDemoPage extends StatefulWidget {
//   const MenuFloatDemoPage({Key? key, required this.title}) : super(key: key);
//   final String title;

//   @override
//   State<MenuFloatDemoPage> createState() => _MenuFloatDemoPageState();
// }

// class _MenuFloatDemoPageState extends State<MenuFloatDemoPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: null,
//         body: Container(
//             alignment: Alignment.center,
//             child: Column(
//               mainAxisSize: MainAxisSize.max,
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 MenuFloat<Product>(
//                   title: 'Hello menu float',
//                   items: menusOptions,
//                   child: const Text('Click me'),
//                 ),
//                 MenuFloat<Product>(
//                   title: 'Hello menu float top',
//                   top: true,
//                   items: menusOptions,
//                   child: const Text('Click me'),
//                 ),
//                 MenuFloat<Product>(
//                   title: 'Hello menu float Left',
//                   left: true,
//                   items: menusOptions,
//                   child: const Text('Click me'),
//                 ),
//                 MenuFloat(
//                   title: 'Hello menu float Right',
//                   right: true,
//                   items: menusOptions,
//                   child: const Text('Click me'),
//                 )
//               ],
//             )));
//   }
// }
