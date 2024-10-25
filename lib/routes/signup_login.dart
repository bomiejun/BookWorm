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
        SizedBox(height: 40,),
        usernameText(),
        usernameInput(),
        SizedBox(height: 40,),
        passwordText(),
        passwordInput(),
        SizedBox(height: 40,),
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
      ],
     ),
   );
 }

 Container passwordInput() {
   return Container(
      margin: EdgeInsets.only(top: 30,left: 20,right: 20),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.all(15),
          hintText: 'Enter Password',
          hintStyle: TextStyle(
            color: Color(0xffDDDADA),
            fontSize: 14,
          )
        ),
        obscureText: true,
      ),
    );
  }

  Text passwordText() {
   return Text(
        'Your Password',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      );
  }

 Container usernameInput() {
   return Container(
      margin: EdgeInsets.only(top: 30,left: 20,right: 20),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.all(15),
          hintText: 'Enter Username',
          hintStyle: TextStyle(
            color: Color(0xffDDDADA),
            fontSize: 14,
          )
        ),
      ),
    );
  }

 Text usernameText() {
   return Text(
        'Your Username',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w600,
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