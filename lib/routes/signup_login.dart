import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'timer_screen.dart';


class SignupLogin extends StatelessWidget {
 const SignupLogin({super.key});


 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: appBar(),
     body: Column(
      children: [
        Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: (){
                  
                }, child: const Text("Sign Up"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const TimerScreen()),
                  );
                }, child: const Text("NO DELETE PLS"), 
                // don't delete the button until there's a function button for page navigation/loging in
              )
            ],
          ),
      ]
     ),
   );
 }

 AppBar appBar() {
   return AppBar(
     title: const Text(
      'Sign Up or Login',
      style: TextStyle(
        color: Color.fromARGB(255, 210, 210, 210),
        fontSize: 18,
        fontWeight: FontWeight.bold,
      )
    ),
    backgroundColor: Colors.white,
    elevation: 0.0,
    centerTitle: true,
   );
 }
}