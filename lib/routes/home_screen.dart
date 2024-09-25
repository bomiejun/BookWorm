import 'package:flutter/material.dart';
import 'timer_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('idk'),
          onPressed: () {
            // Navigate to new screen
            Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => const TimerScreen()),
            );
          }
        )
      )
    );
  }
}
