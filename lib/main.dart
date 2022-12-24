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
  final List<String> settings = [
    'Airplane Mode',
    'WLAN',
    'Mobile Data',
    'Bluetooth'
  ];
  List<bool> settingValues = [false, false, false, false];

  void onChangedSwitch1(bool value) {
    setState(() {
      settingValues[0] = value;
    });
    print(settingValues);
  }

  void onChangedSwitch2(bool value) {
    setState(() {
      settingValues[1] = value;
    });
    print(settingValues);
  }

  void onChangedSwitch3(bool value) {
    setState(() {
      settingValues[2] = value;
    });
    print(settingValues);
  }

  void onChangedSwitch4(bool value) {
    setState(() {
      settingValues[3] = value;
    });
    print(settingValues);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SwitchList'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            SwitchListTile(
              value: settingValues[0],
              onChanged: (bool value) {
                onChangedSwitch1(value);
              },
              title: Text(settings[0]),
              secondary: const Icon(Icons.airplanemode_active),
            ),
            SwitchListTile(
              value: settingValues[1],
              onChanged: (bool value) {
                onChangedSwitch2(value);
              },
              title: Text(settings[1]),
              secondary: const Icon(Icons.wifi),
            ),
            SwitchListTile(
              value: settingValues[2],
              onChanged: (bool value) {
                onChangedSwitch3(value);
              },
              title: Text(settings[2]),
              secondary: const Icon(Icons.data_usage),
            ),
            SwitchListTile(
              value: settingValues[3],
              onChanged: (bool value) {
                onChangedSwitch4(value);
              },
              title: Text(settings[3]),
              secondary: const Icon(Icons.bluetooth),
            ),
          ],
        ),
      ),
    );
  }
}
