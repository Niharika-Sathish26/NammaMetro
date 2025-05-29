import 'package:flutter/material.dart';

class TimeTableScreen extends StatelessWidget {
  const TimeTableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Metro Time Table'),
          backgroundColor: Colors.green,
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                child: Text(
                  'Purple Line',
                  style: TextStyle(color: Colors.purpleAccent, fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  'Green Line',
                  style: TextStyle(color: Colors.lightGreenAccent, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            PurpleLineTimeTable(),
            GreenLineTimeTable(),
          ],
        ),
      ),
    );
  }
}

class PurpleLineTimeTable extends StatelessWidget {
  const PurpleLineTimeTable({super.key});

  final List<Map<String, String>> purpleStations = const [
    {'station': 'Challaghatta', 'arrival': '06:00 AM', 'departure': '06:05 AM'},
    {'station': 'Vijayanagar', 'arrival': '06:15 AM', 'departure': '06:20 AM'},
    {'station': 'Majestic', 'arrival': '06:30 AM', 'departure': '06:35 AM'},
    {'station': 'MG Road', 'arrival': '06:45 AM', 'departure': '06:50 AM'},
    {'station': 'Baiyappanahalli', 'arrival': '07:00 AM', 'departure': '07:05 AM'},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 12),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: Row(
            children: [
              Expanded(flex: 3, child: Text('Station', style: TextStyle(fontWeight: FontWeight.bold))),
              Expanded(flex: 2, child: Text('Arrival', style: TextStyle(fontWeight: FontWeight.bold))),
              Expanded(flex: 2, child: Text('Departure', style: TextStyle(fontWeight: FontWeight.bold))),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: purpleStations.length,
            itemBuilder: (context, index) {
              final station = purpleStations[index];
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Row(
                          children: [
                            const Icon(Icons.train, color: Colors.purple),
                            const SizedBox(width: 8),
                            Text(station['station']!),
                          ],
                        ),
                      ),
                      Expanded(flex: 2, child: Text(station['arrival']!)),
                      Expanded(flex: 2, child: Text(station['departure']!)),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class GreenLineTimeTable extends StatelessWidget {
  const GreenLineTimeTable({super.key});

  final List<Map<String, String>> greenStations = const [
    {'station': 'Nagasandra', 'arrival': '06:10 AM', 'departure': '06:15 AM'},
    {'station': 'Yeshwanthpur', 'arrival': '06:25 AM', 'departure': '06:30 AM'},
    {'station': 'Majestic', 'arrival': '06:40 AM', 'departure': '06:45 AM'},
    {'station': 'Lalbagh', 'arrival': '06:55 AM', 'departure': '07:00 AM'},
    {'station': 'Silk Institute', 'arrival': '07:10 AM', 'departure': '07:15 AM'},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 12),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: Row(
            children: [
              Expanded(flex: 3, child: Text('Station', style: TextStyle(fontWeight: FontWeight.bold))),
              Expanded(flex: 2, child: Text('Arrival', style: TextStyle(fontWeight: FontWeight.bold))),
              Expanded(flex: 2, child: Text('Departure', style: TextStyle(fontWeight: FontWeight.bold))),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: greenStations.length,
            itemBuilder: (context, index) {
              final station = greenStations[index];
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Row(
                          children: [
                            const Icon(Icons.train, color: Colors.green),
                            const SizedBox(width: 8),
                            Text(station['station']!),
                          ],
                        ),
                      ),
                      Expanded(flex: 2, child: Text(station['arrival']!)),
                      Expanded(flex: 2, child: Text(station['departure']!)),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
