import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(), // Add your drawer items here
      appBar: AppBar(
        title: const Text("Namma Metro"),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 🔻 Banner from assets
            SizedBox(
              height: 180,
              width: double.infinity,
              child: Image.asset(
                'assets/metro_banner.jpeg',
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 20),

            // 🔻 Metro Feature Buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  MetroFeature(icon: Icons.account_balance_wallet, label: 'Top Up', color: Colors.green),
                  MetroFeature(icon: Icons.qr_code_2, label: 'QR Tickets', color: Colors.purple),
                  MetroFeature(icon: Icons.train, label: 'Time Table', color: Colors.green),
                  MetroFeature(icon: Icons.map, label: 'Map', color: Colors.purple),
                  MetroFeature(icon: Icons.calculate, label: 'Fare Info', color: Colors.purple),
                  MetroFeature(icon: Icons.help_outline, label: 'Help', color: Colors.green),
                ],
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class MetroFeature extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const MetroFeature({
    super.key,
    required this.icon,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // TODO: Add feature navigation
      },
      style: ElevatedButton.styleFrom(
        foregroundColor: color,
        backgroundColor: Colors.white,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.symmetric(vertical: 20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40),
          const SizedBox(height: 10),
          Text(
            label,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
