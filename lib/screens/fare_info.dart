import 'package:flutter/material.dart';

class FareInfoScreen extends StatefulWidget {
  const FareInfoScreen({super.key});

  @override
  State<FareInfoScreen> createState() => _FareInfoScreenState();
}

class _FareInfoScreenState extends State<FareInfoScreen> {
  final TextEditingController fromController = TextEditingController();
  final TextEditingController toController = TextEditingController();
  String fareResult = '';

  void checkFare() {
    String from = fromController.text.trim().toLowerCase();
    String to = toController.text.trim().toLowerCase();

    if (from.isEmpty || to.isEmpty) {
      setState(() {
        fareResult = "Please enter both stations.";
      });
      return;
    }

    if (from == to) {
      fareResult = "From and To stations cannot be the same.";
    } else {
      fareResult = "Estimated fare from ${fromController.text} to ${toController.text} is ₹40.";
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fare Info'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "From Station",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: fromController,
              decoration: InputDecoration(
                hintText: "Enter From Station",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "To Station",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: toController,
              decoration: InputDecoration(
                hintText: "Enter To Station",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                onPressed: checkFare,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
                ),
                child: const Text(
                  'CHECK FARE',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 30),
            if (fareResult.isNotEmpty)
              Center(
                child: Text(
                  fareResult,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black87),
                  textAlign: TextAlign.center,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
