import 'package:flutter/material.dart';
import 'timer_screen.dart';

class AchievementsScreen extends StatefulWidget {
  const AchievementsScreen({super.key});

  @override
  State<AchievementsScreen> createState() => _AchievementsScreen();
}
class _AchievementsScreen extends State<AchievementsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('i forget if we wanted a title'),
      ),
      body: const Center(
        child: Text('this is gonna be the achievements screen'),
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
        currentIndex: 2,
        selectedItemColor: const Color.fromARGB(255, 23, 90, 146),
        onTap: (index) {
          if (index == 1) {
            Navigator.pushReplacement(context, 
              MaterialPageRoute(builder: (context) => const TimerScreen()),
            );
          }
        }
      )
    );
  }
}
