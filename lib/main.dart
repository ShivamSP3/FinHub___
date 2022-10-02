
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:firebase_core/firebase_core.dart';
import 'package:todo_app/pages/home_page.dart';

import 'pages/signup.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());

}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
firebase_auth.FirebaseAuth firebaseAuth = firebase_auth.FirebaseAuth.instance;
  // This widget is the root of your application.

void signup() async{
  try{
    await firebaseAuth.createUserWithEmailAndPassword(email: "Sp@gmail.com", password: "123456");
  }
  catch (e){
    print(e);
  }
}

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
     home: HomePage(),
    );
  }
}