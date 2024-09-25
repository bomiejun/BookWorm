import 'package:flutter/material.dart';
import 'achievements_screen.dart';
class TimerScreen extends StatefulWidget {
  const TimerScreen({super.key});

  @override
  State<TimerScreen> createState() => _TimerScreen();
}
class _TimerScreen extends State<TimerScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('i forget if we wanted a title'),
      ),
      body: const Center(
        child: Text('hello'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.equalizer),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timer),
            label: 'Timer',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flag),
            label: 'Goals',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.emoji_events),
            label: 'Achievements',
          ),
        ],
        currentIndex: 1,
        selectedItemColor: Color.fromRGBO(23, 90, 146, 1),
        onTap: (index) {
          if (index == 2) {
            Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const AchievementsScreen()),
            );
          }
        }
      )
    );
  }
}
