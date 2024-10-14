import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'timer_screen.dart';


class SignupLogin extends StatelessWidget {
 const SignupLogin({super.key});


 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: const Text(
        'Sign Up or Login',
        style: TextStyle(
          color: Color.fromARGB(255, 210, 210, 210),
          fontSize: 18,
          fontWeight: FontWeight.bold,
        )
      ),
      leading: Container(
        margin:EdgeInsets.all(10),
        child: SvgPicture.asset('assets/icons/Bookworm_Logo'),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10)
        ),
      )
     ),
     body: Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const TimerScreen()),
          );
        }, child: const Text("NO DELETE PLS"), 
        // don't delete the button until there's a function button for page navigation/loging in
      ),
     ),
   );
 }
}