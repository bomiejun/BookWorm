// who or what is branch and why is it hate me
// if this doesn't work imma kms
// im gonna kill u if u say no to pls work again
// testing source control

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import "routes/signup_login.dart";
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb){
    await Firebase.initializeApp(options: FirebaseOptions(apiKey: "AIzaSyDAfcaRaMNz9-KkzB2wn47ZJMFahZcthYg",
    authDomain: "reading-app-da2c7.firebaseapp.com",
    databaseURL: "https://reading-app-da2c7.firebaseio.com",
    projectId: "reading-app-da2c7",
    storageBucket: "reading-app-da2c7.firebasestorage.app",
    messagingSenderId: "624028473738",
    appId: "1:624028473738:web:32493905dfa32613855073",
    measurementId: "G-L309EDTBJN"));
    runApp(const MyApp());
  } else{
    await Firebase.initializeApp();
  }
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
