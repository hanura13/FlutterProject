import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

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
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo Flutter'),
      ),
      body: const Center(
        child: Text(
          'Hello world',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 45.0,
            decoration: TextDecoration.none,
            fontFamily: 'MontserratAlternates',
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
