import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/signup%20and%20signin/signup_screen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
          apiKey:
              "AIzaSyD3eiU5nqWfujsSrtltJhI79BLbR9oPkHU", // google-services.json
          appId:
              "1:503132527561:android:c4a3aa2c3b19d1ecf56618", // firebase --> project setting --> general
          messagingSenderId:
              "503132527561", // firebase --> project setting --> Cloud messaging
          projectId:
              "task-manager-8739b", // firebase --> project setting --> general
          storageBucket:
              "task-manager-8739b.appspot.com", // google-services.json
        ))
      : await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Signup_Screen(),
    );
  }
}
