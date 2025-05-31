import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/fare_info.dart'; // ✅ Import Fare Info screen

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
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/fare-info': (context) => const FareInfoScreen(), // ✅ Named route
      },
    );
  }
}
