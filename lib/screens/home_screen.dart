import 'package:bike_maintaince/screens/petrol_log_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bike Maintenance Tracker'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //
            Row(
              children: [
                Expanded(
                  child: Card(
                    child: ListTile(
                      leading: Icon(Icons.local_gas_station),
                      title: Text('Total Petrol Added'),
                      subtitle: Text('50 liters'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PetrolLogScreen()));
                      },
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Expanded(
                  child: Card(
                    child: ListTile(
                      leading: Icon(Icons.speed),
                      title: Text('Total Kilometers Run'),
                      subtitle: Text('1200 km'),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            const Card(
              child: ListTile(
                leading: Icon(Icons.build),
                title: Text('Maintenance'),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Last Maintenance: 01 Sept 2024'),
                    Text('Next Maintenance: 01 Oct 2024'),
                  ],
                ),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.local_gas_station),
                  label: const Text('Add Petrol'),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.speed),
                  label: const Text('Add Kilometers'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
