import 'package:blavk_javk/screens/game_screen.dart';
import 'package:flutter/material.dart';

// String getFullName(String firstName, String lastName) {
//   return '$firstName $lastName';
// }

// void printMyName() {
//   print(getFullName('Ha', 'Nguyen'));
// }

void test() {
  final name = 'Foo';
  if (name == 'Foo') {
    print('Yes');
  } else {
    print('No');
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // printMyName();

    return MaterialApp(
      title: 'BLAVKJAVK - Practice Perfect Blackjack ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GameScreen(),
    );
  }
}
