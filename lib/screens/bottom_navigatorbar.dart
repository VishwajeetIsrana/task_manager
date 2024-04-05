import 'package:flutter/material.dart';
import 'package:task_manager/screens/call_log.dart';
import 'package:task_manager/screens/chat_screen.dart';
import 'package:task_manager/screens/homepage.dart';
import 'package:task_manager/screens/tab_controller.dart';

import '../signup and signin/home_screen.dart';
import 'contacts.dart';

class botomnavigator extends StatefulWidget {
  const botomnavigator({super.key});

  @override
  State<botomnavigator> createState() => _botomnavigator();
}

class _botomnavigator extends State<botomnavigator> {
  int currentIndexValue = 0;
  List screenList = [
    const homepage(),
    const tabcontroller(),
    const chat_screen(),
    const calllog(),
    const Home_Screen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList[currentIndexValue],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        onTap: (index) {
          setState(() {
            currentIndexValue = index;
          });
        },
        currentIndex: currentIndexValue,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.task),
              label: "Tasks",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline_rounded),
              label: "Chat",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.group),
              label: "Contacts",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Setting",
              backgroundColor: Colors.white),
        ],
      ),
    );
  }
}
