import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Metro Map'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: InteractiveViewer(
          child: Image.asset('assets/map_image.jpeg'),
        ),
      ),
    );
  }
}
