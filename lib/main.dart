// who or what is branch and why is it hate me
// if this doesn't work imma kms
// im gonna kill u if u say no to pls work again

import 'package:flutter/material.dart';
import "routes/signup_login.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      //theme: ThemeData(fontFamily: '___'),
      home: const SignupLogin(),
    );
  }
}
