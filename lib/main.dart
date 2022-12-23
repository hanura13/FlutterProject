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
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo Columns'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {},
              child: const Text('Button 1'),
            ),
            Container(
              height: 10.0,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Button 2'),
            ),
            Container(
              height: 10.0,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Button 3'),
            ),
            Container(
              height: 10.0,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Button 4'),
            ),
          ],
        ),
      ),
    );
  }
}
