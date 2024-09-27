import 'package:flutter/material.dart';


class SignupLogin extends StatelessWidget {
 const SignupLogin({super.key});


 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text(
         'Sign Up or Login',
         style: TextStyle(
           color: Colors.black,
           fontSize: 18,
           fontWeight: FontWeight.bold,
         )
       ),
     ),
   );
 }
}
