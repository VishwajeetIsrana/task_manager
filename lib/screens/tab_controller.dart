import 'package:flutter/material.dart';
import 'package:task_manager/screens/recivede.dart';
import 'package:task_manager/screens/my%20projects.dart';

class tabcontroller extends StatefulWidget {
  const tabcontroller({super.key});

  @override
  State<tabcontroller> createState() => _tabcontrollerState();
}

class _tabcontrollerState extends State<tabcontroller> {
  final List<Widget> _tabs = [
    const my_projects(),
    const Recieved(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Center(child: Text("Task Reports")),
          bottom: const TabBar(
            indicatorColor: Colors.black,
            unselectedLabelColor: Color.fromARGB(255, 252, 252, 252),
            labelColor: Colors.black,
            labelStyle: TextStyle(fontSize: 18),
            tabs: [
              Tab(
                text: 'My Projects',
              ),
              Tab(text: 'Recieved'),
            ],
          ),
        ),
        body: Material(
          elevation: 10,
          child: TabBarView(
            children: _tabs,
          ),
        ),
      ),
    );
  }
}
