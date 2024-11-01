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
      
      body: Column (
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Circle
                Container(
                  width: 270, // Circle diameter
                  height: 270,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 236, 236, 236), // Circle color
                  ),
                ),
                // TextField on top of the circle
                const Center(
                  child: Text("00:00:00",
                  style: TextStyle(fontSize: 36)),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20
          ),
          Row (
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(90, 50),
                  maximumSize: const Size(90, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // Adjust the radius here
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12), // Optional padding
                ),
                onPressed: () {

                },
                child: const Text("End", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18, color: Colors.white)) 
                
              ),
              const SizedBox(
                width: 10
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(50, 50),
                  maximumSize: const Size(50, 50),
                  padding: const EdgeInsets.all(10), 
                  shape: RoundedRectangleBorder(
                    
                    borderRadius: BorderRadius.circular(8), // Adjust the radius here
                  ),
                ),
                onPressed: () {

                },
                child: const Icon(Icons.play_arrow, size: 26, color: Colors.white) 
                
              ),
              const SizedBox(
                width: 10
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  alignment: Alignment.center,
                  minimumSize: const Size(90, 50),
                  maximumSize: const Size(90, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // Adjust the radius here
                  ),
                ),
                onPressed: () {

                },
                child: const Text("Add", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18, color: Colors.white)) 
                
              )
            ]
          )
        ]
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
        selectedItemColor: const Color.fromRGBO(23, 90, 146, 1),
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
