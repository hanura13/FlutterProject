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
      home: const HomePage(),
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
        child: HelloButton(),
      ),
    );
  }
}

class HelloButton extends StatelessWidget {
  const HelloButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        action(context);
      },
      child: const Text('Click Me'),
    );
  }

  void action(BuildContext context) {
    var alertDialog = const AlertDialog(
      title: Text('Event Handling'),
      content: Text('Hello World'),
    );

    showDialog(
      context: context,
      builder: (BuildContext context) => alertDialog,
    );
  }
}
