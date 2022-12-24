import 'dart:ffi';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> bahasa = ['Java', 'Kotlin', 'Dart'];

  bool? selected1 = false;
  bool? selected2 = false;
  bool? selected3 = false;
  List<int> list = [];

  void onChanged(bool? value) {
    setState(() {
      selected1 = value;
    });
    if (value == true)
      list.add(0);
    else
      list.remove(0);
    print(list);
  }

  void onChanged2(bool? value) {
    setState(() {
      selected2 = value;
    });
    if (value == true) {
      list.add(1);
    } else {
      list.remove(1);
    }
    print(list);
  }

  void onChanged3(bool? value) {
    setState(() {
      selected3 = value;
    });
    if (value == true) {
      list.add(2);
    } else {
      list.remove(2);
    }
    print(list);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkbox'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            const Text('Bahasa yang dipelajari'),
            CheckboxListTile(
              value: selected1,
              onChanged: onChanged,
              title: Text(bahasa[0]),
              activeColor: Colors.red,
              secondary: const Icon(Icons.language),
            ),
            CheckboxListTile(
              value: selected2,
              onChanged: onChanged2,
              title: Text(bahasa[1]),
              activeColor: Colors.red,
              secondary: const Icon(Icons.language),
            ),
            CheckboxListTile(
              value: selected3,
              onChanged: onChanged3,
              title: Text(bahasa[2]),
              activeColor: Colors.red,
              secondary: const Icon(Icons.language),
            ),
          ],
        ),
      ),
    );
  }
}
