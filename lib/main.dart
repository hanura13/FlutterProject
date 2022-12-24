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
  String name = '';
  String text = '';

  void onPressed() {
    setState(() {
      if (name.trim().isEmpty) return;
      text = 'Hai $name, Apa Kabar?';
    });
  }

  void onChanged(String value) {
    setState(() {
      name = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo Textfield'),
      ),
      body: Container(
        margin: const EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            TextField(
              onChanged: (String value) {
                onChanged(value);
              },
            ),
            ElevatedButton(
              onPressed: () {
                onPressed();
              },
              child: const Text('Click'),
            ),
            Container(
              height: 15.0,
            ),
            Text(text),
          ],
        ),
      ),
    );
  }
}
