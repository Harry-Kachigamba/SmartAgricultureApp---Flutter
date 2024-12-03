import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        backgroundColor: const Color.fromRGBO(110, 149, 77, 1),
        indicatorColor: const Color.fromARGB(255, 168, 207, 134),
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.water_outlined),
            label: 'Moisture',
          ),
          NavigationDestination(
            icon: Icon(Icons.thermostat_outlined),
            label: 'Temp',
          ),
          NavigationDestination(
            icon: Icon(Icons.gas_meter_outlined),
            label: 'Humidity',
          ),
          NavigationDestination(
            icon: Icon(Icons.crop_outlined),
            label: 'Crop',
          ),
          NavigationDestination(
            icon: Icon(Icons.notifications_active_outlined),
            label: 'Notification',
          ),
          NavigationDestination(
            icon: Icon(Icons.history_outlined),
            label: 'History',
          ),
        ],
      ),
    );
  }
}
