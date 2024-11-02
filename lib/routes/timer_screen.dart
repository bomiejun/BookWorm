import 'package:flutter/material.dart';
import 'achievements_screen.dart';
import 'dart:async';
class TimerScreen extends StatefulWidget {
  const TimerScreen({super.key});

  @override
  State<TimerScreen> createState() => _TimerScreen();
}
class _TimerScreen extends State<TimerScreen> {
  Color buttonColor = const Color.fromARGB(255, 210, 190, 124);
  Timer? timer;
  int seconds = 0;
  bool isRunning = false;

  void startTimer() {
    if (!isRunning) { // Start only if the timer is not running
      setState(() {
        isRunning = true;
      });
      timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
        setState(() {
          seconds--;
        });
      });
    }
  }

  void stopTimer() {
    if (isRunning) { // Stop only if the timer is running
      timer?.cancel();
      setState(() {
        isRunning = false;
      });
    }
  }

  @override
  void dispose() {
    timer?.cancel(); // Cancel the timer when the widget is disposed
    super.dispose();
  }

  String getFormattedTime() {
    int hours = seconds ~/ 3600;
    int minutes = (seconds % 3600) ~/ 60;
    int secs = seconds % 60;
    return '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${secs.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget> [
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Row (
                children: <Widget> [
                  Image.asset(
                    'assets/icons/Bookworm_Logo.png',
                    width: 36, // Adjust size
                    height: 36,
                    fit: BoxFit.cover, // Optional: Control how the image fits
                  ),
                  const Text('BookWorm', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 33), textAlign: TextAlign.left)
                  ]
              )
            ),
            const Padding (
              padding: EdgeInsets.only(right: 6),
              child: Icon(Icons.account_circle, size: 36))
            ]
          ),
        elevation: 10,
        shadowColor: Colors.black,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        toolbarHeight: 70,
        surfaceTintColor: Colors.transparent,
        
      ),
      backgroundColor: const Color.fromARGB(255, 243, 243, 243),
      
      body: Transform.translate(
        offset: const Offset(0, -24),
        child: Column (
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
                      color: Color.fromARGB(255, 250, 250, 250), // Circle color
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 183, 183, 183), // Shadow color with opacity
                          spreadRadius: 3, // Spread of the shadow
                          blurRadius: 7, // Blur radius
                        ),
                      ],
                    ),
                  ),
                  // TextField on top of the circle
                  Center(
                    child: Text(getFormattedTime(),
                    style: const TextStyle(fontSize: 38, fontWeight: FontWeight.w500, color: Color.fromARGB(255, 35, 35, 35))),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24
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
                    backgroundColor: buttonColor
                  ),
                  onPressed: () {
                    seconds = 0;
                    stopTimer();
                  },
                  child: const Text(
                    "End", 
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20, color: Colors.white),
                  ) 
                  
                ),
                const SizedBox(
                  width: 12
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(50, 50),
                    maximumSize: const Size(50, 50),
                    padding: const EdgeInsets.all(10), 
                    shape: RoundedRectangleBorder(
                      
                      borderRadius: BorderRadius.circular(8), // Adjust the radius here
                    ),
                    backgroundColor: buttonColor
                  ),
                  onPressed: () {
                    if (seconds > 0 && isRunning == false) {
                      startTimer();
                    } else if (seconds > 0 && isRunning == true) {
                      stopTimer();
                    }
                  },
                  child: const Icon(Icons.play_arrow, size: 26, color: Colors.white)
                  
                ),
                const SizedBox(
                  width: 12
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    alignment: Alignment.center,
                    minimumSize: const Size(90, 50),
                    maximumSize: const Size(90, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), // Adjust the radius here
                    ),
                    backgroundColor: buttonColor
                  ),
                  onPressed: () {
                    setState(() {
                      seconds += 60; // Adds 60 seconds
                    });
                  },
                  child: const Text("Add", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20, color: Colors.white)),
                  
                )
              ]
            )
          ]
        ),
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
