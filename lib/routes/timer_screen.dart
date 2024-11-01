import 'package:flutter/material.dart';
import 'achievements_screen.dart';
class TimerScreen extends StatefulWidget {
  const TimerScreen({super.key});

  @override
  State<TimerScreen> createState() => _TimerScreen();
}
class _TimerScreen extends State<TimerScreen> {
  Color buttonColor = const Color.fromARGB(255, 210, 190, 124);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget> [
            Padding(
              padding: EdgeInsets.only(left: 6),
              child: Text('BookWorm', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 33), textAlign: TextAlign.left)
            ),
            Padding (
              padding: EdgeInsets.only(right: 6),
              child: Icon(Icons.play_arrow))
            ]
          ),
        elevation: 10,
        shadowColor: Colors.black,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        toolbarHeight: 70,
        
      ),
      backgroundColor: const Color.fromARGB(255, 243, 243, 243),
      
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
                  backgroundColor: buttonColor
                ),
                onPressed: () {

                },
                child: const Text("End", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20, color: Colors.white)) 
                
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

                },
                child: const Text("Add", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20, color: Colors.white)),
                
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
