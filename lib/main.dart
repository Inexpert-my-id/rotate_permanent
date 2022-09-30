// 1
import 'package:flutter/material.dart';

void main() {
  // 2
  runApp(const MyApp());
}

// 3
class MyApp extends StatelessWidget {
  // 4
  const MyApp({super.key});

  // 5
  @override
  Widget build(BuildContext context) {
    // 6
    return MaterialApp(
      title: 'Rotate Permanently',
      // 7
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.green,
        ),
      ),
      // 8
      home: const MainApp(),
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 9
    List<String> loremIpsum() {
      List<String> text = [];

      const String ipsum =
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ';

      for (int index = 0; index < 50; index++) {
        text.add(ipsum);
      }
      return text;
    }

    // 10
    return Scaffold(
      // 11
      appBar: AppBar(
        title: const Text('Rotate Permanently'),
      ),
      // 12
      body: ListView(
        children: [
          // 13
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 14
              const RotatedBox(
                // 15
                quarterTurns: 3,
                child: Text(
                  'Rotation',
                  style: TextStyle(
                    fontSize: 80,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ),
              // 16
              Expanded(
                child: Text(
                  // 17
                  loremIpsum().toString(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
