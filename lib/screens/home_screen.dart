import 'package:bike_maintaince/bloc/bike_bloc/bike_bloc.dart';
import 'package:bike_maintaince/bloc/bike_bloc/bike_state.dart';
import 'package:bike_maintaince/screens/petrol_log_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final TextEditingController _petrolController = TextEditingController();
  final TextEditingController _kilometerController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BikeBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Bike Maintenance Tracker'),
        ),
        body: BlocBuilder<BikeBloc, BikeState>(builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        child: ListTile(
                          leading: const Icon(Icons.local_gas_station),
                          title: const Text('Total Petrol Added'),
                          subtitle: Text('${state.totalPetrol} L'),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PetrolLogScreen()));
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    Expanded(
                      child: Card(
                        child: ListTile(
                          leading: const Icon(Icons.speed),
                          title: const Text('Total Kilometers Run'),
                          subtitle: Text('${state.totalKilometers} km'),
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
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text('Enter amount of Petrol added'),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                TextField(
                                  controller: _petrolController,
                                ),
                                ElevatedButton(
                                    onPressed: () {}, child: const Text('Add'))
                              ],
                            ),
                          ),
                        );
                      },
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
          );
        }),
      ),
    );
  }
}
