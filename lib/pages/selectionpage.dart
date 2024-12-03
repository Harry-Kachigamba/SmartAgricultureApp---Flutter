import 'package:flutter/material.dart';
import '../components/bottomnavigation.dart';

class SelectionPage extends StatelessWidget {
  const SelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 248, 235),
      body: BottomNavigation(),
    );
  }
}
