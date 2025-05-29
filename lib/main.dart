import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const NammaMetroApp());
}

class NammaMetroApp extends StatelessWidget {
  const NammaMetroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Namma Metro',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
