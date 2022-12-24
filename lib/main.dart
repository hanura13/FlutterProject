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
  final int count = 20;
  List<bool> items = [];

  @override
  void initState() {
    setState(() {
      for (var i = 0; i < count; i++) {
        items.add(false);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card'),
      ),
      body: ListView.builder(itemBuilder: (BuildContext context, int index) {
        return Card(
          margin: const EdgeInsets.only(left: 15.0, top: 20.0, right: 15.0),
          child: GestureDetector(
            onTap: (() {
              print('Anda memilih item ${index + 1}');
            }),
            child: ListTile(
              title: Text('Item ${index + 1}'),
              leading: const Icon(Icons.person),
              trailing: const Icon(Icons.star),
            ),
          ),
        );
      }),
    );
  }
}
