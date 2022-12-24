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

  final String title = 'Mata Langit Brobudur';
  final String location = 'Magelang Jawa Tengah';
  final String description =
      '''Tempat wisata yang satu ini letaknya tidak jauh dari Candi Borobudur. Tepatnya di Ngargogondo, Kecamatan Borobudur, Magelang, Jawa Tengah. Mata Langit Borobudur menawarkan sky lounge dengan paket piknik outdoor nan Instagramable. Jadi bisa foto-foto fine dining dengan latar pemandangan alam layaknya selebgram.
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Objek Wisata'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            'images/wisata.jpg',
            height: 250.0,
            width: 412.0,
            fit: BoxFit.fill,
          ),
          Container(
            height: 15.0,
          ),
          Row(
            children: <Widget>[
              Container(
                width: 15.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    location,
                    style: const TextStyle(
                      fontSize: 20.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Container(
                width: 90.0,
              ),
              const Icon(
                Icons.star,
                size: 32.0,
                color: Colors.red,
              ),
              const Text(
                '5',
                style: TextStyle(fontSize: 15.0),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              description,
              style: const TextStyle(fontSize: 18.0),
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
