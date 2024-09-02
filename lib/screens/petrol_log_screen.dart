import 'package:flutter/material.dart';

class PetrolLogScreen extends StatelessWidget {
  final List<Map<String, String>> petrolLogs = [
    {'date': '01 Sept 2024', 'liters': '10'},
    {'date': '15 Aug 2024', 'liters': '8'},
    {'date': '01 Aug 2024', 'liters': '12'},
  ];

  PetrolLogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Petrol Log'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: petrolLogs.length,
          itemBuilder: (context, index) {
            final log = petrolLogs[index];
            return Card(
              child: ListTile(
                leading: const Icon(Icons.local_gas_station),
                title: Text('${log['liters']} liters'),
                subtitle: Text('Date: ${log['date']}'),
              ),
            );
          },
        ),
      ),
    );
  }
}
