import 'package:flutter/material.dart';
import 'timer_screen.dart';

//ello
class SignupLogin extends StatelessWidget {
 const SignupLogin({super.key});


 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: appBar(),
     backgroundColor: Colors.white,
     body: Column(
      children: [
        Image.asset(
          'assets/icons/Bookworm_Logo.png',
          width: 200, // Adjust size
          height: 200,
          fit: BoxFit.cover, // Optional: Control how the image fits
        ),
        const SizedBox(height: 20,),
        usernameText(),
        usernameInput(),
        const SizedBox(height: 20,),
        passwordText(),
        passwordInput(),
        const SizedBox(height: 20,),
        checkAgreements(),
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

 Row checkAgreements() {
   return Row(
        children: [
          SizedBox(child: Checkbox(value: false, onChanged: (value){},)),
          Text.rich(
            TextSpan(children: [
              TextSpan(text: 'I agree to '),
              TextSpan(text: 'Terms of Use'),
              TextSpan(text: ' and '),
              TextSpan(text: 'Privacy Policy'),
              //https://www.youtube.com/watch?v=TQMMG39qw0c time 12:07
            ])
          )
        ],
      );
 }

 Container passwordInput() {
   return Container(
      margin: const EdgeInsets.only(top: 30,left: 20,right: 20),
      child: const TextField(
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
   return const Text(
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
      margin: const EdgeInsets.only(top: 30,left: 20,right: 20),
      child: const TextField(
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
   return const Text(
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