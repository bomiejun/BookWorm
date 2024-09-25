import 'package:flutter/material.dart';

class TimerScreen extends StatelessWidget {
  const TimerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TimerScreen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('this does nothing :p'),
          onPressed: () {
            // Navigate to new screen
          }
        )
      )
    );
  }
}
